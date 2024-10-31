defmodule SportMonks.Resources.Expected do
  @moduledoc """
  Handles expected(xG)-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets expected(xG) values by team.

  ## Documentation

    Please see [Get expected by team](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/expected-xg/get-expected-by-team)
  """
  def get_expected_by_team(client, params \\ %{}) do
    Client.get(client, "/football/expected/fixtures", params)
  end

  @doc """
  Gets expected(xG) values by player.

  ## Documentation

    Please see [Get expected by player](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/expected-xg/get-expected-by-player)
  """
  def get_expected_by_player(client, params \\ %{}) do
    Client.get(client, "/football/expected/lineups", params)
  end
end
