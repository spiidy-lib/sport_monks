defmodule SportMonks do
  @moduledoc """
  A client for the SportMonks API (v3).
  """

  alias SportMonks.Client
  alias SportMonks.Error

  @type client :: Client.t()
  @type response(type) :: {:ok, type} | {:error, Error.t()}

  @doc """
  Creates a new client with the given API token.
  """
  @spec new(String.t()) :: client()
  def new(api_token) when is_binary(api_token) do
    Client.new(api_token)
  end

  @doc """
  Creates a new client using the configured API token.
  """
  @spec new() :: client()
  def new do
    api_token = Application.fetch_env!(:sport_monks, :api_token)
    new(api_token)
  end

  # leagues
  defdelegate get_leagues(client, params \\ %{}), to: SportMonks.Resources.Leagues
  defdelegate get_league_by_id(client, league_id, params \\ %{}), to: SportMonks.Resources.Leagues
  defdelegate get_leagues_by_live(client, params \\ %{}), to: SportMonks.Resources.Leagues
  defdelegate get_leagues_by_date(client, date, params \\ %{}), to: SportMonks.Resources.Leagues
  defdelegate get_leagues_by_country_id(client, country_id, params \\ %{}), to: SportMonks.Resources.Leagues
  defdelegate get_leagues_by_name(client, name, params \\ %{}), to: SportMonks.Resources.Leagues
  defdelegate get_leagues_by_team_id(client, team_id, current, params \\ %{}), to: SportMonks.Resources.Leagues

  # seasons
  defdelegate get_seasons(client, params \\ %{}), to: SportMonks.Resources.Seasons
  defdelegate get_season_by_id(client, params \\ %{}), to: SportMonks.Resources.Seasons
  defdelegate get_seasons_by_team_id(client, team_id, params \\ %{}), to: SportMonks.Resources.Seasons
  defdelegate get_seasons_by_name(client, name, params \\ %{}), to: SportMonks.Resources.Seasons

  # teams
  defdelegate get_teams(client, params \\ %{}), to: SportMonks.Resources.Teams
  defdelegate get_team_by_id(client, team_id, params \\ %{}), to: SportMonks.Resources.Teams
  defdelegate get_teams_by_country_id(client, country_id, params \\ %{}), to: SportMonks.Resources.Teams
  defdelegate get_teams_by_season_id(client, season_id, params \\ %{}), to: SportMonks.Resources.Teams
  defdelegate get_teams_by_name(client, name, params \\ %{}), to: SportMonks.Resources.Teams

  # fixtures
  defdelegate get_fixtures(client, params \\ %{}), to: SportMonks.Resources.Fixtures
  defdelegate get_fixture_by_id(client, fixture_id, params \\ %{}), to: SportMonks.Resources.Fixtures
  defdelegate get_fixtures_by_ids(client, fixture_ids, params \\ %{}), to: SportMonks.Resources.Fixtures
  defdelegate get_fixtures_by_date(client, date, params \\ %{}), to: SportMonks.Resources.Fixtures
  defdelegate get_fixtures_by_range(client, start_date, end_date, params \\ %{}), to: SportMonks.Resources.Fixtures
  defdelegate get_fixtures_by_range_for_team_id(client, start_date, end_date, team_id, params \\ %{}), to: SportMonks.Resources.Fixtures
  defdelegate get_fixtures_by_head_to_head(client, team_id_1, team_id_2, params \\ %{}), to: SportMonks.Resources.Fixtures
  defdelegate get_fixtures_by_name(client, name, params \\ %{}), to: SportMonks.Resources.Fixtures
  defdelegate get_fixtures_by_market_id(client, market_id, params \\ %{}), to: SportMonks.Resources.Fixtures
  defdelegate get_fixtures_by_tv_id(client, tv_id, past, params \\ %{}), to: SportMonks.Resources.Fixtures
  defdelegate get_fixtures_by_latest(client, params \\ %{}), to: SportMonks.Resources.Fixtures

  # livescores
  defdelegate get_livescores(client, params \\ %{}), to: SportMonks.Resources.Livescores
  defdelegate get_livescores_by_inplay(client, params \\ %{}), to: SportMonks.Resources.Livescores
  defdelegate get_livescores_by_latest(client, params \\ %{}), to: SportMonks.Resources.Livescores

  # standings
  defdelegate get_standings(client, params \\ %{}), to: SportMonks.Resources.Standings
  defdelegate get_standings_by_season_id(client, season_id, params \\ %{}), to: SportMonks.Resources.Standings
  defdelegate get_standings_by_round_id(client, round_id, params \\ %{}), to: SportMonks.Resources.Standings
  defdelegate get_standings_by_live_for_league(client, league_id, params \\ %{}), to: SportMonks.Resources.Standings
  defdelegate get_standings_correction_by_season_id(client, season_id, params \\ %{}), to: SportMonks.Resources.Standings

  # rounds
  defdelegate get_rounds(client, params \\ %{}), to: SportMonks.Resources.Rounds
  defdelegate get_round_by_id(client, round_id, params \\ %{}), to: SportMonks.Resources.Rounds
  defdelegate get_rounds_by_season_id(client, season_id, params \\ %{}), to: SportMonks.Resources.Rounds
  defdelegate get_rounds_by_name(client, name, params \\ %{}), to: SportMonks.Resources.Rounds

  # stages
  defdelegate get_stages(client, params \\ %{}), to: SportMonks.Resources.Stages
  defdelegate get_stage_by_id(client, round_id, params \\ %{}), to: SportMonks.Resources.Stages
  defdelegate get_stages_by_season_id(client, season_id, params \\ %{}), to: SportMonks.Resources.Stages
  defdelegate get_stages_by_name(client, name, params \\ %{}), to: SportMonks.Resources.Stages

  # schedules
  defdelegate get_schedules_by_season_id(client, season_id, params \\ %{}), to: SportMonks.Resources.Schedules
  defdelegate get_schedules_by_team_id(client, team_id, params \\ %{}), to: SportMonks.Resources.Schedules
  defdelegate get_schedules_by_season_id_and_team_id(client, season_id, team_id, params \\ %{}), to: SportMonks.Resources.Schedules

  # players
  defdelegate get_players(client, params \\ %{}), to: SportMonks.Resources.Players
  defdelegate get_player_by_id(client, player_id, params \\ %{}), to: SportMonks.Resources.Players
  defdelegate get_players_by_country_id(client, country_id, params \\ %{}), to: SportMonks.Resources.Players
  defdelegate get_players_by_name(client, name, params \\ %{}), to: SportMonks.Resources.Players
  defdelegate get_players_by_latest(client, params \\ %{}), to: SportMonks.Resources.Players

  # squads
  defdelegate get_squad_by_team_id(client, team_id, extended, params \\ %{}), to: SportMonks.Resources.Squads
  defdelegate get_squad_by_season_id_and_team_id(client, season_id, team_id, params \\ %{}), to: SportMonks.Resources.Squads

  # transfers
  defdelegate get_transfers(client, params \\ %{}), to: SportMonks.Resources.Transfers
  defdelegate get_transfer_by_id(client, transfer_id, params \\ %{}), to: SportMonks.Resources.Transfers
  defdelegate get_transfers_by_latest(client, params \\ %{}), to: SportMonks.Resources.Transfers
  defdelegate get_transfers_by_range(client, start_date, end_date, params \\ %{}), to: SportMonks.Resources.Transfers
  defdelegate get_transfers_by_team_id(client, team_id, params \\ %{}), to: SportMonks.Resources.Transfers
  defdelegate get_transfers_by_player_id(client, player_id, params \\ %{}), to: SportMonks.Resources.Transfers

  # statistics
  defdelegate get_statistics_by_player(client, player_id, params \\ %{}), to: SportMonks.Resources.Statistics
  defdelegate get_statistics_by_team(client, team_id, params \\ %{}), to: SportMonks.Resources.Statistics
  defdelegate get_statistics_by_coach(client, coach_id, params \\ %{}), to: SportMonks.Resources.Statistics
  defdelegate get_statistics_by_referee(client, referee_id, params \\ %{}), to: SportMonks.Resources.Statistics
  defdelegate get_statistics_by_stage(client, stage_id, params \\ %{}), to: SportMonks.Resources.Statistics
  defdelegate get_statistics_by_round(client, round_id, params \\ %{}), to: SportMonks.Resources.Statistics

  # topscorers
  defdelegate get_topscorers_by_season_id(client, season_id, params \\ %{}), to: SportMonks.Resources.Topscorers
  defdelegate get_topscorers_by_stage_id(client, stage_id, params \\ %{}), to: SportMonks.Resources.Topscorers
end
