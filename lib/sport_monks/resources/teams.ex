defmodule SportMonks.Resources.Teams do
  @moduledoc """
  Handles team-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of teams.

  ## Documentation

    Please see [Get all teams](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/teams/get-all-teams)
  """
  def get_teams(client, params \\ %{}) do
    Client.get(client, "/football/teams", params)
  end

  @doc """
  Gets a specific team by ID.

  ## Documentation

    Please see [Get team by ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/teams/get-team-by-id)
  """
  def get_team_by_id(client, team_id, params \\ %{}) do
    Client.get(client, "/football/teams/#{team_id}", params)
  end

  @doc """
  Gets a list of teams by country ID.

  ## Documentation

    Please see [Get teams by country ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/teams/get-teams-by-country-id)
  """
  def get_teams_by_country_id(client, country_id, params \\ %{}) do
    Client.get(client, "/football/teams/countries/#{country_id}", params)
  end

  @doc """
  Gets a list of teams by season ID.

  ## Documentation

    Please see [Get teams by season ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/teams/get-teams-by-season-id)
  """
  def get_teams_by_season_id(client, season_id, params \\ %{}) do
    Client.get(client, "/football/teams/seasons/#{season_id}", params)
  end

  @doc """
  Get a list of teams by searching in name

  ## Documentation

    Please see [Get teams by searching in name](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/teams/get-teams-by-search-by-name)
  """
  def get_teams_by_name(client, name, params \\ %{}) do
    Client.get(client, "/football/teams/search/#{name}", params)
  end
end
