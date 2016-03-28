defmodule Mix.Utensil.Build do

  defmacro __using__([exec_utensil, env_utensil]) do
    quote do
      use Mix.Utensil

      def use(args) do
        {exec, args} = unquote(exec_utensil).use(args)
        env = unquote(env_utensil).use()

        if System.find_executable(exec) do
          build(exec, args, env)
        else
          {:error, unquote(exec_utensil).no_exec_error_message(exec)}
        end
      end


      def build(exec, args, env) do
        clean!("priv")

        {result, error_code} = System.cmd(exec, args, env: env, stderr_to_stdout: true)

        if error_code != 0 do
          {:error, unquote(exec_utensil).build_error_message(exec)}
        else
          {:ok, result}
        end
      end


      def clean!(path) do
        File.rm_rf!(path)
        File.mkdir(path)
      end

    end
  end


  def default_exec_utensil do
    case :os.type do
      {:win32, _} ->
        Mix.Utensil.Build.Nmake
      {:unix, :freebsd} ->
        Mix.Utensil.Build.Gmake
      {:unix, :openbsd} ->
        Mix.Utensil.Build.Gmake
      _ ->
        Mix.Utensil.Build.Make
    end
  end

end
