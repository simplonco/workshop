require './music'
require './led'
require './motor'
require './ultrasonic'

loop do
  distance = Ultrasonic.distance
  puts distance

  if distance < 120 
    Music.play('hallowen.mp3') 
    Motor.start
    150.times do
      Led.orange()
      sleep 0.05
      Led.clear
      sleep 0.05
    end
    Led.clear
  end
end
