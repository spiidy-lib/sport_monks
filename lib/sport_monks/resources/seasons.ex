defmodule SportMonks.Resources.Seasons do
  @moduledoc """
  Handles season-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of seasons.

  ## Documentation

    Please see [Get all seasons](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/seasons/get-all-seasons)
  """
  def get_seasons(client, params \\ %{}) do
    Client.get(client, "/football/seasons", params)
  end

  @doc """
  Gets a specific season by ID.

  ## Documentation

    Please see [Get season by ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/seasons/get-seasons-by-id)
  """
  def get_season_by_id(client, season_id, params \\ %{}) do
    Client.get(client, "/football/seasons/#{season_id}", params)
  end

  @doc """
  Gets a list of seasons by team ID.

  ## Documentation

    Please see [Get seasons by team ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/seasons/get-seasons-by-team-id)
  """
  def get_seasons_by_team_id(client, team_id, params \\ %{}) do
    Client.get(client, "/football/seasons/teams/#{team_id}", params)
  end

  @doc """
  Get a list of seasons by searching in name

  ## Documentation

    Please see [Get seasons by searching in name](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/seasons/get-seasons-by-search-by-name)
  """
  def get_seasons_by_name(client, name, params \\ %{}) do
    Client.get(client, "/football/seasons/search/#{name}", params)
  end
end
