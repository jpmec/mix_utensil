defmodule UtensilBuildTest do
  use ExUnit.Case
  doctest Mix.Utensil.Build


  defmodule SampleBuildUtensil do
    use Mix.Utensil.Build, [Mix.Utensil.Build.default_exec_utensil(), Mix.Utensil.Build.Env]
  end


  test "default_exec_utensil" do
    result = Mix.Utensil.Build.default_exec_utensil

    IO.puts "#{result}"
  end

end
