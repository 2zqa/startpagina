# Startpagina

[![forthebadge](https://forthebadge.com/images/badges/uses-html.svg)](https://forthebadge.com) [![forthebadge](https://forthebadge.com/images/badges/designed-in-ms-paint.svg)](https://forthebadge.com)


A startpage with a bunch of links, categorized in cards.

![Screenshot](https://i.imgur.com/ys2SJeY.png)

## Getting started

### Forking

To maintain your own fork, while staying up-to-date with any changes made here, you can do the following:

1. Fork this repository (may be private)
2. Clone it and run the following command: `git remote add upstream https://github.com/2zqa/startpagina.git`
3. To pull in changes, run: `git pull upstream`

Tip: watch this repository to keep up-to-date with any new releases.

### Debugging your code

To run and test the extension for development, please refer to the documentation of your browser.

**Note**: rename the manifest\_\[firefox/chromium\].json file to manifest.json to make the working directory a valid directory, and revert it before building the extension. You cannot sideload the extension otherwise.

* [Firefox](https://extensionworkshop.com/documentation/develop/temporary-installation-in-firefox/)
* [Edge](https://learn.microsoft.com/en-us/microsoft-edge/extensions-chromium/getting-started/extension-sideloading)
* [Chrome](https://developer.chrome.com/docs/extensions/mv3/getstarted/development-basics/#load-unpacked)

### Building

To build the extension, run `make`. It will create a Chromium and Firefox extension in the build directory. If you're on Windows, you can use [WSL](https://learn.microsoft.com/en-us/windows/wsl/).

## Contributing

**Note**: If you want to create your own startpage with custom links, see [forking](#forking)

If you're new to contributing in general, please read [the official GitHub quickstart guide](https://docs.github.com/get-started/quickstart/contributing-to-projects). In short:

1. Fork this repository and clone it
2. Make your changes
3. Submit a pull request

**Note**: If you add any source files, make sure to update the Makefile `sourcefiles` variable to reflect this.

## License

Startpagina is released under the [Creative Commons Attribution 4.0 International (CC-BY-4.0)](https://creativecommons.org/licenses/by/4.0/legalcode) license.

## Acknowledgments

* The color palette is from the [Arc theme](https://github.com/jnsh/arc-theme). Thanks horst3180 and jnsh!
