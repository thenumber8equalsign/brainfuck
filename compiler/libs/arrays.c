#include <arrays.h>
#include <stdlib.h>

// the data is terminated with a 0 byte
// all capacities include the null terminator
// data[length] is always 0, data[length + 1] is out of range

/**
 * array_init() - initialize an array
 * @arr: the address to the array to initialize
 */
int array_init(struct __array *arr)
{
	char *ptr = (char *)malloc(DEFAULT_CAPACITY * sizeof(char));
	if (ptr == NULL) {
		return -1;
	}

	arr->capacity = DEFAULT_CAPACITY;
	arr->data = ptr;
	arr->length = 0;
	return 0;
}

/**
 * array_free() - free an array
 * @arr: the arr to free
 */
int array_free(struct __array *arr)
{
	if (arr->data == NULL)
		return 0;

	free((void *)(arr->data));
	arr->data = NULL;
	arr->capacity = 0;
	arr->length = 0;
	return 0;
}

/**
 * array_reserve() - reserve new_capacity bytes
 */
int array_reserve(struct __array *arr, size_t new_capacity)
{
	if (new_capacity <= arr->capacity) {
		return 0;
	}

	char *ptr = (char *)realloc(arr->data, new_capacity);

	if (ptr == NULL) {
		return -1;
	}

	arr->data = ptr;
	arr->capacity = new_capacity;
	return 0;
}

/**
 * array_append_single() - append a single char to the array
 */
int array_append_single(struct __array *arr, char ch)
{
	size_t cap = (arr->capacity == 0) ? 1 : arr->capacity;
	while (cap <= arr->length + 1 || arr->capacity == 0) {
		if (array_reserve(arr, cap * 2) != 0) {
			return -1;
		}
		cap = arr->capacity;
	}

	arr->data[arr->length] = ch;
	++arr->length;
	arr->data[arr->length] = 0;
	return 0;
}

/**
 * array_append_bulk() - append len bytes from src to the array
 */
int array_append_bulk(struct __array *arr, const char *src, size_t len)
{
	size_t cap = (arr->capacity == 0) ? 1 : arr->capacity;
	while (cap <= arr->length + len || arr->capacity == 0) {
		if (array_reserve(arr, cap * 2) != 0) {
			return -1;
		}
		cap = arr->capacity;
	}

	for (size_t i = 0; i < len; ++i) {
		arr->data[arr->length + i] = src[i];
	}

	arr->length += len;
	arr->data[arr->length] = 0;
	return 0;
}

/**
 * array_pop_single() - decrement length safely
 */
int array_pop_single(struct __array *arr)
{
	if (arr->length >= 1)
		--arr->length;

	return 0;
}

/**
 * array_pop_many() - decrease length safely
 */
int array_pop_many(struct __array *arr, size_t num)
{
	if (arr->length >= num)
		arr->length -= num;

	return 0;
}

/**
 * array_shrink_to_fit() - shrink capacity to fit length
 */
int array_shrink_to_fit(struct __array *arr)
{
	char *ptr = realloc(arr->data, arr->length + 1);
	if (ptr == NULL) {
		return -1;
	}

	arr->capacity = arr->length + 1;
	arr->data = ptr;
	return 0;
}
