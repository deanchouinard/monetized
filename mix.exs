defmodule Monetized.Mixfile do
  use Mix.Project

  def project do
    [app: :monetized,
     name: "Monetized",
     #source_url: "https://github.com/theocodes/monetized",
     source_url: "https://github.com/deanchouinard/monetized",
     version: "0.5.0",
     #version: "0.4.0",
     #elixir: "~> 1.1",
     elixir: "~> 1.3",
     description: description,
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [
      applications: [
        :logger,
        :decimal,
        :ecto,
      ]
    ]
  end

  defp deps do
    [
      #{:ex_doc,  "~> 0.11.5", only: :dev},
      {:ex_doc,  "~> 0.14.0", only: :dev},
      #{:earmark, "~> 0.2.1",  only: :dev},
      {:earmark, "~> 1.0.0",  only: :dev},
      {:inch_ex, "~> 0.5.1",  only: :docs},
      #{:decimal, "~> 1.1.2"},
      {:decimal, "~> 1.2"},
      #{:ecto,    "~> 1.1.7"},
      {:ecto,    "~> 2.0"},
      {:benchfella, "~> 0.3.2", only: :bench},
    ]
  end

  defp package do
    [
      maintainers: ["Theo Felippe"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/theocodes/monetized",
              "Docs" => "http://hexdocs.pm/monetized"}
    ]
  end

  defp description do
    """

    A lightweight solution for handling and storing money.

    """
  end

end
