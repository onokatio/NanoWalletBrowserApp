#!/bin/bash

cat << _EOF_ > manifest.json
{
        "description": "NEM NanoWallet for browser extension.",
        "version": "0.0.1",
        "manifest_version": 2,
        "icons": {
                "16": "logo16.png",
                "48": "logo48.png",
                "96": "logo96.png",
                "128": "logo128.png",
        },
        "name": "NEM NanoWallet",
        "option_page": "build/start.html",
        "permissions": ["tabs"],
        "background": {
                "presistant": false,
                "scripts": ["bg.js"]
        },
        "browser_action": {
                "default_title": "NanoWallet"
        }
}
_EOF_
