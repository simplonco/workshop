class Ultrasonic
  def self.distance
     `sudo python lib/ultrasonic.py`.to_i
  end

  def self.watch
    loop do
      yield self.distance
    end
  end
end
