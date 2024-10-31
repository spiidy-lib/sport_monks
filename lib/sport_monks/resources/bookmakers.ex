defmodule SportMonks.Resources.Bookmakers do
  @moduledoc """
  Handles bookmaker-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of bookmakers.

  ## Documentation

    Please see [Get all bookmakers](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/bookmakers/get-all-bookmakers)
  """
  def get_bookmakers(client, premium, params \\ %{}) do
    Client.get(client, "/odds/bookmakers" <> if(premium, do: "/premium", else: ""), params)
  end

  @doc """
  Gets a specific bookmaker by ID.

  ## Documentation

    Please see [Get bookmaker by ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/bookmakers/get-bookmaker-by-id)
  """
  def get_bookmaker_by_id(client, bookmaker_id, params \\ %{}) do
    Client.get(client, "/odds/bookmakers/#{bookmaker_id}", params)
  end

  @doc """
  Get a list of bookmakers by searching in name

  ## Documentation

    Please see [Get bookmakers by searching in name](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/bookmakers/get-bookmaker-by-search)
  """
  def get_bookmakers_by_name(client, name, params \\ %{}) do
    Client.get(client, "/odds/bookmakers/search/#{name}", params)
  end

  @doc """
  Gets a list of bookmakers by fixture ID.

  ## Documentation

    Please see [Get bookmakers by fixture ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/bookmakers/get-bookmaker-by-fixture-id)
  """
  def get_bookmakers_by_fixture_id(client, fixture_id, params \\ %{}) do
    Client.get(client, "/odds/bookmakers/fixtures/#{fixture_id}", params)
  end
end
