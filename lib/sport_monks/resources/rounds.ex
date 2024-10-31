defmodule SportMonks.Resources.Rounds do
  @moduledoc """
  Handles round-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of rounds.

  ## Documentation

    Please see [Get all rounds](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/rounds/get-all-rounds)
  """
  def get_rounds(client, params \\ %{}) do
    Client.get(client, "/football/rounds", params)
  end

  @doc """
  Gets a specific round by ID.

  ## Documentation

    Please see [Get round by ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/rounds/get-round-by-id)
  """
  def get_round_by_id(client, round_id, params \\ %{}) do
    Client.get(client, "/football/rounds/#{round_id}", params)
  end

  @doc """
  Gets a list of rounds by season ID.

  ## Documentation

    Please see [Get rounds by season ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/rounds/get-rounds-by-season-id)
  """
  def get_rounds_by_season_id(client, season_id, params \\ %{}) do
    Client.get(client, "/football/rounds/seasons/#{season_id}", params)
  end

  @doc """
  Get a list of rounds by searching in name

  ## Documentation

    Please see [Get rounds by searching in name](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/rounds/get-rounds-by-search-by-name)
  """
  def get_rounds_by_name(client, name, params \\ %{}) do
    Client.get(client, "/football/rounds/search/#{name}", params)
  end
end
