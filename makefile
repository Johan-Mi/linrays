SRC_FILES=$(shell find src -type f)

project.sb3: $(SRC_FILES) assets/*.*
	scratch-compiler-exe compile src/main.scratch

.PHONY: clean
clean:
	rm -f project.sb3
