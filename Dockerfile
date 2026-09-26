FROM ghcr.io/gleam-lang/gleam:v1.18.1-scratch AS gleam

FROM erlang:29.1.1-alpine AS build
COPY --from=gleam /bin/gleam /bin/gleam
WORKDIR /app
COPY . .
RUN gleam export erlang-shipment

FROM erlang:29.1.1-alpine
COPY --from=build /app/build/erlang-shipment /app
WORKDIR /app
USER nobody
EXPOSE 4000
ENTRYPOINT ["/bin/sh", "/app/entrypoint.sh"]
CMD ["run"]
