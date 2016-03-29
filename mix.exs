defmodule UseElixirThrift.Mixfile do
  use Mix.Project

  def project do
    [app: :use_elixir_thrift,
     version: "0.0.1",
     elixir: "~> 1.2",
     thrift_files: Mix.Utils.extract_files(["thrift"], [:thrift]),
     build_embedded: Mix.env == :prod,
     rmanent: Mix.env == :prod,
     compiler: [:thrift | Mix.compilers],
     deps: deps]
  end


  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:mix_test_watch, "~> 0.2", only: [:dev, :test]},
      {:riffed, github: "pinterest/riffed", tag: "1.0.0", submodules: true}
    ]
  end
end
