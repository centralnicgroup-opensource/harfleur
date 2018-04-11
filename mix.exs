defmodule Harfleur.Mixfile do
  use Mix.Project

  def project do
    [app: :harfleur,
     version: "0.1.0",
     elixir: "~> 1.5",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: package(),
     description: "A Plug that adds variable length strategy for encryption over https",
     source_url: "https://github.com/iwantmyname/harfleur"
   ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:plug, :logger]]
  end

  defp deps do
    [ {:plug, "~> 1.5"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  def package do
    %{
      maintainers: ["'Ley Missailidis", "Dave Cottlehuber"],
      licenses: ["MIT"],
      links: %{
        "GitHub": "https://github.com/iwantmyname/harfleur"
      }
    }
  end

end
