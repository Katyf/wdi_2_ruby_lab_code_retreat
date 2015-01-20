require_relative '../lib/conway'

describe Cell do
  let(:status) {:alive}
  let(:live_neighbors) {3}
  let(:x_position) { [0] }
  let(:y_position) { [0] }
  subject(:cell_1) { Cell.new(status, live_neighbors) }

  describe Cell do
    let(:status) {:alive}
    let(:live_neighbors) {3}
    let(:x_position) { [1] }
    let(:y_position) { [1] }
    subject(:cell_2) { Cell.new(status, live_neighbors) }
  end

  describe Cell do
    let(:status) {:alive}
    let(:live_neighbors) {3}
    let(:x_position) { [1] }
    let(:y_position) { [0] }
    subject(:cell_3) { Cell.new(status, live_neighbors) }
  end

  describe Cell do
    let(:status) {:alive}
    let(:live_neighbors) {3}
    let(:x_position) { [0] }
    let(:y_position) { [1] }
    subject(:cell_4) { Cell.new(status, live_neighbors) }
  end

  subject(:cell_1) { Cell.new(status, live_neighbors) }
  describe '#initialize' do
    it 'creates a cell' do
      expect(cell_1).to be_a Cell
    end
  end

  describe '#is_alive?' do
    it 'returns if the cell is alive' do
      expect(cell_1.is_alive?).to eq :alive
    end
  end

  describe '#kill_cell' do
    it 'kills the cell if neighbors > 3 or < 2' do
      expect(cell_1.kill_cell).to eq :dead
    end
  end

end
end
