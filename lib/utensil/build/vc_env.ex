defmodule Mix.Utensil.Build.VcEnv do
  use Mix.Utensil

  def use(_) do
    Exvc.vc_env()
  end

end
