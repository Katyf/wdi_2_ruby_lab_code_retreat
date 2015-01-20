require_relative '../lib/conway'

describe Cell do
  let(:status) {:alive}
  let(:x_pos) {[0]}
  let(:y_pos) {[0]}
#we need more cells
  subject(:cell_1) {Cell.new(status, x_pos, y_pos)}
  subject(:cell_2) {Cell.new(status, x_pos, y_pos)}
  subject(:cell_3) {Cell.new(status, x_pos, y_pos)}
  subject(:cell_4) {Cell.new(status, x_pos, y_pos)}


  describe "#initialize" do
    it "creates a new cell" do
      expect(cell_1).to be_a Cell
      expect(cell_2).to be_a Cell
      expect(cell_3).to be_a Cell
      expect(cell_4).to be_a Cell
    end
  end

  describe "#alive?" do
    it "returns if a cell is alive" do
      expect(cell_1).to eq :alive
    end
  end




end
