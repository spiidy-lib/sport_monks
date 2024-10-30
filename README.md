# SportMonks

An Elixir client for the SportMonks API(v3).

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

# Get all leagues
{:ok, leagues} = SportMonks.get_leagues(client)

# Get a specific league
{:ok, league} = SportMonks.get_league(client, "league_id")

# With includes and filters
{:ok, leagues} = SportMonks.get_leagues(client, %{
  include: "country,season",
  search: "Premier League"
})
```

## Available Resources

### Leagues
### Seasons
### Teams


