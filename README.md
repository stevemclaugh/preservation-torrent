## Guidelines for torrent-based preservation

[Setup guide for creating and seeding a torrent on a VPS](Setup.md)

- **Small files should be bundled in groups of 10–20 gigabytes.**

  - Few people will bother to seed hundreds of separate 25MB torrents. Many people have storage and bandwidth to spare, but screen space is limited and managing long lists of files is tedious.

  - Bundling decreases the odds that individual (poorly seeded) torrents will slip through the cracks and disappear.

  - The point of bundling is that these torrents are aimed at preservation, not everyday use.

    - It's possible to download individual files from within torrents, but if too many people do so it can compromise the health of the swarm.


- **Bundles should be issued in a numbered series, with new additions added periodically to include new datasets.**

    - DataRefuge_001.torrent
    - DataRefuge_002.torrent
    - DataRefuge_003.torrent
    - ...

- **Each torrent contains a single directory containing datasets and metadata**

    - DataRefuge\_001/
        - _md5list.chk
        - dataset\_123.zip
        - dataset\_123.json
        - dataset\_xyz.zip
        - dataset\_xyz.json
        - ...
        - README.txt
    - DataRefuge_002/
    - DataRefuge_003/
    - ...


- **Larger datasets can be issued on their own, as a numbered bundle containing a single dataset.**


- DataRefuge\_099/
    - _md5list.chk
    - dataset\_foo.zip
    - dataset_foo.json
    - README.txt


- **Material should not be bundled thematically.**

    - Because you can't add files to an existing torrent, thematically organized collections become unmanageable over time.

    - Instead, assign datasets to bundles chronologically.

- **The fewer individual files in a torrent bundle, the better.**

    - If each torrent points to 1000 files, people's clients may crash.

    - Each torrent should be capped at 400–500 individual files.


- Choose discreet filenames. The content of a file is a bit less likely to be indexed in a metadata search/surveillance sweep.
    - individual torrents are vulnerable to poisoning attacks

- Include a checksum for each file in each torrent — can be checked easily and used to verify that your local copy is the most recent version of a file (in case a change has been made)


- If a file needs to be removed/revised, just create a new torrent file and link to it.


## Benefits of torrent-based preservation

People don't have to mirror the full set; they can dl one or two torrents and still contribute

Dozens of torrents instead of hundreds or thousands make the collection easy to grab and seed en masse.

A limited set of sequentially numbered volumes stirs up a desire for completeness in the collector mentality.

Centralized to keep people orchestrated; decentralized enough to afford future mirrors.




Tenen and Foxman paper

kolhoz


 - Precedents include LibGen/Sci-Hub, as well as the 78-DVD "kolhoz library" collection.
