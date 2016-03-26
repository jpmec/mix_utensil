defmodule Mix.Utensil do
  @moduledoc """

  A module for creating reuable tasks.

  """

  @callback use([any]) :: any

  defmacro __using__(_opts) do
    quote do
      @behaviour Mix.Utensil
    end
  end

end
