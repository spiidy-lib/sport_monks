defmodule SportMonks.Resources.Squads do
  @moduledoc """
  Handles squad-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of squads/extended by team ID.

  ## Documentation

    Please see [Get squads by team ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/team-squads/get-team-squad-by-team-id)
    Please see [Get squads extended by team ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/team-squads/get-extended-team-squad-by-team-id)
  """
  def get_squad_by_team_id(client, team_id, extended, params \\ %{}) do
    Client.get(client, "/football/squads/teams/#{team_id}" <> if(extended, do: "/extended", else: ""), params)
  end

  @doc """
  Gets a list of squads by season ID and team ID.

  ## Documentation

    Please see [Get squads by season ID and team ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/team-squads/get-team-squad-by-team-and-season-id)
  """
  def get_squad_by_season_id_and_team_id(client, season_id, team_id, params \\ %{}) do
    Client.get(client, "/football/squads/seasons/#{season_id}/teams/#{team_id}", params)
  end
end
