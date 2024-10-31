defmodule SportMonks.Resources.Schedules do
  @moduledoc """
  Handles schedule-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of schedules by season ID.

  ## Documentation

    Please see [Get schedules by season ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/schedules/get-schedules-by-season-id)
  """
  def get_schedules_by_season_id(client, season_id, params \\ %{}) do
    Client.get(client, "/football/schedules/seasons/#{season_id}", params)
  end

  @doc """
  Gets a list of schedules by team ID.

  ## Documentation

    Please see [Get schedules by team ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/schedules/get-schedules-by-team-id)
  """
  def get_schedules_by_team_id(client, team_id, params \\ %{}) do
    Client.get(client, "/football/schedules/teams/#{team_id}", params)
  end

  @doc """
  Gets a list of schedules by season ID and team IDs.

  ## Documentation

    Please see [Get schedules by season ID and team ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/schedules/get-schedules-by-season-id-and-team-id)
  """
  def get_schedules_by_season_id_and_team_id(client, season_id, team_id, params \\ %{}) do
    Client.get(client, "/football/schedules/seasons/#{season_id}/teams/#{team_id}", params)
  end
end
