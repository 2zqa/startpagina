# Startpagina

![forthebadge](https://github.com/2zqa/startpagina/assets/25235249/753e518d-cd49-4f07-aac7-59cc1e3006ff) ![forthebadge](https://github.com/2zqa/startpagina/assets/25235249/15865f8a-ccc0-42ba-804f-9238db48998a)

A startpage with a bunch of links, categorized in cards.

![Screenshot of the startpage](https://github.com/2zqa/startpagina/assets/25235249/3550e7f1-5d62-46f6-b23f-c89c9fa42053)

## Getting started

To create your own startpage, either clone or fork this repository, or simply click "Use this template" above. You can then replace the default links in startpage.html with your own. To install/sideload extensions, see the following documentation pages:

* Firefox
    * [Sideloading](https://extensionworkshop.com/documentation/develop/temporary-installation-in-firefox/)
    * [Submitting an add-on](https://extensionworkshop.com/documentation/publish/submitting-an-add-on/) (Free)
* Edge
    * [Sideloading](https://learn.microsoft.com/en-us/microsoft-edge/extensions-chromium/getting-started/extension-sideloading)
    * [Submitting an extension](https://learn.microsoft.com/en-us/microsoft-edge/extensions-chromium/publish/publish-extension) (Free)
* Chrome
    * [Sideloading](https://developer.chrome.com/docs/extensions/mv3/getstarted/development-basics/#load-unpacked)
    * [Submitting an extension](https://developer.chrome.com/docs/webstore/publish) (Costs $5 💸)

### Prerequisites

- [web-ext](https://github.com/mozilla/web-ext)

### Running locally

Run `make run/firefox-desktop` or `make run/chromium` to start the extension in a new browser window.

### Building

Run `make`. This will generate zip files for each supported browser in the `web-ext-artifacts` directory.

## License

Startpagina is released under the [Creative Commons Attribution 4.0 International (CC-BY-4.0)](https://creativecommons.org/licenses/by/4.0/legalcode) license.

## Acknowledgments

* The color palette is from the [Arc theme](https://github.com/jnsh/arc-theme). Thanks horst3180 and jnsh!
