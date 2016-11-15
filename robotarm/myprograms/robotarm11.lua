require 'robot_arm' robot_arm.speed = 0.9
robot_arm:load_level('exercise 11')
for i=1, 15 do
  robot_arm:grab()
  if robot_arm:scan() == "red" then
    for i=1, 10 do
      robot_arm:move_right()
    end
    robot_arm:drop()
    for i=1, 7 do
      robot_arm:move_left()
    end
  else
    robot_arm:drop()
    robot_arm:move_right()
  end
end