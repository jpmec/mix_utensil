defmodule Mix.Utensil.Build.Env do
  use Mix.Utensil

  def use(_) do
    System.get_env()
  end

end
