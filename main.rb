$:.push File.expand_path("../lib", __FILE__)
require 'robot_simulator'

puts 'Example input and output:'
%w(
  spec/fixtures/input1.txt
  spec/fixtures/input2.txt
  spec/fixtures/input3.txt
).each do |filename|
  robot = Robot.new(Table.new(5, 5))

  File.new(filename).each do |line|
    result = line.match /PLACE (\d),(\d),(\w+)/

    if result
      robot.place(result[1].to_i, result[2].to_i, result[3].to_sym)

    elsif line =~ /REPORT/
      puts "#{filename}: #{robot.report}"

    else
      robot.send line.strip.downcase.to_sym
    end
  end
end