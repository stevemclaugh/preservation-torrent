#Preservation-torrent docker notes

```
docker rm -f transmission

docker pull stevemclaugh/transmission
```

First, launch an interactive session and create your torrent file from the command line.

```
docker rm -f transmission \
&& docker run --name transmission -it -d -p 51413:51413 -p 51413:51413/udp -p 9091:9091 -v ~/Desktop/transmission-daemon:/var/lib/transmission-daemon stevemclaugh/transmission
```



```
docker exec -ti transmission /bin/bash
```

```
cd /var/lib/transmission-daemon/Downloads/
```


```
wget http://www.stephenmclaughlin.net/DataRescue/DataRefuge_001.zip

unzip DataRefuge_001.zip
```


```
find DataRefuge_001/* -type f -exec md5sum {} \;  > DataRefuge_001/checksums.md5
```


```
mkdir -p ../info/torrents/
```

```
transmission-create -n DataRefuge_001/ --tracker http://tracker2.wasabii.com.tw:6969/announce --tracker udp://tracker.opentrackr.org:1337 -o ../info/torrents/DataRefuge_001.torrent
```

Add your data file to `transmission-daemon/downloads/` and move the torrent file to `transmission-daemon/info/torrents`.




Relaunch the transmission container to begin seeding:

```
docker rm -f transmission \
&& docker run --name transmission -it -d -p 51413:51413 -p 51413:51413/udp -p 9091:9091 -v ~/Desktop/transmission-daemon:/var/lib/transmission-daemon stevemclaugh/transmission
```
