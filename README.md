# hath-rust-docker
HatH Rust Version Container

## Pull

```
docker pull ghcr.io/asdf3601a/hath-rust-docker:arm64
```

## Run

```
docker run --name hath \
-e KEY=[Client ID]-[Client Key] \
-v download:/hath/download \
-v data:/hath/data \
-v cache:/hath/cache \
-p [Your Port]:[Your Port] \
-d ghcr.io/asdf3601a/hath-rust-docker
```