defmodule MixUtensil.Utensil do
  defmacro __using__(_) do
    quote do
      use Mix.Task
    end
  end
end
