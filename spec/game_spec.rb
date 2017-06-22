require 'game'

describe Game do
  let(:player) { double :player }
  let(:player2) { double :player }
  describe "attack" do
    it "attacks another player" do
      expect(player2).to receive(:take_hit)
      subject.attack(player2)
    end
  end


end
