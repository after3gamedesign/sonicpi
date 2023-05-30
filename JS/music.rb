# Buffer 1
use_bpm 128
live_loop :voice1 do
  sample :ambi_drone
  sleep 1
end
live_loop :voice2 do
  sample :ambi_dark_woosh
  sleep 0.5
end
live_loop :voice3 do
  play 49, sustain: 1, release: 10
  sleep 10
end
# Buffer 2 & 3
use_bpm 240
live_loop :fastdrums do
  drumarr = [:drum_roll, :drum_heavy_kick, :drum_heavy_kick, :drum_snare_hard]
  drumarr.each do |d|
    sample d
    sleep 1
  end
end

use_bpm 120
arr = [61, 64, 66, 68, 71]
live_loop :melody do
  arr_r = arr[rand(arr.length)]
  play arr_r
  sleep 1
end
