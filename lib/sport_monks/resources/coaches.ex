defmodule SportMonks.Resources.Coaches do
  @moduledoc """
  Handles coach-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of coaches.

  ## Documentation

    Please see [Get all coaches](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/coaches/get-all-coaches)
  """
  def get_coaches(client, params \\ %{}) do
    Client.get(client, "/football/coaches", params)
  end

  @doc """
  Gets a specific coach by ID.

  ## Documentation

    Please see [Get coach by ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/coaches/get-coach-by-id)
  """
  def get_coach_by_id(client, coach_id, params \\ %{}) do
    Client.get(client, "/football/coaches/#{coach_id}", params)
  end

  @doc """
  Gets a list of coaches by country ID.

  ## Documentation

    Please see [Get coaches by country ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/coaches/get-coaches-by-country-id)
  """
  def get_coaches_by_country_id(client, country_id, params \\ %{}) do
    Client.get(client, "/football/coaches/countries/#{country_id}", params)
  end

  @doc """
  Get a list of coaches by searching in name

  ## Documentation

    Please see [Get coaches by searching in name](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/coaches/get-coaches-search-by-name)
  """
  def get_coaches_by_name(client, name, params \\ %{}) do
    Client.get(client, "/football/coaches/search/#{name}", params)
  end

  @doc """
  Gets a list of coaches which are latest.

  ## Documentation

    Please see [Get latest coaches](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/coaches/get-last-updated-coaches)
  """
  def get_coaches_by_latest(client, params \\ %{}) do
    Client.get(client, "/football/coaches/latest", params)
  end
end
