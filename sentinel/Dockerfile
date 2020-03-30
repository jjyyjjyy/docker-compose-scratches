FROM openjdk:8-jre-alpine
ENV TZ=Asia/Shanghai
VOLUME /tmp
EXPOSE 9948
CMD java ${JAVA_OPTS} -XX:AutoBoxCacheMax=20000 -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -noverify -Djava.security.egd=file:/dev/./urandom -Dserver.port=9948 -Dcsp.sentinel.dashboard.server=9948 -Dproject.name=sentinel-dashboard -jar /app.jar
ADD *.jar /app.jar