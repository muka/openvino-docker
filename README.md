# openvino docker deps

This repository is an attempt to have `gocv` and `OpenVino` running on `Ubuntu 18.04`

This utility to load 16.04 deps from container and make avail to your openvino libraries.

Run `make copy` and libraries will appear in `./lib/`

```sh
LD_LIBRARY_PATH=`pwd`/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH
```

