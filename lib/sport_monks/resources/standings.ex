defmodule SportMonks.Resources.Standings do
  @moduledoc """
  Handles standing-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of standings.

  ## Documentation

    Please see [Get all standings](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/standings/get-all-standings)
  """
  def get_standings(client, params \\ %{}) do
    Client.get(client, "/football/standings", params)
  end

  @doc """
  Gets a list of standings by season ID.

  ## Documentation

    Please see [Get standings by season ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/standings/get-standings-by-season-id)
  """
  def get_standings_by_season_id(client, season_id, params \\ %{}) do
    Client.get(client, "/football/standings/seasons/#{season_id}", params)
  end

  @doc """
  Gets a list of standings by round ID.

  ## Documentation

    Please see [Get standings by round ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/standings/get-standings-by-round-id)
  """
  def get_standings_by_round_id(client, round_id, params \\ %{}) do
    Client.get(client, "/football/standings/rounds/#{round_id}", params)
  end

  @doc """
  Gets a list of standings correction by season ID.

  ## Documentation

    Please see [Get standings correction by season ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/standings/get-standing-correction-by-season-id)
  """
  def get_standings_correction_by_season_id(client, season_id, params \\ %{}) do
    Client.get(client, "/football/standings/corrections/seasons/#{season_id}", params)
  end

  @doc """
  Gets a list of standings which are live.

  ## Documentation

    Please see [Get live standings by league ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/standings/get-live-standings-by-league-id)
  """
  def get_standings_by_live_for_league_id(client, league_id, params \\ %{}) do
    Client.get(client, "/football/standings/live/league/#{league_id}", params)
  end
end
