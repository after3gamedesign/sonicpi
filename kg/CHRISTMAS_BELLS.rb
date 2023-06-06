use_bpm 99
array = [52,76,93,44,75,82,41]

live_loop :bpm do
  use_synth :piano
  play array.tick
  sleep 1
end

live_loop :ar do
  use_synth :chiplead
  sample :ambi_choir
  play array.tick
  sleep 1
end

live_loop :a do
  use_synth :bass_foundation
  sample :ambi_dark_woosh
  play array.tick
  sleep 1
end

live_loop :arr do
  use_synth :pretty_bell
  sample :ambi_dark_woosh
  play array.tick
  sleep 0.5
end
