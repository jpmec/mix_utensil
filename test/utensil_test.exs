defmodule UtensilTest do
  use ExUnit.Case
  doctest Mix.Utensil

  defmodule SampleUtensil do
    use Mix.Utensil

    def use(_) do
      IO.puts "hi"
      true
    end

  end

  test "use" do
    assert SampleUtensil.use(nil)
  end

end
