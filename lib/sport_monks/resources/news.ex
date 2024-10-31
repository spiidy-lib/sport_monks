defmodule SportMonks.Resources.News do
  @moduledoc """
  Handles news-related API endpoints.
  """

  alias SportMonks.Client

  @doc """
  Gets a list of news before match.

  ## Documentation

    Please see [Get pre-match news](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/news/get-pre-match-news)
  """
  def get_news_pre_match(client, params \\ %{}) do
    Client.get(client, "/football/news/pre-match", params)
  end

  @doc """
  Gets a list of news before match by season ID.

  ## Documentation

    Please see [Get pre-match news by season ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/news/get-pre-match-news-by-season-id)
  """
  def get_news_pre_match_by_season_id(client, season_id, params \\ %{}) do
    Client.get(client, "/football/news/pre-match/seasons/#{season_id}", params)
  end

  @doc """
  Gets a list of news before match by upcoming fixture.

  ## Documentation

    Please see [Get pre-match news for upcoming fixture](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/news/get-pre-match-news-for-upcoming-fixtures)
  """
  def get_news_pre_match_by_upcoming_fixture(client, params \\ %{}) do
    Client.get(client, "/football/news/pre-match/upcoming", params)
  end

  @doc """
  Gets a list of news after match.

  ## Documentation

    Please see [Get post-match news](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/news/get-post-match-news)
  """
  def get_news_post_match(client, params \\ %{}) do
    Client.get(client, "/football/news/post-match", params)
  end

  @doc """
  Gets a list of news after match by season ID.

  ## Documentation

    Please see [Get post-match news by season ID](https://docs.sportmonks.com/football/endpoints-and-entities/endpoints/news/get-post-match-news-by-season-id)
  """
  def get_news_post_match_by_season_id(client, season_id, params \\ %{}) do
    Client.get(client, "/football/news/post-match/seasons/#{season_id}", params)
  end
end
