FROM ghcr.io/james58899/hath-rust

WORKDIR /hath
RUN mkdir -p /hath/download /hath/data /hath/cache
COPY --chmod=744 start.sh /hath/start.sh

CMD [ "./start.sh" ]