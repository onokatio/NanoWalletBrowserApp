allmake: chrome_app chrome_extension
chrome_app: dist/chrome_app.crx
chrome_extension: dist/chrome_extension.crx

clean:
	$(RM) -rf dist/*
	
dist/chrome_app.crx: src/mijin.io src/chrome_app/background.js src/chrome_app/manifest.json src/logo16.png src/logo128.png
	mkdir -p dist/chrome_app
	cp -R $^ dist/chrome_app/
	cat src/header.json > dist/chrome_app/manifest.json
	cat src/chrome_app/manifest.json >> dist/chrome_app/manifest.json
	google-chrome --pack-extension=$(shell pwd)/dist/chrome_app
	$(RM) dist/chrome_app.pem

dist/chrome_extension.crx: src/mijin.io src/chrome_extension/bg.js src/chrome_extension/manifest.json src/logo128.png
	mkdir -p dist/chrome_extension
	cp -R $^ dist/chrome_extension/
	cat src/header.json > dist/chrome_extension/manifest.json
	cat src/chrome_extension/manifest.json >> dist/chrome_extension/manifest.json
	google-chrome --pack-extension=$(shell pwd)/dist/chrome_extension
	$(RM) dist/chrome_extension.pem

src/mijin.io:
	cd src && \
	$(RM) -rf mijin.io &&\
	wget -x -m -p -k -nv http://mijin.io/nanowallet/images/background.jpg && \
	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.eot?v=4.6.3 && \
	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.eot? && \
	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.woff2?v=4.6.3 && \
	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.woff?v=4.6.3 && \
	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.ttf?v=4.6.3 && \
	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.svg?v=4.6.3 && \
	wget -x -m -p -k -nv -e "robots = off" -R eot,woff,woff2,ttf,svg http://mijin.io/nanowallet/start.html && \
	echo "html {overflow-y:scroll;}" >> mijin.io/nanowallet/css/nano.css && \
	cat mijin.io/nanowallet/css/font-awesome.min.css|sed -e "s/http:\/\/mijin.io\/nanowallet\/css\///g" | sed -e "s/?v=/%3Fv=/g" > tmp ;cat tmp > mijin.io/nanowallet/css/font-awesome.min.css && \
	$(RM) tmp && \
	wget -nv https://raw.githubusercontent.com/NemProject/nem-artwork/master/Nem%20logo%20100x100.png -O logo.png
