defmodule Mix.Utensil.Build.Gmake do
  use Mix.Utensil

  def use(args) do
    {"gmake", args}
  end


  def no_exec_error_message(exec) do
    """
    Could not find the program `#{exec}`.
    """
  end


  def build_error_message do
    """
    Error building.
    """
  end

end
