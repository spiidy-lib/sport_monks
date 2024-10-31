defmodule SportMonks.Resources.TVStations do
  @moduledoc """
  Handles tv-station-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of tv-stations.

  ## Documentation

    Please see [Get all tv-stations](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/tv-stations/get-all-tv-stations)
  """
  def get_tv_stations(client, params \\ %{}) do
    Client.get(client, "/football/tv-stations", params)
  end

  @doc """
  Gets a specific tv-station by ID.

  ## Documentation

    Please see [Get tv-station by ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/tv-stations/get-tv-station-by-id)
  """
  def get_tv_station_by_id(client, tv_station_id, params \\ %{}) do
    Client.get(client, "/football/tv-stations/#{tv_station_id}", params)
  end

  @doc """
  Gets a list of tv-stations by fixture ID.

  ## Documentation

    Please see [Get tv-stations by fixture ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/tv-stations/get-tv-stations-by-fixture-id)
  """
  def get_tv_stations_by_fixture_id(client, fixture_id, params \\ %{}) do
    Client.get(client, "/football/tv-stations/fixtures/#{fixture_id}", params)
  end
end
