#

```fish
### fish
docker run --rm -it (docker build -q .) /bin/bash
### bash/zshだったら多分こう(未確認)
docker run --rm -it $(docker build -q .) /bin/bash
```
