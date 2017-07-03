#### [» Setup guide](https://github.com/stevemclaugh/preservation-torrent/blob/master/Setup.md) &nbsp; [» Sample torrent file](https://github.com/stevemclaugh/preservation-torrent/blob/master/DataRefuge_001_test.torrent?raw=true)

# Guidelines for torrent-based preservation


### Each torrent should contain a bundle of datasets totaling around 10–20 gigabytes.

- Very few participants will bother to seed hundreds of separate 25MB–100MB torrents. Many have storage and bandwidth to spare, but screen space is limited and managing long lists of files is tedious.

- Issuing data in bundles decreases the odds that individual torrents will slip through the cracks and no longer be seeded.

- The reason for the bundled model is that these torrents are aimed at preservation, not everyday use. It is still possible to download individual files from within torrents.


### Torrents should be issued in a numbered series, with periodic additions for new datasets.

```
📄 DataRefuge_001.torrent
📄 DataRefuge_002.torrent
📄 DataRefuge_003.torrent
📄 DataRefuge_004.torrent
📄 DataRefuge_005.torrent
📄 ...
```

### Each torrent contains a single directory with several (perhaps several dozen) datasets and their metadata.

```
📂 DataRefuge_001/
    📄 _checksums.md5
    📄 dataset-uuid-123.zip
    📄 dataset-uuid-123.json
    📄 dataset-uuid-xyz.zip
    📄 dataset-uuid-xyz.json
    📄 ...
    📄 README.txt

📂 DataRefuge_002/
    📄 _checksums.md5
    📄 dataset-uuid-456.zip
    📄 dataset-uuid-456.json
    📄 dataset-uuid-abc.zip
    📄 dataset-uuid-abc.json
    📄 ...
    📄 README.txt

📂 DataRefuge_003/
    📄 ...

📂 DataRefuge_004/
    📄 ...

📂 DataRefuge_005/
    📄 ...
```

### Larger datasets can be issued as a numbered 'bundle' containing a single item.

```
📂 DataRefuge_019/
    📄 _checksums.md5
    📄 50GB-database-uuid.zip
    📄 50GB-database-uuid.json
    📄 README.txt
```

### The fewer individual files in a torrent bundle, the better.

- In these torrents, each dataset should be distributed as one ZIP file (or comparable archive format) and a corresponding JSON metadata file.

- Each torrent should be capped at 400–500 files. If a single torrent points to >1000 files, people's bittorrent clients may slow down or crash.


### Datasets need not be bundled thematically.

- Because you can't add files to an existing torrent, thematically organized collections become unmanageable over time.

- Instead, assign datasets to bundles in roughly chronological order.

### Metadata for items included in the torrent collection, along with checksums and torrent magnet links, should be available for download from a trusted source.

### It isn't necessary to include extensive human-readable metadata in each torrent.

- Remember that filenames are visible to the public via torrent trackers and the distributed hash table. Using UUIDs instead of human-readable filenames is a form of light obfuscation.

- The master metadata collection will be a fairly small document, so it may pose less of a preservation challenge than the datasets.


### If a dataset needs to be removed/revised in the future, it is possible to create a replacement torrent and link to it from the central site.

- Assiduous collectors will occasionally check their files against the master checksum list and download updated torrents as needed.

- The group of seeders for the original torrent will die out over time.

- Relaunching a torrent should be reserved for exceptional cases only.

### Benefits of torrent-based preservation using bundles

- People can participate in the preservation effort without the effort and disk space required to run a full mirror. An individual can contribute by seeding just one or two torrents.

- Distributing the collection in dozens of torrents instead of hundreds will make it easy to collect and seed en masse.

- Issuing a limited set of sequentially numbered volumes may stir up a desire for completeness among collectors.

- With a trusted body issuing torrent files and metadata, the system is centralized enough to keep people on the same page. If that body ceases its operations, the structure is decentralized enough to allow the collection to live on in a more-or-less coherent form.

&nbsp;

##### [*>> Setup guide: Creating and seeding a torrent on a VPS*](Setup.md)

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
