# SportMonks

Elixir client for the SportMonks API(v3).

## Installation

The package can be installed by adding sport_monks to your list of dependencies in mix.exs:

```elixir
def deps do
  [
    {:sport_monks, "~> 0.1.0"}
  ]
end
```

## Configuration

Configure your SportMonks API token:

```elixir
# config/config.exs
config :sport_monks,
  api_token: System.get_env("SPORTMONKS_API_TOKEN")

# OR in runtime.exs for production
config :sport_monks,
  api_token: System.fetch_env!("SPORTMONKS_API_TOKEN")
```

## Usage
```elixir
# Create a new client
client = SportMonks.new("your_api_token")

# Or use configured token
client = SportMonks.new()
```

## Available Resources

