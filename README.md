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

### Core Competition Data
#### Leagues

```elixir
SportMonks.get_leagues(client, params \\ %{})
SportMonks.get_league_by_id(client, league_id, params \\ %{})
SportMonks.get_leagues_by_live(client, params \\ %{})
SportMonks.get_leagues_by_date(client, date, params \\ %{})
SportMonks.get_leagues_by_country_id(client, country_id, params \\ %{})
SportMonks.get_leagues_by_name(client, name, params \\ %{})
SportMonks.get_leagues_by_team_id(client, team_id, current, params \\ %{})
```

#### Seasons

```elixir
SportMonks.get_seasons(client, params \\ %{})
SportMonks.get_season_by_id(client, params \\ %{})
SportMonks.get_seasons_by_team_id(client, team_id, params \\ %{})
SportMonks.get_seasons_by_name(client, name, params \\ %{})
```

#### Teams

```elixir
SportMonks.get_teams(client, params \\ %{})
SportMonks.get_team_by_id(client, team_id, params \\ %{})
SportMonks.get_teams_by_country_id(client, country_id, params \\ %{})
SportMonks.get_teams_by_season_id(client, season_id, params \\ %{})
SportMonks.get_teams_by_name(client, name, params \\ %{})
```

### Match/Game Related

#### Fixtures

```elixir
SportMonks.get_fixtures(client, params \\ %{})
SportMonks.get_fixture_by_id(client, fixture_id, params \\ %{})
SportMonks.get_fixtures_by_ids(client, fixture_ids, params \\ %{})
SportMonks.get_fixtures_by_date(client, date, params \\ %{})
SportMonks.get_fixtures_by_range(client, start_date, end_date, params \\ %{})
SportMonks.get_fixtures_by_range_for_team_id(client, start_date, end_date, team_id, params \\ %{})
SportMonks.get_fixtures_by_head_to_head(client, team_id_1, team_id_2, params \\ %{})
SportMonks.get_fixtures_by_name(client, name, params \\ %{})
SportMonks.get_fixtures_by_market_id(client, market_id, params \\ %{})
SportMonks.get_fixtures_by_tv_id(client, tv_id, past, params \\ %{})
SportMonks.get_fixtures_by_latest(client, params \\ %{})
```

### Livescores

```elixir
SportMonks.get_livescores(client, params \\ %{})
SportMonks.get_livescores_by_inplay(client, params \\ %{})
SportMonks.get_livescores_by_latest(client, params \\ %{})
```

### Standings

```elixir
SportMonks.get_standings(client, params \\ %{})
SportMonks.get_standings_by_season_id(client, season_id, params \\ %{})
SportMonks.get_standings_by_round_id(client, round_id, params \\ %{})
SportMonks.get_standings_by_live_for_league(client, league_id, params \\ %{})
SportMonks.get_standings_correction_by_season_id(client, season_id, params \\ %{})
```

### Rounds

```elixir
SportMonks.get_rounds(client, params \\ %{})
SportMonks.get_round_by_id(client, round_id, params \\ %{})
SportMonks.get_rounds_by_season_id(client, season_id, params \\ %{})
SportMonks.get_rounds_by_name(client, name, params \\ %{})
```

### Stages

```elixir
SportMonks.get_stages(client, params \\ %{})
SportMonks.get_stage_by_id(client, round_id, params \\ %{})
SportMonks.get_stages_by_season_id(client, season_id, params \\ %{})
SportMonks.get_stages_by_name(client, name, params \\ %{})
```

### Schedules

```elixir
SportMonks.get_schedules_by_season_id(client, season_id, params \\ %{})
SportMonks.get_schedules_by_team_id(client, team_id, params \\ %{})
SportMonks.get_schedules_by_season_id_and_team_id(client, season_id, team_id, params \\ %{})
```

## Player Related

### Players
```elixir
SportMonks.get_players(client, params \\ %{})
SportMonks.get_player_by_id(client, player_id, params \\ %{})
SportMonks.get_players_by_country_id(client, country_id, params \\ %{})
SportMonks.get_players_by_name(client, name, params \\ %{})
SportMonks.get_players_by_latest(client, params \\ %{})
```

### Squads

```elixir
SportMonks.get_squad_by_team_id(client, team_id, extended, params \\ %{})
SportMonks.get_squad_by_season_id_and_team_id(client, season_id, team_id, extended, params \\ %{})
```
