defmodule SportMonks.Resources.Referees do
  @moduledoc """
  Handles referee-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of referees.

  ## Documentation

    Please see [Get all referees](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/referees/get-all-referees)
  """
  def get_referees(client, params \\ %{}) do
    Client.get(client, "/football/referees", params)
  end

  @doc """
  Gets a specific referee by ID.

  ## Documentation

    Please see [Get referee by ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/referees/get-referee-by-id)
  """
  def get_referee_by_id(client, referee_id, params \\ %{}) do
    Client.get(client, "/football/referees/#{referee_id}", params)
  end

  @doc """
  Gets a list of referees by country ID.

  ## Documentation

    Please see [Get referees by country ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/referees/get-referees-by-country-id)
  """
  def get_referees_by_country_id(client, country_id, params \\ %{}) do
    Client.get(client, "/football/referees/countries/#{country_id}", params)
  end

  @doc """
  Gets a list of referees by season ID.

  ## Documentation

    Please see [Get referees by season ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/referees/get-referees-by-season-id)
  """
  def get_referees_by_season_id(client, season_id, params \\ %{}) do
    Client.get(client, "/football/referees/seasons/#{season_id}", params)
  end

  @doc """
  Get a list of referees by searching in name

  ## Documentation

    Please see [Get referees by searching in name](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/referees/get-referees-search-by-name)
  """
  def get_referees_by_name(client, name, params \\ %{}) do
    Client.get(client, "/football/referees/search/#{name}", params)
  end
end
