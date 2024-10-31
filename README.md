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

#### Coaches

```elixir
SportMonks.get_coaches(client, params \\ %{})
SportMonks.get_coach_by_id(client, coach_id, params \\ %{})
SportMonks.get_coaches_by_country_id(client, country_id, params \\ %{})
SportMonks.get_coaches_by_name(client, name, params \\ %{})
SportMonks.get_coaches_by_latest(client, params \\ %{})
```

#### Referees

```elixir
SportMonks.get_referees(client, params \\ %{})
SportMonks.get_referee_by_id(client, referee_id, params \\ %{})
SportMonks.get_referees_by_country_id(client, country_id, params \\ %{})
SportMonks.get_referees_by_season_id(client, season_id, params \\ %{})
SportMonks.get_referees_by_name(client, name, params \\ %{})
```

#### Venues

```elixir
SportMonks.get_venues(client, params \\ %{})
SportMonks.get_venue_by_id(client, venue_id, params \\ %{})
SportMonks.get_venues_by_season_id(client, season_id, params \\ %{})
SportMonks.get_venues_by_name(client, name, params \\ %{})
```

#### TVStations

```elixir
SportMonks.get_tv_stations(client, params \\ %{})
SportMonks.get_tv_station_by_id(client, tv_station_id, params \\ %{})
SportMonks.get_tv_stations_by_fixture_id(client, fixture_id, params \\ %{})
```

#### Rivals

```elixir
SportMonks.get_rivals(client, params \\ %{})
SportMonks.get_rivals_by_team_id(client, team_id, params \\ %{})
```

### Match/Game Related

#### News

```elixir
SportMonks.get_news_pre_match(client, params \\ %{})
SportMonks.get_news_pre_match_by_season_id(client, season_id, params \\ %{})
SportMonks.get_news_pre_match_by_upcoming_fixture(client, params \\ %{})
SportMonks.get_news_post_match(client, params \\ %{})
SportMonks.get_news_post_match_by_season_id(client, season_id, params \\ %{})
```

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
SportMonks.get_fixtures_by_tv_station_id(client, tv_station_id, past, params \\ %{})
SportMonks.get_fixtures_by_latest(client, params \\ %{})
```

### Livescores

```elixir
SportMonks.get_livescores(client, params \\ %{})
SportMonks.get_livescores_by_inplay(client, params \\ %{})
SportMonks.get_livescores_by_latest(client, params \\ %{})
```

### Commentaries

```elixir
SportMonks.get_commentaries(client, params \\ %{})
SportMonks.get_commentaries_by_fixture_id(client, fixture_id, params \\ %{})
```

### Standings

```elixir
SportMonks.get_standings(client, params \\ %{})
SportMonks.get_standings_by_season_id(client, season_id, params \\ %{})
SportMonks.get_standings_by_round_id(client, round_id, params \\ %{})
SportMonks.get_standings_by_live_for_league_id(client, league_id, params \\ %{})
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

### Transfers

```elixir
SportMonks.get_transfers(client, params \\ %{})
SportMonks.get_transfer_by_id(client, transfer_id, params \\ %{})
SportMonks.get_transfers_by_latest(client, params \\ %{})
SportMonks.get_transfers_by_range(client, start_date, end_date, params \\ %{})
SportMonks.get_transfers_by_team_id(client, team_id, params \\ %{})
SportMonks.get_transfers_by_player_id(client, player_id, params \\ %{})
```

## Match Details

### Statistics

```elixir
SportMonks.get_statistics_by_player(client, player_id, params \\ %{})
SportMonks.get_statistics_by_team(client, team_id, params \\ %{})
SportMonks.get_statistics_by_coach(client, coach_id, params \\ %{})
SportMonks.get_statistics_by_referee(client, referee_id, params \\ %{})
SportMonks.get_statistics_by_stage(client, stage_id, params \\ %{})
SportMonks.get_statistics_by_round(client, round_id, params \\ %{})
```

### Topscorers
```elixir
SportMonks.get_topscorers_by_season_id(client, season_id, params \\ %{})
SportMonks.get_topscorers_by_stage_id(client, stage_id, params \\ %{})
```

## Betting Related

### Expected(xG)

```elixir
SportMonks.get_expected_by_team(client, params \\ %{})
SportMonks.get_expected_by_player(client, params \\ %{})
```

### Predictions
```elixir
SportMonks.get_probabilities(client, params \\ %{})
SportMonks.get_probabilities_by_fixture_id(client, fixture_id, params \\ %{})
SportMonks.get_predictability_by_league_id(client, league_id, params \\ %{})
SportMonks.get_value_bets(client, params \\ %{})
SportMonks.get_value_bets_by_fixture_id(client, fixture_id, params \\ %{})
```

### Markets

### Bookmaker

### Odds
