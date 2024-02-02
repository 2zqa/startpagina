NAME=$(notdir $(CURDIR))
IGNORE=manifest_*.json README.md Makefile scripts/
VERSION=$(shell jq -r .version manifest_base.json)
PLATFORMS=chromium firefox-desktop

.PHONY: all
all: $(PLATFORMS)

.PHONY: $(PLATFORMS)
$(PLATFORMS):
	cat manifest_base.json manifest_$(notdir $@).json | jq -s add > manifest.json
	web-ext build --overwrite-dest --ignore-files=$(IGNORE) --filename $(NAME)-$(notdir $@)-$(VERSION).zip

.PHONY: $(addprefix run/,$(PLATFORMS))
$(addprefix run/,$(PLATFORMS)):
	cat manifest_base.json manifest_$(notdir $@).json | jq -s add > manifest.json
	web-ext run -t $(notdir $@)

.PHONY: lint/all
lint/all: $(addprefix lint/,$(PLATFORMS))

.PHONY: $(addprefix lint/,$(PLATFORMS))
$(addprefix lint/,$(PLATFORMS)):
	cat manifest_base.json manifest_$(notdir $@).json | jq -s add > manifest.json
	web-ext lint

.PHONY: clean
clean:
	rm -rf web-ext-artifacts
	rm -f manifest.json
