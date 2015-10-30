require './all'

boucle_infini do
  if distance_capteur_de_distance < 120 
    
    jouer_musique('hallowen.mp3')
    actionner_le_moteur

    boucle(100) do
      allumer_les_leds_en 'orange'
      pause 0.05
      eteindre_les_leds
      pause 0.05
    end

  end
end
