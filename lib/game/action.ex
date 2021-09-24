defmodule ExMon.Game.Action do
  alias ExMon.Game
  alias ExMon.Game.Attack
    def fetch_move(move) do
      Game.get_player()
      |> Map.get(:moves)
      |> find_move(move)
    end

    def find_move(moves, move) do
      Enum.find_value(moves, {:error_do_bruno, move}, fn {key, value} ->
        if value == move, do: {
          :ok_funcionou, key
        }
       end)
    end

    def attack(move) do
      Game.get_turn()
      |> Attack.attack_oponent(move)
    end
  end
