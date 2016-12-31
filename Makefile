update:
	#713,543
	cd src \
	$(RM) -rf mijin.io \
	wget -t 2 http://mijin.io/nanowallet/images/background.jpg && \
	wget -t 2 -x -m -p -k -nv -e "robots = off" http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.eot?v=4.6.3 && \
	wget -t 2 -x -m -p -k -nv -e "robots = off" http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.eot? && \
	wget -t 2 -x -m -p -k -nv -e "robots = off" http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.woff2?v=4.6.3 && \
	wget -t 2 -x -m -p -k -nv -e "robots = off" http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.woff?v=4.6.3 && \
	wget -t 2 -x -m -p -k -nv -e "robots = off" http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.ttf?v=4.6.3 && \
	wget -t 2 -x -m -p -k -nv -e "robots = off" http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.svg?v=4.6.3 && \
	wget -t 2 -x -m -p -k -nv -e "robots = off" -R eot,woff,woff2,ttf,svg http://mijin.io/nanowallet/start.html && \
	cat mijin.io/nanowallet/css/font-awesome.min.css|sed -e "s/http:\/\/mijin.io\/nanowallet\/css\///g" | sed -e "s/?v=/%3Fv=/g" > tmp ;cat tmp > mijin.io/nanowallet/css/font-awesome.min.css && \
	$(RM) tmp
