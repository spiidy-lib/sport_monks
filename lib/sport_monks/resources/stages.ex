defmodule SportMonks.Resources.Stages do
  @moduledoc """
  Handles stage-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of stages.

  ## Documentation

    Please see [Get all stages](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/stages/get-all-stages)
  """
  def get_stages(client, params \\ %{}) do
    Client.get(client, "/football/stages", params)
  end

  @doc """
  Gets a specific stage by ID.

  ## Documentation

    Please see [Get stage by ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/stages/get-stage-by-id)
  """
  def get_stage_by_id(client, stage_id, params \\ %{}) do
    Client.get(client, "/football/stages/#{stage_id}", params)
  end

  @doc """
  Gets a list of stages by season ID.

  ## Documentation

    Please see [Get stages by season ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/stages/get-stages-by-season-id)
  """
  def get_stages_by_season_id(client, season_id, params \\ %{}) do
    Client.get(client, "/football/stages/seasons/#{season_id}", params)
  end

  @doc """
  Get a list of stages by searching in name

  ## Documentation

    Please see [Get stages by searching in name](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/stages/get-stages-by-search-by-name)
  """
  def get_stages_by_name(client, name, params \\ %{}) do
    Client.get(client, "/football/stages/search/#{name}", params)
  end
end
