# POC

## BUILD

```bash
./tools/verify.sh
```

## ENV

- clangd
- arduino-cli

## Docker

```bash
rm -rf ./Arduino
docker build . -t poc_renesas_uno
docker run --rm -it poc_renesas_uno
```
