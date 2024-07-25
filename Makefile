# CC = gcc
CC = aarch64-linux-gnu-gcc 
CFLAGS = -Wall -no-pie -fno-stack-protector

SRCDIR = src
BINDIR = bin

SRCS = $(wildcard $(SRCDIR)/*.c)
EXECUTABLES = $(patsubst $(SRCDIR)/%.c, $(BINDIR)/%, $(SRCS))

all: $(EXECUTABLES)

$(BINDIR)/%: $(SRCDIR)/%.c | $(BINDIR)
	$(CC) $(CFLAGS) $< -o $@

$(BINDIR):
	mkdir $(BINDIR)

clean:
	rm -rf $(BINDIR)

.PHONY: all clean
