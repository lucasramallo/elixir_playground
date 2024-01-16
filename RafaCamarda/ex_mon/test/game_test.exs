defmodule ExMon.GameTest do
  use ExUnit.Case

  alias ExMon.{Game, Player}

  describe "start/2" do
    test "starts the game state" do
      player = Player.build("Lucas", :soco, :chute, :cura)
      bot = Player.build("bot", :soco, :chute, :cura)

      assert {:ok, _id} = Game.start(bot, player)
    end
  end

  describe "info/0" do
    test "returns the current game state" do
      player = Player.build("Lucas", :soco, :chute, :cura)
      bot = Player.build("bot", :soco, :chute, :cura)
      Game.start(bot, player)

      expected_response = %{
        bot: %ExMon.Player{
          life: 100,
          moves: %{
            move_avg: :chute,
            move_rnd: :soco,
            movie_heal: :cura
          },
          name: "bot"
        },
        player: %ExMon.Player{
          life: 100,
          moves: %{
            move_avg: :chute,
            move_rnd: :soco,
            movie_heal: :cura
          },
          name: "Lucas"
        },
        status: :started,
        turn: :player
      }

      assert Game.info() == expected_response
    end
  end

  describe "update/1" do
    test "returns the game state updated" do
      player = Player.build("Lucas", :soco, :chute, :cura)
      bot = Player.build("bot", :soco, :chute, :cura)
      Game.start(bot, player)

      expected_response = %{
        bot: %ExMon.Player{
          life: 100,
          moves: %{
            move_avg: :chute,
            move_rnd: :soco,
            movie_heal: :cura
          },
          name: "bot"
        },
        player: %ExMon.Player{
          life: 100,
          moves: %{
            move_avg: :chute,
            move_rnd: :soco,
            movie_heal: :cura
          },
          name: "Lucas"
        },
        status: :started,
        turn: :player
      }

      assert Game.info() == expected_response

      new_state = %{
        bot: %ExMon.Player{
          life: 87,
          moves: %{
            move_avg: :chute,
            move_rnd: :soco,
            movie_heal: :cura
          },
          name: "bot"
        },
        player: %ExMon.Player{
          life: 76,
          moves: %{
            move_avg: :chute,
            move_rnd: :soco,
            movie_heal: :cura
          },
          name: "Lucas"
        },
        status: :started,
        turn: :player
      }

      Game.update(new_state)

      expected_response = %{new_state | turn: :bot, status: :continue}

      assert Game.info() == expected_response
    end
  end
end
