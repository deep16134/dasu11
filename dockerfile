FROM alpine
RUN apk add openjdk11 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
ADD ./target/devops-1234.jar /devops-1234.jar
EXPOSE 8082:8080
CMD ["java", "-jar", "devops-1234.jar"]
