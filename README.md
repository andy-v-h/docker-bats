# Lightweight Docker Image for the Bash Automated Testing System

[![](https://images.microbadger.com/badges/image/lucor/bats.svg)](http://microbadger.com/images/lucor/bats "Get your own image badge on microbadger.com")

A lightweight Docker image for [Bash Automated Testing System (bats)](https://github.com/sstephenson/bats)

It provides:

  - alpine `v3.14`
  - bats `v0.4.0`

and the following helpers:

- [bats-support](https://github.com/ztombol/bats-support) v0.3.0
- [bats-asserts](https://github.com/ztombol/bats-assert) v0.3.0
- [bats-file](https://github.com/ztombol/bats-file) v0.2.0

## Helpers loading

All helpers are stored under the `/usr/local/lib/bats/` folder.

To load all helpers, add in your bats test the following line:
 
    load '/usr/local/lib/bats/load.bash'

## Examples

### Display the bats help

```
  docker run --rm -ti lucor/bats bats
```

### Run a bats test

```
  docker run --rm -ti \
    -v $(pwd):/tests \
    lucor/bats \
    bats your_test.bats
```
