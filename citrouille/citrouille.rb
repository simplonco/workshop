require './all'

boucle-infini do
  if distance-capteur-de-distance < 120 
    
    jouer-musique('hallowen.mp3')
    actionner-le-moteur

    boucle(100) do
      allumer-les-leds-en 'orange'
      pause 0.05
      eteindre-les-leds
      pause 0.05
    end

  end
end
