# Sample Docker container running Jenkins with Node.js installed

The Jenkins container uses a data container to store the jenkins_home folder to
allow persistence outside of the Jenkins container.

1. Create data container

```
$ docker create --name="jenkins-data" -v /var/jenkins_home chrisneave/jenkins-nodejs echo "Data container for Jenkins"
```

2. Create and run Jenkins container

```
$ docker run --name jenkins-nodejs --volumes-from jenkins-data -p 8080:8080 chrisneave/jenkins-nodejs
```
