defmodule SportMonks.Resources.Venues do
  @moduledoc """
  Handles venue-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of venues.

  ## Documentation

    Please see [Get all venues](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/venues/get-all-venues)
  """
  def get_venues(client, params \\ %{}) do
    Client.get(client, "/football/venues", params)
  end

  @doc """
  Gets a specific venue by ID.

  ## Documentation

    Please see [Get venue by ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/venues/get-venues-by-search-by-name)
  """
  def get_venue_by_id(client, venue_id, params \\ %{}) do
    Client.get(client, "/football/venues/#{venue_id}", params)
  end

  @doc """
  Gets a list of venues by season ID.

  ## Documentation

    Please see [Get venues by season ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/venues/get-venues-by-season-id)
  """
  def get_venues_by_season_id(client, season_id, params \\ %{}) do
    Client.get(client, "/football/venues/seasons/#{season_id}", params)
  end

  @doc """
  Get a list of venues by searching in name

  ## Documentation

    Please see [Get venues by searching in name](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/venues/get-venues-by-search-by-name)
  """
  def get_venues_by_name(client, name, params \\ %{}) do
    Client.get(client, "/football/venues/search/#{name}", params)
  end
end
