test: mix.exs
	docker run --rm --workdir /app -e DEBUG=1 -v $(shell pwd):/app elixir:1.3.4 mix do local.hex --force, local.rebar --force, deps.get, compile

.PHONY: test
