defmodule SportMonks.Resources.Odds do
  @moduledoc """
  Handles odds-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets odds (premium).

  ## Documentation

    Please see [Get all odds (premium)](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/premium-odds-feed/premium-pre-match-odds/get-all-premium-odds)
    Please see [Get all odds (premium) history](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/premium-odds-feed/premium-pre-match-odds/get-all-historical-odds)
  """
  def get_odds(client, history, params \\ %{}) do
    Client.get(client, "/football/odds/premium" <> if(history, do: "/history", else: ""), params)
  end

  @doc """
  Gets odds (premium) by fixture ID.

  ## Documentation

    Please see [Get odds (premium) by fixture ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/premium-odds-feed/premium-pre-match-odds/get-premium-odds-by-fixture-id)
  """
  def get_odds_by_fixture_id(client, fixture_id, params \\ %{}) do
    Client.get(client, "/football/odds/premium/fixtures/#{fixture_id}", params)
  end

  @doc """
  Gets odds (premium) by fixture ID and bookmaker ID.

  ## Documentation

    Please see [Get odds (premium) by fixture ID and bookmaker ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/premium-odds-feed/premium-pre-match-odds/get-premium-odds-by-fixture-id-and-bookmaker-id)
  """
  def get_odds_by_fixture_id_and_bookmaker_id(client, fixture_id, bookmaker_id, params \\ %{}) do
    Client.get(client, "/football/odds/premium/fixtures/#{fixture_id}/bookmakers/#{bookmaker_id}", params)
  end

  @doc """
  Gets odds (premium) by fixture ID and market ID.

  ## Documentation

    Please see [Get odds (premium) by fixture ID and market ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/premium-odds-feed/premium-pre-match-odds/get-premium-odds-by-fixture-id-and-market-id)
  """
  def get_odds_by_fixture_id_and_market_id(client, fixture_id, market_id, params \\ %{}) do
    Client.get(client, "/football/odds/premium/fixtures/#{fixture_id}/markets/#{market_id}", params)
  end

  @doc """
  Gets odds (premium) by time range (or history)

  ## Documentation

    Please see [Get odds (premium) by range](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/premium-odds-feed/premium-pre-match-odds/get-updated-premium-odds-between-time-range)
    Please see [Get odds (premium) history by range](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/premium-odds-feed/premium-pre-match-odds/get-updated-historical-odds-between-time-range)
  """
  def get_odds_by_time_range(client, start_time, end_time, history, params \\ %{}) do
    Client.get(
      client,
      "football/odds/premium" <> if(history, do: "/history", else: "") <> "/updated/between/#{start_time}/#{end_time}",
      params
    )
  end

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
