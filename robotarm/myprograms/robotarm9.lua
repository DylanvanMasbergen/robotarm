require 'robot_arm' 
robot_arm:load_level('exercise 10')
robot_arm.speed = 0.9
for i =1, 12 do
robot_arm:grab()
robot_arm:scan()
if robot_arm:scan() == "green" then
for i =1, 9 do
  robot_arm:move_right()
end
elseif robot_arm:scan() == "blue" then
for i =1, 4 do
  robot_arm:move_right()
end
elseif robot_arm:scan() == "white" then
for i =1, 5 do
  robot_arm:move_right()
end
elseif robot_arm:scan() == "red" then
for i =1, 3 do
  robot_arm:move_right()
end
else
robot_arm:move_left()
end
robot_arm:drop()
robot_arm:move_left()
end