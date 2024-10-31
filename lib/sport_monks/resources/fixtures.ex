defmodule SportMonks.Resources.Fixtures do
  @moduledoc """
  Handles fixture-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of fixtures.

  ## Documentation

    Please see [Get all fixtures](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/fixtures/get-all-fixtures)
  """
  def get_fixtures(client, params \\ %{}) do
    Client.get(client, "/football/fixtures", params)
  end

  @doc """
  Gets a specific fixture by ID.

  ## Documentation

    Please see [Get fixture by ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/fixtures/get-fixture-by-id)
  """
  def get_fixture_by_id(client, fixture_id, params \\ %{}) do
    Client.get(client, "/football/fixtures/#{fixture_id}", params)
  end

  @doc """
  Gets a list fixtures by IDs.

  ## Documentation

    Please see [Get fixtures by IDs](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/fixtures/get-fixtures-by-multiple-ids)
  """
  def get_fixtures_by_ids(client, fixture_ids, params \\ %{}) do
    Client.get(client, "/football/fixtures/multi/#{fixture_ids |> Enum.join(",")}", params)
  end

  @doc """
  Get a list of fixtures by date.

  ## Documentation

    Please see [Get fixtures by date](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/fixtures/get-fixtures-by-date)
  """
  def get_fixtures_by_date(client, date, params \\ %{}) do
    Client.get(client, "/football/fixtures/date/#{date}", params)
  end

  @doc """
  Get a list of fixtures by date range.

  ## Documentation

    Please see [Get fixtures by date range](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/fixtures/get-fixtures-by-date-range)
  """
  def get_fixtures_by_range(client, start_date, end_date, params \\ %{}) do
    Client.get(client, "football/fixtures/between/#{start_date}/#{end_date}", params)
  end

  @doc """
  Get a list of fixtures by date range for a team ID.

  ## Documentation

    Please see [Get fixtures by date range for team](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/fixtures/get-fixtures-by-date-range-for-team)
  """
  def get_fixtures_by_range_for_team_id(client, start_date, end_date, team_id, params \\ %{}) do
    Client.get(client, "football/fixtures/between/#{start_date}/#{end_date}/#{team_id}", params)
  end

  @doc """
  Get a list of head to head fixtures for two team IDs.

  ## Documentation

    Please see [Get fixtures by head to head](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/fixtures/get-fixtures-by-head-to-head)
  """
  def get_fixtures_by_head_to_head(client, team_id_1, team_id_2, params \\ %{}) do
    Client.get(client, "football/fixtures/head-to-head/#{team_id_1}/#{team_id_2}", params)
  end

  @doc """
  Get a list of fixtures by searching in name

  ## Documentation

    Please see [Get fixtures by searching in name](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/fixtures/get-fixtures-by-search-by-name)
  """
  def get_fixtures_by_name(client, name, params \\ %{}) do
    Client.get(client, "/football/fixtures/search/#{name}", params)
  end

  @doc """
  Gets a list of fixtures by market ID.

  ## Documentation

    Please see [Get fixtures by market ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/fixtures/get-upcoming-fixtures-by-market-id)
  """
  def get_fixtures_by_market_id(client, market_id, params \\ %{}) do
    Client.get(client, "/football/fixtures/upcoming/markets/#{market_id}  ", params)
  end

  @doc """
  Gets a list of fixtures by tv-station ID.

  ## Documentation

    Please see [Get fixtures by upcoming tv-station ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/fixtures/get-upcoming-fixtures-by-tv-station-id)
    Please see [Get fixtures by past tv-station ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/fixtures/get-past-fixtures-by-tv-station-id)
  """
  def get_fixtures_by_tv_station_id(client, tv_station_id, past, params \\ %{}) do
    Client.get(client, "/football/fixtures/" <> if(past, do: "past", else: "upcoming") <> "/tv-stations/#{tv_station_id}  ", params)
  end

  @doc """
  Gets a list of fixtures which are latest.

  ## Documentation

    Please see [Get latest updated fixtures](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/fixtures/get-latest-updated-fixtures)
  """
  def get_fixtures_by_latest(client, params \\ %{}) do
    Client.get(client, "/football/fixtures/latest", params)
  end
end
