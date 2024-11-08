SPECS_DIR = specs/pdf
SPECS = $(SPECS_DIR)/specs.pdf

specs:
	firefox $(SPECS)

.PHONY: specs
