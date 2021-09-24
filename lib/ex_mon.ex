defmodule ExMon do
  @moduledoc """
  This module create a player to ex mon game.
  """
  @moduledoc since: "1.0.0"
  alias ExMon.{Game,Player, Game.Status, Game.Action}
  @computer_player_name  "Tiririca"


  def create_player(name, move_avg, move_rnd, move_health) do
    Player.build(name, move_rnd, move_avg, move_health)
  end

  def start_game(player) do
    create_player(@computer_player_name, :punch, :kick, :health)
    |>
    Game.start(player)
    Status.print_round_message()
  end

  def make_move(move) do
    Action.fetch_move(move)
    |> do_move()
  end

  defp do_move({:error, move}), do: Status.print_wrong_move_message(move)
  defp do_move({:ok, move}) do
    case move do
      :move_health -> "curou"
      move -> Action.attack(move)
    end
  end


end
