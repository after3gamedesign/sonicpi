use_bpm 120

live_loop :r do
  use_synth :chipbass
  play rand(54...62)
  sleep (1)
end

live_loop :d do
  use_synth :piano
  play rand(32...49)
  sleep (2)
end

live_loop :e do
  use_synth :cnoise
  play rand(21...53)
  sleep (3)
end

use_bpm 230
live_loop :g do
  sample :drum_cymbal_hard
  play 42
  sleep 2
end

live_loop :h do
  sample :drum_roll
  play rand(1...2)
  sleep 2
end
