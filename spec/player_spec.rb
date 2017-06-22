require 'player'

describe Player do
  let(:player) { described_class.new("Lily") }

  it 'returns a name' do
    expect(player.player_name).to eq("Lily")
  end
end
