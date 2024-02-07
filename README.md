### Build

```
$ docker build --build-arg TOR_EXPERT_BUNDLE_VERSION=${TOR_EXPERT_BUNDLE_VERSION} -t anyshpm/tor .
```

Specify the Tor version to ${TOR_EXPERT_BUNDLE_VERSION}. For example:

```
$ docker build --build-arg TOR_EXPERT_BUNDLE_VERSION=13.0.9 -t anyshpm/tor .
```

Docker stack:
```
version: "3.9"

services:
  tor:
    image: anyshpm/tor
    deploy:
      restart_policy:
        condition: on-failure
        #max_attempts: 5
    volumes:
      - ./etc/tor:/etc/tor
    environment:
      - "TZ=Asia/Shanghai"
    #ports:
    #  - 9050:9050
```
