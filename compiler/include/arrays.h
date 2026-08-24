#ifndef ARRAYS_H
#define ARRAYS_H

#include <stddef.h>
#include <stdint.h>

#define DEFAULT_CAPACITY 1

#ifdef __cplusplus
extern "C" {
#endif

// the data is terminated with a 0 byte
// all capacities include the null terminator
// data[length] is always 0, data[length + 1] is out of range

/**
 * struct array - a resizable array
 * @data: the raw data, this is null terminated such that data[length] is 0
 * 	and data[length + 1] is out of range
 * @capacity: the number of bytes that data is allowed to store,
 * 	this is the value used for calls to malloc() and realloc()
 * @length: the number of bytes that are currently in data
 */
struct __array {
	char *data;
	size_t capacity;
	size_t length;
};


/**
 * array_init() - initialize an array
 * @arr: the address to the array to initialize
 *
 * Return: 0 on success, -1 on library error, and errno will be set
 */
int array_init(struct __array *arr);

/**
 * array_free() - free an array
 * @arr: the arr to free
 *
 * If arr->data is NULL, then nothing happens, and success is returned
 *
 * Return: 0 on success, -1 on library error, and errno will be set
 */
int array_free(struct __array *arr);

/**
 * array_reserve() - reserve new_capacity bytes
 * @arr: the array
 * @new_capacity: the new capacity, if it is less than or equal to the current
 * 	capacity, nothing happens and success is returned
 *
 * this is essentially a wrapper for realloc()
 *
 * Return: 0 on success, -1 on library error, and errno will be set
 */
int array_reserve(struct __array *arr, size_t new_capacity);

/**
 * array_append_single() - append a single char to the array
 * @arr: the array
 * @ch: the char to append
 *
 * this also grows the array's capacity in the event that it can not be stored
 *
 * Return: 0 on success, -1 on library error, and errno will be set
 */
int array_append_single(struct __array *arr, char ch);

/**
 * array_append_bulk() - append len bytes from src to the array
 * @arr: the array
 * @src: the array of bytes to append from, should be at least len bytes long
 * @len: the number of bytes to copy from src to the end of arr
 *
 * Return: 0 on success, -1 on library error, and errno will be set
 */
int array_append_bulk(struct __array *arr, const char *src, size_t len);

/**
 * array_pop_single() - decrement length safely
 * @arr: the array
 *
 * This function only decrements the length if and only if arr->length >= 1
 * if nothing happens (that is, if arr->length < 1), then 0 is returned
 *
 * Return: 0 on success, -1 on library error, and errno will be set
 */
int array_pop_single(struct __array *arr);

/**
 * array_pop_many() - decrease length safely
 * @arr: the array
 * @num: the number to remove
 *
 * this function will subtract @num from arr->length if and only if
 * arr->length >= @num
 * if nothing happens (that is, if arr->length < @num), then 0 is returned
 *
 * Return: 0 on success, -1 on library error, and errno will be set
 */
int array_pop_many(struct __array *arr, size_t num);

/**
 * array_shrink_to_fit() - shrink capacity to fit length
 * @arr: the array
 *
 * On success, this function changes arr->capacity to arr->length + 1.
 * It also uses realloc
 *
 * Return: 0 on success, -1 on library error, and errno will be set
 */
int array_shrink_to_fit(struct __array *arr);

#ifdef __cplusplus
}
#endif
#endif
