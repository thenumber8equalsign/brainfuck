.PHONY: all _optimizers
include $(RULES)

DEPS = $(patsubst %.c,$(BUILD_DIR)/%.c.o,$(wildcard *.c))

all: $(DEPS) _optimizers

_optimizers:
	$(MAKE) -C optimizers/ all
