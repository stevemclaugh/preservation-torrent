### [Setup guide](https://github.com/stevemclaugh/preservation-torrent/blob/master/Setup.md) | [Sample torrent file](https://github.com/stevemclaugh/preservation-torrent/blob/master/DataRefuge_001_test.torrent?raw=true)

# Guidelines for torrent-based preservation

- **Files should be grouped in bundles of around 10–20 gigabytes.**

  - Few people will bother to seed hundreds of separate 25MB–100MB torrents. Many people have storage and bandwidth to spare, but screen space is limited and managing long lists of files is tedious.

  - Bundling decreases the odds that individual torrents will slip through the cracks and no longer be seeded.

  - The point of bundling is that these torrents are aimed at preservation, not everyday use.

  - It is possible to download individual files from within torrents, but it shouldn't be encouraged. If too many people are seeding partial downloads, it can hurt the health of the swarm.


- **Bundles should be issued in a numbered series, with periodic additions to include new datasets.**

```
📄 DataRefuge_001.torrent
📄 DataRefuge_002.torrent
📄 DataRefuge_003.torrent
📄 DataRefuge_004.torrent
📄 DataRefuge_005.torrent
📄 ...
```

- **Each torrent contains a single directory containing datasets and metadata.**

```
📂 DataRefuge_001/
    📄 _checksums.md5
    📄 dataset-uuid123.zip
    📄 dataset-uuid123.json
    📄 dataset-uuidxyz.zip
    📄 dataset-uuidxyz.json
    📄 ...
    📄 README.txt

📂 DataRefuge_002/
    📄 ...

📂 DataRefuge_003/
    📄 ...

📂 DataRefuge_004/
    📄 ...

📂 DataRefuge_005/
    📄 ...
```

- **Larger datasets can be issued on their own, as a numbered bundle containing a single dataset.**

```
📂 DataRefuge_019/
    📄 _checksums.md5
    📄 50GB-database-uuid.zip
    📄 50GB-database-uuid.json
    📄 README.txt
```

- **Material should not be bundled thematically.**

    - Because you can't add files to an existing torrent, thematically organized collections become unmanageable over time.

    - Instead, assign datasets to bundles chronologically.

- **The fewer individual files in a torrent bundle, the better.**

    - If each torrent points to 1000 files, people's clients may crash.

    - Each torrent should be capped at 400–500 individual files.


- *Include a checksum for each file in each torrent.*

- *Filenames need not be human-readable.*

- *If a file needs to be removed/revised, just create a new torrent file and link to it.*


## Benefits of torrent-based preservation

People don't have to mirror the full set; they can dl one or two torrents and still contribute

Dozens of torrents instead of hundreds or thousands make the collection easy to grab and seed en masse.

And easier to manage and seed for the institution.

A limited set of sequentially numbered volumes stirs up a desire for completeness in the collector mentality.

Centralized to keep people orchestrated; decentralized enough to afford future mirrors.



[*Setup guide: Creating and seeding a torrent on a VPS*](Setup.md)

<!--

Tenen and Foxman paper


Precedents include LibGen/Sci-Hub, as well as the 78-DVD "kolhoz library" collection.

-->



&nbsp;


<p xmlns:dct="http://purl.org/dc/terms/" xmlns:vcard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <a rel="license"
     href="http://creativecommons.org/publicdomain/zero/1.0/">
    <img src="http://i.creativecommons.org/p/zero/1.0/88x31.png" style="border-style: none;" alt="CC0" />
  </a>
</p>
