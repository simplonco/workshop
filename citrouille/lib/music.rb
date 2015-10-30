class Music
  def self.play(file)
    `mplayer ../#{file} </dev/null >/dev/null 2>&1 &`
    nil
  end
end
