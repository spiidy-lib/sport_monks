defmodule SportMonks.Resources.Markets do
  @moduledoc """
  Handles market-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of markets.

  ## Documentation

    Please see [Get all markets](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/markets/get-all-markets)
  """
  def get_markets(client, premium, params \\ %{}) do
    Client.get(client, "/odds/markets" <> if(premium, do: "/premium", else: ""), params)
  end

  @doc """
  Gets a specific market by ID.

  ## Documentation

    Please see [Get market by ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/markets/get-market-by-id)
  """
  def get_market_by_id(client, market_id, params \\ %{}) do
    Client.get(client, "/odds/markets/#{market_id}", params)
  end

  @doc """
  Get a list of markets by searching in name

  ## Documentation

    Please see [Get markets by searching in name](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/markets/get-market-by-search)
  """
  def get_markets_by_name(client, name, params \\ %{}) do
    Client.get(client, "/odds/markets/search/#{name}", params)
  end
end
