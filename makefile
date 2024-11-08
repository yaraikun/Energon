# gcc
CC = gcc
CFLAGS = -Wall -Wextra -g -Iinclude

# directories
SRC_DIR = src
INC_DIR = include
BUILD_DIR = build
SPECS_DIR = specs/pdf

# files
SPECS = $(SPECS_DIR)/specs.pdf
SRCS = $(wildcard $(SRC_DIR)/*.c)
OBJS = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(SRCS))
TARGET = $(BUILD_DIR)/robby

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

run:
	./$(TARGET)

clean:
	find $(BUILD_DIR) -type f ! -name '.gitkeep' -exec rm -f {} +

specs:
	firefox $(SPECS)

.PHONY: all run clean specs




