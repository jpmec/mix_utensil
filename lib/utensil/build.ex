defmodule MixUtensil.Utensil.Build do

  defmacro __using__(tool) do
    quote do
      use MixUtensil.Utensil

      @spec run(OptionParser.argv) :: :ok | :noop
      def run(args) do
        IO.puts 'hello from MixUtensil.Utensil.Build!'

        unquote(tool).run(args)

      end

    end
  end

end
