
module Led
  attr_reader :color

  def self.clear()
    system 'lib/led 0 0 0'
    @color = 'blank'
  end

  def self.blue()
    clear
    system 'lib/led 0 0 255'
    @color = 'blue'
  end

  def self.red()
    clear
    system 'lib/led 255 0 0'
    @color = 'red'
  end

  def self.green()
    clear
    system 'lib/led 0 255 0'
    @color = 'green'
  end

  def self.orange()
    clear
    system 'lib/led 255 44 0'
    @color = 'orange'
  end

  def self.yellow()
    clear
    system 'lib/led 255 255 0'
    @color = 'yellow'
  end

  def self.pink()
    clear
    system 'lib/led 255 0 255'
    @color = 'pink'
  end

  def self.white()
    clear
    system 'lib/led 255 255 255'
    @color = 'white'
  end

  def self.set(red, green, blue)
    clear
    system "lib/led #{red} #{green} #{blue}"
    @color = "rgb(#{red},#{green},#{blue})" 
  end
end

Led.clear()
