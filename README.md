# docker-ospurge


**Note:** If you already have the image use the following to get the latest build
```
$ sudo docker pull  itzikb/docker-ospurge
```

Docker should be installed and running.
To install it run(Fedora):
```
$ sudo dnf -y install docker && sudo systemctl start docker && sudo systemctl enable docker
```
or For other RHEL based distros:
```
$ sudo yum -y install docker && sudo systemctl start docker && sudo systemctl enable docker
```

Before running you need to have a directory with overcloudrc file and set the SELinux file context. 

For example:
```
$ mkdir /home/stack/authdir
$ cp /home/stack/overcloudrc /home/stack/authdir
$ sudo chcon -Rt svirt_sandbox_file_t /home/stack/authdir
```

To use it run the following (Here overcloudrc file is under /home/stack/authdir):
```
$ sudo docker run -it --name myospurge -v /home/stack/authdir:/env itzikb/docker-ospurge  /bin/bash
```
**Note: Don't use the /home/stack directory as it may result in an unexpected behavior**


You can access the container by running
```
$ sudo docker exec -it <container-name> /bin/bash
```
You can see all the containers by running
```
$ sudo docker ps -a 
```
