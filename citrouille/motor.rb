class Motor 
  def self.start
    `sudo python lib/servo.py </dev/null >/dev/null 2>&1 &`
  end
end
