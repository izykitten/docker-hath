## Usage

```
docker create \
  --name hath \
  --net=host \
  -e HATH_CLIENT_ID=<HATH_CLIENT_ID> \
  -e HATH_CLIENT_KEY=<HATH_CLIENT_KEY> \
  -v </path/to/your/data/hath/cache>:/data/hath/cache \
  -v </path/to/your/data/hath/data>:/data/hath/data \
  -v </path/to/your/data/hath/download>:/data/hath/download \
  -v </path/to/your/data/hath/log>:/data/hath/log \
  frosty5689/hath
```

## Parameters

* `--net=host` - Uses host network with container, *required*.
* `-v /data/hath/cache` - H@H cache
* `-v /data/hath/data` - H@H data
* `-v /data/hath/download` - H@H download
* `-v /data/hath/log` - H@H log
* `-e HATH_CLIENT_ID` - H@H Client ID
* `-e HATH_CLIENT_KEY` - H@H Client Key

