.DEFAULT_GOAL := generate

ifeq (, $(shell which buf))
 $(error "No buf in PATH, consider installing from https://docs.buf.build/installation")
endif

# Generate
.PHONY:
generate:
	buf generate --path kapetn/service buf.build/kapetn/kapetnapis
