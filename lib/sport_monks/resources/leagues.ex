defmodule SportMonks.Resources.Leagues do
  @moduledoc """
  Handles league-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of leagues.

  ## Documentation

    Please see [Get all leagues](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/leagues/get-all-leagues)
  """
  def get_leagues(client, params \\ %{}) do
    Client.get(client, "/football/leagues", params)
  end

  @doc """
  Gets a specific league by ID.

  ## Documentation

    Please see [Get league by ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/leagues/get-league-by-id)
  """
  def get_league_by_id(client, league_id, params \\ %{}) do
    Client.get(client, "/football/leagues/#{league_id}", params)
  end

  @doc """
  Gets a list of leagues which are live.

  ## Documentation

    Please see [Get leagues by live](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/leagues/get-leagues-by-live)
  """
  def get_leagues_by_live(client, params \\ %{}) do
    Client.get(client, "/football/leagues/live", params)
  end

  @doc """
  Get a list of leagues by fixture date.

  ## Documentation

    Please see [Get leagues by fixture date](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/leagues/get-leagues-by-fixture-date)
  """
  def get_leagues_by_date(client, date, params \\ %{}) do
    Client.get(client, "/football/leagues/date/#{date}", params)
  end

  @doc """
  Gets a list of leagues by country ID.

  ## Documentation

    Please see [Get leagues by country ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/leagues/get-leagues-by-country-id)
  """
  def get_leagues_by_country_id(client, country_id, params \\ %{}) do
    Client.get(client, "/football/leagues/countries/#{country_id}", params)
  end

  @doc """
  Get a list of leagues by searching in name

  ## Documentation

    Please see [Get leagues by searching in name](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/leagues/get-leagues-search-by-name)
  """
  def get_leagues_by_name(client, name, params \\ %{}) do
    Client.get(client, "/football/leagues/search/#{name}", params)
  end

  @doc """
  Gets a list of leagues by team ID (current and historical).

  ## Documentation

    Please see [Get all leagues by team ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/leagues/get-all-leagues-by-team-id)
    Please see [Get leagues by team ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/leagues/get-current-leagues-by-team-id)

  """
  def get_leagues_by_team_id(client, team_id, current, params \\ %{}) do
    Client.get(client, "/football/leagues/teams/#{team_id}" <> if(current, do: "/current", else: ""), params)
  end
end
