
wn -R jenkins /home/
mkdir /home/demo
cp -vraf /var/lib/jenkins/workspace/Demo/* /home/demo/
touch /home/demo/Dockerfile

printf " FROM java:8

RUN apt-get update
RUN apt-get install -y maven
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN ["mvn", "package"]
CMD ["usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-jar", "target/squash-java-1.0.0-SNAPSHOT.jar"]">> /home/demo/Dockerfile
