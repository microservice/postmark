FROM bitwalker/alpine-elixir

COPY . /app

WORKDIR /app

RUN mix deps.get
RUN mix release


ENTRYPOINT ["/app/_build/dev/rel/postmark/bin/postmark", "foreground"]
