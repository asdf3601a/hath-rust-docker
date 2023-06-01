FROM --platform=arm64 debian:bookworm-slim

WORKDIR /hath
RUN mkdir -p /hath/download /hath/data /hath/cache
COPY --chmod=744 start.sh /hath/start.sh
ADD --chmod=744 "https://github.com/james58899/hath-rust/releases/latest/download/hath-rust-aarch64-unknown-linux-gnu" /hath/hath-rust

CMD [ "./start.sh" ]