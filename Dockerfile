FROM gcc:14 AS build
WORKDIR /src
COPY . .
RUN make CFLAGS="-Wall -Wextra -std=c11 -O2"

FROM debian:stable-slim
COPY --from=build /src/cshell /usr/local/bin/cshell
ENTRYPOINT ["/usr/local/bin/cshell"]
