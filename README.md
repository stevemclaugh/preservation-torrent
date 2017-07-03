### [Setup guide](Setup.md) | [Sample torrent file](https://github.com/stevemclaugh/preservation-torrent/blob/master/DataRefuge_001_test.torrent?raw=true)

# Guidelines for torrent-based preservation


### Each torrent should contain a bundle of datasets, each around 10–20 gigabytes.

- Very few participants will bother to seed hundreds of separate 25MB–100MB torrents. Many have storage and bandwidth to spare, but screen space is limited and managing long lists of files is tedious.

- Issuing bundled datasets (rather than one per torrent) decreases the odds that less in-demand items will slip through the cracks and no longer be seeded.

- The point of this model is that these torrents are aimed at preservation, not everyday use.
    - If someone has limited disk space, it is still possible to download individual files from torrents.


### Metadata for all datasets, along with torrent files and checksums, should be available from a trusted source.


### Torrents should be issued in a numbered series, with periodic additions to reflect the latest datasets.

```
📄 DataRefuge_001.torrent
📄 DataRefuge_002.torrent
📄 DataRefuge_003.torrent
📄 DataRefuge_004.torrent
📄 DataRefuge_005.torrent
📄 ...
```


### Each torrent points to a single directory containing several (perhaps several dozen) datasets and their metadata.

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


### A very large dataset would be issued on its own as a numbered torrent in the series.

```
📂 DataRefuge_019/
    📄 _checksums.md5
    📄 50GB-database-uuid.zip
    📄 50GB-database-uuid.json
    📄 README.txt
```


### The fewer files in a torrent, the better.

- Each dataset should be distributed as one ZIP file (or comparable archive format) and a corresponding JSON metadata file.

- Each torrent should be capped at 400–500 individual files. If a single torrent points to too many files, participants' clients may slow down or crash.


### Datasets need not be bundled thematically.

- Because you can't add files to an existing torrent, thematically organized collections become unmanageable over time.

- Instead, assign datasets to torrent bundles in roughly chronological order.


### It isn't necessary to include extensive human-readable metadata in each torrent.

- Remember that filenames are visible to the public via torrent trackers and the distributed hash table. Using UUIDs instead of human-readable filenames is a light form of obfuscation.

- The master metadata collection will be a fairly small document, so it may pose less of a preservation risk than the actual datasets.


### If a dataset needs to be retracted/updated in the future, the trusted source can create a replacement torrent and link to the new torrent file.

- Assiduous collectors will occasionally check their files against the master checksum list and download updated torrents as needed.

- The group of seeders for the original torrent will die out over time.

- Reissuing a torrent, of course, should be reserved for exceptional cases.


## Benefits of torrent-based preservation

- With a trusted source issuing torrent files and metadata, the system is centralized enough to keep people on the same page.
    - If that source ceases to operate, collaboration among collectors may permit the data to live on in more-or-less coherent form.

- Individuals can participate in the preservation effort without the expertise or disk space required to run a full mirror. Downloading and seeding just one or two torrents is a real contribution.

- Distributing the collection using dozens of torrents instead of hundreds will make it simple to collect and seed en masse.

- Issuing a limited set of sequentially numbered volumes could potentially spur a desire for completeness among data collectors.

&nbsp;

#### [*>> Setup guide: Creating and seeding a torrent on a VPS*](Setup.md)

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
