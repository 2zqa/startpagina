BUILDDIR=build

name=startpagina
sourcefiles=blank.html style.css clock.js LICENSE logo.png

.PHONY: all
all: $(BUILDDIR)/$(name)_firefox.zip $(BUILDDIR)/$(name)_chromium

$(BUILDDIR)/$(name)_firefox.zip: $(sourcefiles) manifest_firefox.json | $(BUILDDIR)
	rm -f $(BUILDDIR)/$(name)_firefox.zip
	mv manifest_firefox.json manifest.json
	zip -r $(BUILDDIR)/$(name)_firefox.zip $(sourcefiles) manifest.json
	mv manifest.json manifest_firefox.json

$(BUILDDIR)/$(name)_chromium: $(sourcefiles) manifest_chromium.json | $(BUILDDIR)
	rm -rf $(BUILDDIR)/$(name)_chromium
	mkdir $(BUILDDIR)/$(name)_chromium
	cp $(sourcefiles) manifest_chromium.json $(BUILDDIR)/$(name)_chromium/
	mv $(BUILDDIR)/$(name)_chromium/manifest_chromium.json $(BUILDDIR)/$(name)_chromium/manifest.json

$(BUILDDIR):
	mkdir $(BUILDDIR)

.PHONY: clean
clean:
	rm -rf $(BUILDDIR)/$(name)_firefox.zip $(BUILDDIR)/$(name)_chromium