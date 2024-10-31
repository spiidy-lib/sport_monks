defmodule SportMonks.Resources.Players do
  @moduledoc """
  Handles player-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of players.

  ## Documentation

    Please see [Get all players](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/players/get-all-players)
  """
  def get_players(client, params \\ %{}) do
    Client.get(client, "/football/players", params)
  end

  @doc """
  Gets a specific player by ID.

  ## Documentation

    Please see [Get player by ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/players/get-player-by-id)
  """
  def get_player_by_id(client, player_id, params \\ %{}) do
    Client.get(client, "/football/players/#{player_id}", params)
  end

  @doc """
  Gets a list of players by country ID.

  ## Documentation

    Please see [Get players by country ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/players/get-players-by-country-id)
  """
  def get_players_by_country_id(client, country_id, params \\ %{}) do
    Client.get(client, "/football/players/countries/#{country_id}", params)
  end

  @doc """
  Get a list of players by searching in name

  ## Documentation

    Please see [Get players by searching in name](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/players/get-players-by-search-by-name)
  """
  def get_players_by_name(client, name, params \\ %{}) do
    Client.get(client, "/football/players/search/#{name}", params)
  end

  @doc """
  Gets a list of players which are latest.

  ## Documentation

    Please see [Get latest updated players](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/players/get-last-updated-players)
  """
  def get_players_by_latest(client, params \\ %{}) do
    Client.get(client, "/football/players/latest", params)
  end
end

end
