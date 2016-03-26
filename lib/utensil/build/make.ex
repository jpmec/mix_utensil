defmodule Mix.Utensil.Build.Make do
  use Mix.Utensil


  def use(args) do
    {"make", args}
  end


  def no_exec_error_message(exec) do
    """
    Could not find the program `#{exec}`.
    """
  end


  def build_error_message do
    """
    Please follow the directions below for the operating system you are
    using:

    Mac OS X: You need to have gcc and make installed. Try running the
    commands `gcc --version` and / or `make --version`. If these programs
    are not installed, you will be prompted to install them.

    Linux: You need to have gcc and make installed. If you are using
    Ubuntu or any other Debian-based system, install the packages
    `build-essential`. Also install `erlang-dev` package if not
    included in your Erlang/OTP version.

    """
  end


end
