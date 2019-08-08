require 'player'
describe Player do
  subject(:charmander) { Player.new('Charmander') }
  subject(:squirtle) { Player.new('Squirtle') }
  describe '#name' do
    it 'returns the name' do
      expect(charmander.name).to eq 'Charmander'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(charmander.hp).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(squirtle).to receive(:receive_damage)
      charmander.attack(squirtle)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { charmander.receive_damage }.to change { charmander.hp }.by(-10)
    end
  end
end