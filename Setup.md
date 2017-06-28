

docker rm -f transmission

docker pull stevemclaugh/transmission


First, launch an interactive session and create your torrent file from the command line.

```
docker run --name transmission -it -p 9091:9091 -v ~/Desktop/transmission-daemon:/var/lib/transmission-daemon stevemclaugh/transmission bash
```

```
transmission-create -n DataRefuge_001/ --tracker udp://tracker.openbittorrent.com:6969/announce --tracker udp://tracker.opentrackr.org:1337 -o DataRefuge_001.torrent
```

Now kill your running container.

```
docker rm -f transmission
```

Add your data file to `transmission-daemon/downloads/` and move the torrent file to `transmission-daemon/info/torrents`.

Relaunch the transmission container to begin seeding:

```
docker run --name transmission -it -p 51413:51413 -p 51413:51413/udp -p 9091:9091 -v ~/Desktop/transmission-daemon:/var/lib/transmission-daemon stevemclaugh/transmission
```
