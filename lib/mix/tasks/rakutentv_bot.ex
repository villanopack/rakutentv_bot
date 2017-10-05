defmodule Mix.Tasks.RakutentvBot do
  use Mix.Task

  @shortdoc "Runs your RakutentvBot Telegram Bot"

  def run(args), do: Mix.Task.run "run", run_args ++ args

  defp run_args, do: if iex_running?(), do: [], else: ["--no-halt"]
  defp iex_running?, do: Code.ensure_loaded?(IEx) and IEx.started?
end
