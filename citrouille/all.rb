require './music'
require './led'
require './motor'
require './ultrasonic'

def afficher(message)
  puts message
end

def distance-capteur-de-distance
  Ultrasonic.distance
end

def actioner-le-moteur
  Motor.start
end

def jouer-musique(nom)
  Music.play(nom)
end

def allumer-les-leds-en(couleur)
  case couleur
    when 'blue'
      Led.blue
    when 'orange'
      Led.orange
    when 'vert'
      Led.green
    when 'jaune'
      Led.yellow
    when 'rouge'
      Led.rouge
    when 'rose'
      Led.pink
    when 'blanc'
      Led.white
    else
      nil
  end
end

def eteindre-les-leds
   Led.clear
end

def pause(temps)
   sleep temps
end

def boucle-infini
  loop do
    yield
  end
end

def boucle
  nombre.times do
    yield
  end
end
