defmodule SportMonks.Resources.Odds do
  @moduledoc """
  Handles odds-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets odds before match.

  ## Documentation

    Please see [Get all pre-match odds](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/standard-odds-feed/pre-match-odds/get-all-odds)
  """
  def get_odds_pre_match(client, params \\ %{}) do
    Client.get(client, "/football/odds/pre-match", params)
  end

  @doc """
  Gets odds before match by fixture ID.

  ## Documentation

    Please see [Get pre-match odds by fixture ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/standard-odds-feed/pre-match-odds/get-odds-by-fixture-id)
  """
  def get_odds_pre_match_by_fixture_id(client, fixture_id, params \\ %{}) do
    Client.get(client, "/football/odds/pre-match/fixtures/#{fixture_id}", params)
  end

  @doc """
  Gets odds before match by fixture ID and bookmaker ID.

  ## Documentation

    Please see [Get pre-match odds by fixture ID and bookmaker ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/standard-odds-feed/pre-match-odds/get-odds-by-fixture-id-and-bookmaker-id)
  """
  def get_odds_pre_match_by_fixture_id_and_bookmaker_id(client, fixture_id, bookmaker_id, params \\ %{}) do
    Client.get(client, "/football/odds/pre-match/fixtures/#{fixture_id}/bookmakers/#{bookmaker_id}", params)
  end

  @doc """
  Gets odds before match by fixture ID and market ID.

  ## Documentation

    Please see [Get pre-match odds by fixture ID and market ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/standard-odds-feed/pre-match-odds/get-odds-by-fixture-id-and-market-id)
  """
  def get_odds_pre_match_by_fixture_id_and_market_id(client, fixture_id, market_id, params \\ %{}) do
    Client.get(client, "/football/odds/pre-match/fixtures/#{fixture_id}/markets/#{market_id}", params)
  end

  @doc """
  Gets odds before match which are latest.

  ## Documentation

    Please see [Get latest pre-match odds](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/standard-odds-feed/pre-match-odds/get-last-updated-odds)
  """
  def get_odds_pre_match_by_latest(client, params \\ %{}) do
    Client.get(client, "/football/odds/pre-match/latest", params)
  end

  @doc """
  Gets odds in-play.

  ## Documentation

    Please see [Get all odds in-play](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/standard-odds-feed/inplay-odds/get-all-inplay-odds)
  """
  def get_odds_in_play(client, params \\ %{}) do
    Client.get(client, "/football/odds/inplay", params)
  end

  @doc """
  Gets odds in-play by fixture ID.

  ## Documentation

    Please see [Get odds in-play by fixture ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/standard-odds-feed/inplay-odds/get-inplay-odds-by-fixture-id)
  """
  def get_odds_in_play_by_fixture_id(client, fixture_id, params \\ %{}) do
    Client.get(client, "/football/odds/inplay/fixtures/#{fixture_id}", params)
  end

  @doc """
  Gets odds in-play by fixture ID and bookmaker ID.

  ## Documentation

    Please see [Get odds in-play by fixture ID and bookmaker ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/standard-odds-feed/inplay-odds/get-inplay-odds-by-fixture-id-and-bookmaker-id)
  """
  def get_odds_in_play_by_fixture_id_and_bookmaker_id(client, fixture_id, bookmaker_id, params \\ %{}) do
    Client.get(client, "/football/odds/inplay/fixtures/#{fixture_id}/bookmakers/#{bookmaker_id}", params)
  end

  @doc """
  Gets odds in-play by fixture ID and market ID.

  ## Documentation

    Please see [Get odds in-play by fixture ID and market ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/standard-odds-feed/inplay-odds/get-inplay-odds-by-fixture-id-and-market-id)
  """
  def get_odds_in_play_by_fixture_id_and_market_id(client, fixture_id, market_id, params \\ %{}) do
    Client.get(client, "/football/odds/inplay/fixtures/#{fixture_id}/markets/#{market_id}", params)
  end

  @doc """
  Gets odds in-play which are latest.

  ## Documentation

    Please see [Get latest odds in-play](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/standard-odds-feed/inplay-odds/get-last-updated-inplay-odds)
  """
  def get_odds_in_play_by_latest(client, params \\ %{}) do
    Client.get(client, "/football/odds/inplay/latest", params)
  end
end
