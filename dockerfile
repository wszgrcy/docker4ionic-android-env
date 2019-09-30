FROM openjdk:8u222-slim-buster
COPY ./*.zip /data/

ENV PATH=$PATH:/data/gradle/gradle-5.6.2/bin:/data/android-sdk/tools/bin
ENV ANDROID_SDK_ROOT=/data/android-sdk
RUN ls -l /data&&\
    apt-get update&&\
    apt-get install nodejs npm curl unzip -y --no-install-recommends&&\
    unzip /data/gradle-5.6.2-bin.zip -d /data/gradle&&\
    unzip /data/sdk-tools-linux-*.zip -d /data/android-sdk&&\
    touch /root/.android/repositories.cfg&&\
    (while sleep 1; do echo "y"; done)|sdkmanager "platforms;android-28"&&\
    npm i ionic -g
VOLUME [ "/source" ]