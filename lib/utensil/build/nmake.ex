defmodule Mix.Utensil.Build.Nmake do
  use Mix.Utensil

  def use(args) do
    {"nmake", ["/F", "Makefile.win"] ++ args}
  end


  def no_exec_error_message(exec) do
    """
    Could not find the program `#{exec}`.
    """
  end


  def build_error_message do
    """
    Install a recent version of Visual Studio.
    """
  end


end
