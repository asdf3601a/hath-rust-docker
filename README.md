# hath-rust-docker

HatH Rust Version Container

hath-rust: https://github.com/james58899/hath-rust

## Pull

```
docker pull ghcr.io/asdf3601a/hath-rust-docker:main
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