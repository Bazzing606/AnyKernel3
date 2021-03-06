NAME := Alive Kernel (Pie)

CODE := X01BD

ZIP := $(NAME)-$(CODE).zip

EXCLUDE := Makefile LICENSE *.git* *placeholder* *.md*

normal: $(ZIP)

$(ZIP):
	@echo "Creating ZIP: $(ZIP)"
	@zip -r9 "$@" . -x $(EXCLUDE)
	@echo "Done."
