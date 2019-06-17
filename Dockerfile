FROM node
ADD cocos-build.sh /opt/cocos-build.sh
ADD https://storage.googleapis.com/otsimobuilds/cocos-creator-1.9.0-linux.tar.xz ./opt/
RUN tar xvjf cocos-creator-1.9.0-linux.tar.xz -d /opt/cocos-creator
#ADD cocos-creator /opt/cocos-creator 
ENTRYPOINT ["/opt/cocos-build.sh"]
