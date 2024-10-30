defmodule Example do
  @moduledoc """
  Example usage of SportMonks client.
  """

  alias TableRex.Table

  @table_opts [
    horizontal_style: :header,
    vertical_style: :all
  ]

  def run do
    case SportMonks.new() do
      %Req.Request{} = client ->
        IO.puts("\n🏃 Running SportMonks API examples...\n")

        display_leagues(client)
        display_league_details(client)

        IO.puts("\n✅ Done!\n")

      error ->
        IO.puts("\n❌ Failed to initialize client: #{inspect(error)}\n")
    end
  end

  defp display_leagues(client) do
    IO.puts("📋 Fetching top leagues...")

    case SportMonks.get_leagues(client, %{search: "Premier League"}) do
      {:ok, response} ->
        leagues = response["data"]

        rows =
          Enum.map(leagues, fn league ->
            [
              league["id"],
              league["name"],
              league["country_id"],
              if(league["is_cup"], do: "Cup", else: "League")
            ]
          end)

        Table.new(rows, ["ID", "Name", "Country ID", "Type"])
        |> Table.render!(@table_opts)
        |> IO.puts()

      {:error, error} ->
        IO.puts("❌ Failed to fetch leagues: #{error.message}")
    end
  end

  defp display_league_details(client) do
    IO.puts("\n🏆 Fetching Premier League details...")

    # Get first league ID from the search results
    case SportMonks.get_leagues(client, %{search: "Premier League"}) do
      {:ok, response} ->
        case List.first(response["data"]) do
          %{"id" => league_id} ->
            case SportMonks.get_league_by_id(client, league_id, %{include: "country"}) do
              {:ok, details_response} ->
                league = details_response["data"]

                IO.puts("""
                League Details:
                --------------
                ID: #{league["id"]}
                Name: #{league["name"]}
                Country: #{league["country"]["name"]}
                """)

              {:error, error} ->
                IO.puts("❌ Failed to fetch league details: #{error.message}")
            end

          nil ->
            IO.puts("❌ No leagues found")
        end

      {:error, error} ->
        IO.puts("❌ Failed to fetch leagues: #{error.message}")
    end
  end
end

# Run the example
Example.run()
