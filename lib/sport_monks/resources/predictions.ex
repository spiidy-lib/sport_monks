defmodule SportMonks.Resources.Predictions do
  @moduledoc """
  Handles prediction-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets probabilities.

  ## Documentation

    Please see [Get probabilities](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/predictions/get-probabilities)
  """
  def get_probabilities(client, params \\ %{}) do
    Client.get(client, "/football/predictions/probabilities", params)
  end

  @doc """
  Gets predictability by league ID.

  ## Documentation

    Please see [Get predictability by league ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/predictions/get-predictability-by-league-id)
  """
  def get_predictability_by_league_id(client, league_id, params \\ %{}) do
    Client.get(client, "/football/predictions/predictability/leagues/#{league_id}", params)
  end

  @doc """
  Gets probabilities by fixture ID.

  ## Documentation

    Please see [Get probabilities by fixture ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/predictions/get-probabilities-by-fixture-id)
  """
  def get_probabilities_by_fixture_id(client, fixture_id, params \\ %{}) do
    Client.get(client, "/football/predictions/probabilities/fixtures/#{fixture_id}", params)
  end

  @doc """
  Gets value bets.

  ## Documentation

    Please see [Get value bets](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/predictions/get-value-bets)
  """
  def get_value_bets(client, params \\ %{}) do
    Client.get(client, "/football/predictions/value-bets", params)
  end

  @doc """
  Gets value bets by fixture ID.

  ## Documentation

    Please see [Get value bets by fixture ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/predictions/get-value-bets-by-fixture-id)
  """
  def get_value_bets_by_fixture_id(client, fixture_id, params \\ %{}) do
    Client.get(client, "/football/predictions/value-bets/fixtures/#{fixture_id}", params)
  end
end
