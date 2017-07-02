## Creating and seeding a torrent on a VPS


I'm using an Ubuntu 16.04 server from Digital Ocean with with Docker 17.05.0-ce pre-installed.

<img src="img/DigitalOcean.png" width="800" />


```
ssh root@138.68.247.106
```



```
ufw allow 9091
ufw allow 51413
apt-get -y install unzip
```


```
docker pull stevemclaugh/transmission
```

First, launch an interactive session and create your torrent file from the command line.

```
docker rm -f transmission
docker run --name transmission -it -d -p 51413:51413 -p 51413:51413/udp -p 9091:9091 -v /home/transmission-daemon:/var/lib/transmission-daemon stevemclaugh/transmission
```





```
cd /home/transmission-daemon/downloads
```







```
mkdir DataRefuge_001_test/
cd DataRefuge_001_test/

wget -i http://www.stephenmclaughlin.net/DataRefuge/DataRefuge_001_wget_urls.txt

cd ../
```


```
find DataRefuge_001_test/* -type f -exec md5sum {} \;  > DataRefuge_001_test/_checksums.md5
```


```
docker exec -ti transmission /bin/bash
```


```
cd var/lib/transmission-daemon/downloads
```


```
transmission-create -n DataRefuge_001_test/ --tracker udp://tracker.opentrackr.org:1337 --tracker http://tracker2.wasabii.com.tw:6969/announce -o ../info/torrents/DataRefuge_001_test.torrent
```


#```
#chmod 775 DataRefuge_001_test/
#chmod 775 DataRefuge_001_test/*
#```

Your data file is now in `transmission-daemon/Downloads/` and move the torrent file to `transmission-daemon/info/torrents`.


control+p+q to leave Docker.

Relaunch the transmission container to begin seeding:

```
docker rm -f transmission
docker run --name transmission -it -d -p 51413:51413 -p 51413:51413/udp -p 9091:9091 -v /home/transmission-daemon:/var/lib/transmission-daemon stevemclaugh/transmission
```


165.227.15.173:9091



Right click > "Verify Local Data"
