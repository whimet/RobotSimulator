describe Robot, '#Movement' do

  table = Table.new(5, 5)

  [
      [0, 0, :NORTH, '0, 1, NORTH'],
      [0, 1, :SOUTH, '0, 0, SOUTH'],
      [1, 0, :WEST, '0, 0, WEST'],
      [0, 0, :EAST, '1, 0, EAST']
  ].each do |x, y, facing, result|

    it "to next position when facing #{facing}" do
      robot = Robot.new(table)
      robot.place(x, y, facing)
      robot.move
      expect(robot.report).to eq(result)
    end
  end

  [
      [5, 5, :NORTH, '5, 5, NORTH'],
      [0, 0, :SOUTH, '0, 0, SOUTH'],
      [0, 0, :WEST, '0, 0, WEST'],
      [5, 5, :EAST, '5, 5, EAST']
  ].each do |x, y, facing, result|

      it "falling off movement should be ignored when facing #{facing}" do
      robot = Robot.new(table)
      robot.place(x, y, facing)
      robot.move
      expect(robot.report).to eq(result)
    end
  end

  it 'should ignore movement if not placed yet' do
    robot = Robot.new(table)
    robot.move
    expect(robot.report).to eq('UNPLACED')
  end
end