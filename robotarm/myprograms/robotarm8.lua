require 'robot_arm'
robot_arm:load_level('exercise 9')
robot_arm.speed=0.98
for i=1,28 do 
if robot_arm:scan() == nil then
  robot_arm:move_left()
  robot_arm:grab()
 else for i=1,5 do 
 robot_arm:move_right()
end
robot_arm:drop()
 for i=1,3 do 
   robot_arm:move_left()
   end
end
end