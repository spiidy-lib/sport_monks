defmodule SportMonks.Resources.Commentaries do
  @moduledoc """
  Handles news-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of commentaries.

  ## Documentation

    Please see [Get commentaries](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/commentaries/get-all-commentaries)
  """
  def get_commentaries(client, params \\ %{}) do
    Client.get(client, "/football/commentaries", params)
  end

  @doc """
  Gets a list of commentaries by fixture ID.

  ## Documentation

    Please see [Get commentaries by fixture ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/commentaries/get-commentaries-by-fixture-id)
  """
  def get_commentaries_by_fixture_id(client, fixture_id, params \\ %{}) do
    Client.get(client, "/football/commentaries/fixtures/#{fixture_id}", params)
  end
end
