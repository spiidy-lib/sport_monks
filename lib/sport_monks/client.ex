defmodule SportMonks.Client do
  @moduledoc false

  alias SportMonks.Error

  @base_url "https://api.sportmonks.com/v3"
  @user_agent "SportMonks/#{Mix.Project.config()[:version]}"

  @type t :: Req.Request.t()

  @spec new(String.t()) :: t()
  def new(api_token) do
    Req.new(
      base_url: @base_url,
      headers: [
        {"authorization", api_token},
        {"user-agent", @user_agent}
      ]
    )
  end

  @spec get(t(), String.t(), map()) :: {:ok, map()} | {:error, Error.t()}
  def get(client, path, params \\ %{}) do
    case Req.get(client, url: path, params: params) do
      {:ok, %{status: status, body: body}} when status in 200..299 ->
        {:ok, body}

      {:ok, %{status: status, body: body}} ->
        {:error, Error.new(:api_error, "API error: #{status}", body)}

      {:error, exception} ->
        {:error, Error.new(:network_error, Exception.message(exception))}
    end
  end
end
