defmodule SportMonks.MixProject do
  use Mix.Project

  @version "0.1.0"
  @source_url "https://github.com/spiidy-dev/spiidy-lib/sport_monks"

  def project do
    [
      app: :sport_monks,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      docs: docs(),
      source_url: @source_url
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:req, "~> 0.5.7"},
      {:jason, "~> 1.4.4"},
      {:ex_doc, "~> 0.34.2", only: :dev, runtime: false}
    ]
  end

  defp description do
    """
    Elixir client for the SportMonks API(v3).
    """
  end

  defp package do
    [
      name: :sport_monks,
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
    ]
  end

  defp docs do
    [
      main: "readme",
      source_url: @source_url,
      source_ref: "v#{@version}",
      extras: ["README.md"]
    ]
  end
end
