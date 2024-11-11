# COMPILE
CC = gcc
CFLAGS = -Wall -Wextra -g -Iinclude

# DIRECTORIES
SRC_DIR = src
BUILD_DIR = build
SPECS_DIR = specs/pdf

# FILES
SRCS = $(wildcard $(SRC_DIR)/*.c)
OBJS = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(SRCS))
SPECS = $(SPECS_DIR)/specs.pdf
TARGET = $(BUILD_DIR)/robby


all: clean $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

run:
	./$(TARGET)

clean:
	find $(BUILD_DIR) -type f ! -name '.gitkeep' -exec rm -f {} +

specs:
	firefox $(SPECS)

.PHONY: all run clean specs
