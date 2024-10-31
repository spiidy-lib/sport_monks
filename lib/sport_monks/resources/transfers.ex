defmodule SportMonks.Resources.Transfers do
  @moduledoc """
  Handles transfer-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of transfers.

  ## Documentation

    Please see [Get all transfers](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/transfers/get-all-transfers)
  """
  def get_transfers(client, params \\ %{}) do
    Client.get(client, "/football/transfers", params)
  end

  @doc """
  Gets a specific transfer by ID.

  ## Documentation

    Please see [Get transfer by ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/transfers/get-transfer-by-id)
  """
  def get_transfer_by_id(client, transfer_id, params \\ %{}) do
    Client.get(client, "/football/transfers/#{transfer_id}", params)
  end

  @doc """
  Gets a list of transfers which are latest.

  ## Documentation

    Please see [Get latest transfers](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/transfers/get-latest-transfers)
  """
  def get_transfers_by_latest(client, params \\ %{}) do
    Client.get(client, "/football/transfers/latest", params)
  end

  @doc """
  Get a list of transfers by date range.

  ## Documentation

    Please see [Get transfers by date range](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/transfers/get-transfers-between-date-range)
  """
  def get_transfers_by_date_range(client, start_date, end_date, params \\ %{}) do
    Client.get(client, "football/transfers/between/#{start_date}/#{end_date}", params)
  end

  @doc """
  Gets a list of transfers by team ID.

  ## Documentation

    Please see [Get transfers by team ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/transfers/get-transfers-by-team-id)
  """
  def get_transfers_by_team_id(client, team_id, params \\ %{}) do
    Client.get(client, "/football/transfers/teams/#{team_id}", params)
  end

  @doc """
  Gets a list of transfers by player ID.

  ## Documentation

    Please see [Get transfers by player ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/transfers/get-transfers-by-player-id)
  """
  def get_transfers_by_player_id(client, player_id, params \\ %{}) do
    Client.get(client, "/football/transfers/players/#{player_id}", params)
  end
end
