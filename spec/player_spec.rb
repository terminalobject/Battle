require 'player'

describe Player do
  let(:player) { described_class.new("Lily") }
  let(:player2) { described_class.new("Dexter") }

  it 'returns a name' do
    expect(player.player_name).to eq("Lily")
  end

  describe "reduce hp" do
    it "reduces hp of a player" do
      player.reduce_hp
      expect(player.health).to eq 90
    end
  end

  describe "health" do
    it "returns the health of a player" do
      expect(player.health).to eq described_class::MAX_HP
    end
  end

  describe "dead?" do
    it "returns true if health drops to 0" do
      10.times {player.reduce_hp}
      expect(player).to be_dead
    end
  end
end
