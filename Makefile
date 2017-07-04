REQUIRE = src/common/NanoWallet/build src/common/logo*.png


allmake: chrome_app chrome_extension
chrome_app: dist/chrome_app.crx
chrome_extension: dist/chrome_extension.crx

clean:
	$(RM) -rf dist/*

dist/chrome_app.crx:  src/Chrome_App/bg.js src/Chrome_App/manifest.json $(REQUIRE)
	mkdir -p dist/chrome_app
	cp -R $^ dist/chrome_app/
	cat src/common/header.json > dist/chrome_app/manifest.json
	cat src/Chrome_App/manifest.json >> dist/chrome_app/manifest.json
	google-chrome --pack-extension=$(shell pwd)/dist/chrome_app
	#$(RM) -rf dist/chrome_app
	$(RM) dist/chrome_app.pem

dist/chrome_extension.crx: src/Chrome_Extension/bg.js src/Chrome_Extension/manifest.json $(REQUIRE)
	mkdir -p dist/chrome_extension
	cp -R $^ dist/chrome_extension/
	cat src/common/header.json > dist/chrome_extension/manifest.json
	cat src/Chrome_Extension/manifest.json >> dist/chrome_extension/manifest.json
	google-chrome --pack-extension=$(shell pwd)/dist/chrome_extension
	#$(RM) -rf dist/chrome_extension
	$(RM) dist/chrome_extension.pem

src/common/NanoWallet/build:
	cd src/common && \
	git clone https://github.com/NemProject/NanoWallet && \
	cd NanoWallet && \
	npm install && \
	gulp

##########################################
#### use this if you can not use gulp.####
#
#	cd src && \
#	$(RM) -rf mijin.io &&\
#	wget -x -m -p -k -nv http://mijin.io/nanowallet/images/background.jpg && \
#	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.eot?v=4.6.3 && \
#	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.eot? && \
#	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.woff2?v=4.6.3 && \
#	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.woff?v=4.6.3 && \
#	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.ttf?v=4.6.3 && \
#	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.svg?v=4.6.3 && \
#	wget -x -m -p -k -nv -e "robots = off" -R eot,woff,woff2,ttf,svg http://mijin.io/nanowallet/start.html && \
#	echo "html {overflow-y:scroll;}" >> mijin.io/nanowallet/css/nano.css && \
#	cat mijin.io/nanowallet/css/font-awesome.min.css|sed -e "s/http:\/\/mijin.io\/nanowallet\/css\///g" | sed -e "s/?v=/%3Fv=/g" > tmp ;cat tmp > mijin.io/nanowallet/css/font-awesome.min.css && \
#	$(RM) tmp


