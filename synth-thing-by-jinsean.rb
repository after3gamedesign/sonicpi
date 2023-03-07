live_loop :synt do
  use_synth :saw
  sample :drum_heavy_kick, rate: 1
  sample :drum_cymbal_closed, rate: 1
  sleep 0.25
  sample :drum_snare_hard
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_snare_hard
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_snare_soft
  sample :drum_tom_hi_hard
  sleep 0.25
  sample :drum_roll
  sample :drum_cymbal_closed
  sleep 0.25
  
end
