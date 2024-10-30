defmodule SportMonks.Resources.Livescores do
  @moduledoc """
  Handles livescore-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of livescores which are inplay.

  ## Documentation

    Please see [Get inplay livescores](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/livescores/get-inplay-livescores)
  """
  def get_livescores_by_inplay(client, params \\ %{}) do
    Client.get(client, "/football/livescores/inplay", params)
  end

  @doc """
  Gets a list of livescores.

  ## Documentation

    Please see [Get all livescores](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/livescores/get-all-livescores)
  """
  def get_livescores(client, params \\ %{}) do
    Client.get(client, "/football/livescores", params)
  end

  @doc """
  Gets a list of livescores which are latest.

  ## Documentation

    Please see [Get latest updated livescores](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/livescores/get-latest-updated-livescores)
  """
  def get_livescores_by_latest(client, params \\ %{}) do
    Client.get(client, "/football/livescores/latest", params)
  end
end
