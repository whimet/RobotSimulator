describe Robot, '#Turning' do

  table = Table.new(5, 5)

  it 'should turn left' do
    robot = Robot.new(table)
    robot.place(0, 0, :NORTH)
    robot.left
    expect(robot.report).to eq('0, 0, WEST')
  end

  it 'should turn right' do
    robot = Robot.new(table)
    robot.place(0, 0, :NORTH)
    robot.right
    expect(robot.report).to eq('0, 0, EAST')
  end

  it 'should not turn left if not placed yet' do
    robot = Robot.new(table)
    robot.left
    expect(robot.report).to eq('UNPLACED')
  end

  it 'should not turn right if not placed yet' do
    robot = Robot.new(table)
    robot.right
    expect(robot.report).to eq('UNPLACED')
  end
end