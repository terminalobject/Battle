require 'player'

describe Player do
  let(:player) { described_class.new("Lily") }
  let(:player2) { described_class.new("Dexter") }
  it 'returns a name' do
    expect(player.player_name).to eq("Lily")
  end
  describe "take_hit" do
    it "takes a hit" do
      player.take_hit
      expect(player.health).to eq 90
    end
  end
  describe "attack" do
    it "attacks another player" do
      player.attack(player2)
      expect(player2.health).to eq 90
    end
  end
  describe ":health" do
    it "returns the health of a player" do
      expect(player.health).to eq described_class::DEFAULT_HP
    end
  end
end
