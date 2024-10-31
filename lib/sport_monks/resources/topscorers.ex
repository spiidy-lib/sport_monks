defmodule SportMonks.Resources.Topscorers do
  @moduledoc """
  Handles standing-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of topscorers by season ID.

  ## Documentation

    Please see [Get topscorers by season ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/topscorers/get-topscorers-by-season-id)
  """
  def get_topscorers_by_season_id(client, season_id, params \\ %{}) do
    Client.get(client, "/football/topscorers/seasons/#{season_id}", params)
  end

  @doc """
  Gets a list of topscorers by stage ID.

  ## Documentation

    Please see [Get topscorers by stage ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/topscorers/get-topscorers-by-stage-id)
  """
  def get_topscorers_by_stage_id(client, stage_id, params \\ %{}) do
    Client.get(client, "/football/topscorers/stges/#{stage_id}", params)
  end
end
