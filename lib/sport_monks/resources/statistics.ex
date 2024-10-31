defmodule SportMonks.Resources.Statistics do
  @moduledoc """
  Handles statistic-related API endpoints.
  """
  alias SportMonks.Client

  @doc """
  Gets a list of season statistics for players, teams, coaches, referees

  ## Documentation

    Please see [Get season statistics](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/statistics/get-season-statistics-by-participant)
  """
  def get_statistics_by_player(client, player_id, params \\ %{}) do
    Client.get(client, "/football/statistics/seasons/players/#{player_id}", params)
  end

  def get_statistics_by_team(client, team_id, params \\ %{}) do
    Client.get(client, "/football/statistics/seasons/teams/#{team_id}", params)
  end

  def get_statistics_by_coach(client, coach_id, params \\ %{}) do
    Client.get(client, "/football/statistics/seasons/coaches/#{coach_id}", params)
  end

  def get_statistics_by_referee(client, referee_id, params \\ %{}) do
    Client.get(client, "/football/statistics/seasons/referees/#{referee_id}", params)
  end

  @doc """
  Gets a list of stage statistics

  ## Documentation

    Please see [Get stage statistics](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/statistics/get-stage-statistics-by-id)
  """
  def get_statistics_by_stage(client, stage_id, params \\ %{}) do
    Client.get(client, "/football/statistics/stages/#{stage_id}", params)
  end

  @doc """
  Gets a list of round statistics

  ## Documentation

    Please see [Get round statistics](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/statistics/get-round-statistics-by-id)
  """
  def get_statistics_by_round(client, round_id, params \\ %{}) do
    Client.get(client, "/football/statistics/rounds/#{round_id}", params)
  end
end
