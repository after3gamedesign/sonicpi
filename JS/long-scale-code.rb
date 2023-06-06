use_bpm 240

drumarr=[:drum_roll, :drum_heavy_kick, :drum_heavy_kick, :drum_snare_hard]

live_loop :cymbal do
  sample :drum_cymbal_closed
  sleep 0.5
end
live_loop :dwumerr do
  drumarr.each do |h|
    sample h
    sleep 0.25
  end
end
live_loop :hi do
  i = 57
  while i < 127 do
    play i
    sleep 0.25
    i+=1
  end
  sleep 0.25
  i = 57
end
