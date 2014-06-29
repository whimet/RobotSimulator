describe Robot, '#Placement' do

  table = Table.new(5, 5)

  it 'should be placed at specified position' do
    robot = Robot.new(table)
    robot.place(0, 0, :NORTH)
    expect(robot.report).to eq('0, 0, NORTH')
  end

  describe 'Out of range' do
    it 'when initializing' do
      robot = Robot.new(table)
      robot.place(5, 6, :NORTH)
      expect(robot.report).to eq('UNPLACED')
    end

    it 'when the second placement' do
      robot = Robot.new(table)
      robot.place(0, 0, :NORTH)
      robot.place(5, 6, :NORTH)
      expect(robot.report).to eq('0, 0, NORTH')
    end
  end

  describe 'Invalid placement' do
    it 'when initializing' do
      robot = Robot.new(table)
      robot.place(-1, -1, :NORTH)
      expect(robot.report).to eq('UNPLACED')
    end

    it 'when the seconds time' do
      robot = Robot.new(table)
      robot.place(0, 0, :NORTH)
      robot.place(-1, -1, :NORTH)
      expect(robot.report).to eq('0, 0, NORTH')
    end
  end

  it 'should allow replacement' do
    robot = Robot.new(table)
    robot.place(0, 0, :NORTH)
    robot.place(5, 5, :SOUTH)
    expect(robot.report).to eq('5, 5, SOUTH')
  end
end