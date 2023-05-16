#attack decay release sustain
use_bpm 120

live_loop :a do
  a = rand(3...5)
  d = rand(2...5)
  s = rand(1...2)
  r = rand(3)
  sl = rand(1...3)
  use_synth :beep
  play rand(60...80), attack: a, decay: d, sustain: s, release: r
  sleep sl
end
