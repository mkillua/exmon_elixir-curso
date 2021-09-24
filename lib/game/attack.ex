defmodule ExMon.Game.Attack do
  alias ExMon.Game

  def attack_oponent(:player, move) do
    attack(:player, "computer", move);
  end
  def attack_oponent(:computer, move) do
    attack(:computer, "player", move);
  end

  defp attack(attacker, received, move) do

  end
end
