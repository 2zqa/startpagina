# Startpagina

![forthebadge](https://github.com/2zqa/startpagina/assets/25235249/753e518d-cd49-4f07-aac7-59cc1e3006ff) ![forthebadge](https://github.com/2zqa/startpagina/assets/25235249/15865f8a-ccc0-42ba-804f-9238db48998a)

A startpage with a bunch of links, categorized in cards.

![Screenshot of the startpage](https://github.com/2zqa/startpagina/assets/25235249/3550e7f1-5d62-46f6-b23f-c89c9fa42053)

## Getting started

To create your own startpage, either clone or fork this repository, or simply click "Use this template" above. You can then replace the default links in blank.html with your own.

### Testing

To run and test the extension for development, sideload the extension in your browser. Please refer to the documentation of your browser on how to do this. A few are provided below.

**Note:** Rename the appropiate manifest for your browser (e.g. manifest_firefox.json) to manifest.json during testing. You cannot sideload the extension otherwise. Remember to revert this change before building the extension.

* [Firefox](https://extensionworkshop.com/documentation/develop/temporary-installation-in-firefox/)
* [Edge](https://learn.microsoft.com/en-us/microsoft-edge/extensions-chromium/getting-started/extension-sideloading)
* [Chrome](https://developer.chrome.com/docs/extensions/mv3/getstarted/development-basics/#load-unpacked)

### Building

To build the extension, run `make`. It will create a Firefox and Chromium extension in the build directory. If you're using Windows, you can use [WSL](https://learn.microsoft.com/en-us/windows/wsl/).

## Contributing

**Note:** If you want to create your own startpage with custom links, see [Getting started](#getting-started).

Thanks for considering contributing! If you're new to contributing to open source, please read [the official GitHub quickstart guide](https://docs.github.com/get-started/quickstart/contributing-to-projects). In short:

1. Fork this repository and clone it
2. Make your changes
3. Submit a pull request

**Note:** In case you add any source files, make sure to update the Makefile `sourcefiles` variable to reflect this.

## License

Startpagina is released under the [Creative Commons Attribution 4.0 International (CC-BY-4.0)](https://creativecommons.org/licenses/by/4.0/legalcode) license.

## Acknowledgments

* The color palette is from the [Arc theme](https://github.com/jnsh/arc-theme). Thanks horst3180 and jnsh!
