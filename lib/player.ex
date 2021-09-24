defmodule ExMon.Player do
  @moduledoc """
  This module is a struct to create a player.
  """
required_keys =  [:life, :name,:moves]
@max_life  100 #constant | variavel de modulo

@enforce_keys required_keys
defstruct required_keys

def build(name, rnd, avg, health) do
  %ExMon.Player {
    name: name,
    moves: %{
    move_rnd: rnd,
    move_avg: avg,
    move_health: health,
    },
    life: @max_life
  }

end
end
