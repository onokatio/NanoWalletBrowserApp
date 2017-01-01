# NanoWalletBrowserApp

# **Warning This is for developer version.We are not responsible.**

## What is this？
This make browser addon and extensions for use New Economy Movement nanowallet by your browser.

## Support
To build,require GNU make, npm, nodejs, gulp.

|Browser          |Progress                      |
|:---------------:|:----------------------------:|
|Chrome app       |able to use(it may has bugs.) |
|Chrome extension |able to use(it may has bugs.) |
|Firefox addon    |coming soon                   |

## how to build
Finishing download, type terminal make.You can get install files at dist/.

```
$ make
```

If you want to build a specific install file,type this.
```
$ make chrome_app         #for chrome app
$ make chrome_extension   #for chrome extension
$ make firefox            #for firefox addon
```
## how to install
### Chrome app
1. Open chrome://extensions/ by chrome.
2. Drag and drop dist/chrome_app.crx into browser.
3. That's all. You can lunch nano wallet at chrome://apps/ .

### Chrome extension
1. Open chrome://extensions/ by chrome.
2. Drag and drop dist/chrome_extension.crx into browser.
3. That's all. Clicking icon,You can lunch nano wallet.

※Chrome extension may use also Microsoft Edge, Opera and Vivaldi.
### Firefox addon
coming soon.

