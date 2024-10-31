defmodule SportMonks.Resources.Rivals do
  @moduledoc """
  Handles rival-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of rivals.

  ## Documentation

    Please see [Get all rivals](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/rivals/get-all-rivals)
  """
  def get_rivals(client, params \\ %{}) do
    Client.get(client, "/football/rivals", params)
  end

  @doc """
  Gets a list of rivals by team ID.

  ## Documentation

    Please see [Get rivals by team ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/rivals/get-rivals-by-team-id)
  """
  def get_rivals_by_team_id(client, team_id, params \\ %{}) do
    Client.get(client, "/football/rivals/teams/#{team_id}", params)
  end
end
