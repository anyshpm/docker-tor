### Build

```
$ docker build --build-arg TOR_VERSION=${TOR_VERSION} -t anyshpm/tor .
```

Specify the Tor version to ${TOR_VERSION}. For example:

```
$ docker build --build-arg TOR_VERSION=0.4.7.10-r0 -t anyshpm/tor .
```

