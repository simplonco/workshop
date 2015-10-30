require './music'
require './led'
require './motor'
require './ultrasonic'

def afficher(message)
  puts message
end

def distance_capteur_de_distance
  Ultrasonic.distance
end

def actioner_le_moteur
  Motor.start
end

def jouer_musique(nom)
  Music.play(nom)
end

def allumer_les_leds_en(couleur)
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

def eteindre_les_leds
   Led.clear
end

def pause(temps)
   sleep temps
end

def boucle_infini
  loop do
    yield
  end
end

def boucle
  nombre.times do
    yield
  end
end
