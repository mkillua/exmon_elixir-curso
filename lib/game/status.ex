defmodule ExMon.Game.Status do
alias ExMon.Game
  def print_round_message() do
    IO.puts("The game has been started")
    Game.info()
  end

  def print_wrong_move_message(move) do
    IO.puts("Move #{move} not found")
  end

  def print_success_move_message(move) do
    IO.puts("Move #{move} has been applied")
  end
end
