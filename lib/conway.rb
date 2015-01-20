class Cell
  def initialize(status, live_neighbors, x_position, y_position)
    @status = status
    @live_neighbors = live_neighbors
    @x_position = x_position
    @y_position = y_position
  end

  def x_position
    x = []
    y = []

  end

  def is_alive?
    if @live_neighbors == 3
      @status = :alive
    end
  end

  def kill_cell
    if @live_neighbors < 2 || @live_neighbors > 3
      cell.status = :dead
    else
      cell.status = :dead
    end
  end

end
