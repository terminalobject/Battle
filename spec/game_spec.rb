require 'game'
require 'player'

describe Game do
  let(:player1) { double :player }
  let(:player2) { double :player }
  subject(:game) { described_class.new(player1, player2, true) }

  it { is_expected.to respond_to(:turn) }

  describe '#player_1' do
    it 'gets player 1' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player_2' do
    it 'gets player 2' do
      expect(game.player2).to eq player2
    end
  end

  describe "attack" do
    it "attacks another player" do
      expect(player2).to receive(:reduce_hp)
      game.attack
    end
  end

  describe "switch_turn" do
    it "switches turns" do
      game.switch_turn
      expect(game.turn).to eq false
    end
  end
 end
