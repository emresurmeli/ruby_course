def play_music
  pid = fork{ exec 'afplay', './20 Hotline Bling.mp3' }
end
