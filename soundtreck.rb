live_loop :a do
  use_bpm rand(60...65)
  sample :ambi_choir, amp: 0.1
  sleep 0.16
end

array = [60,61,62,63,64,65,66,67,68]
live_loop :b do
  use_bpm rand(60...65)
  s = rand(1)
  use_synth :dark_ambience
  play array.tick, amp: 1.1
  sleep s
end

live_loop :c do
  use_bpm rand(60...65)
  use_synth :beep
  p = rand(60...67)
  play p, amp: 0.6
  sleep 0.5
end

live_loop :d do
  use_bpm rand(60...65)
  sample :drum_cymbal_hard, attack: 3
  sleep 1
end

live_loop :e do
  use_bpm rand(60...65)
  use_synth :prophet
  play rand(50...57), amp: 0.4
  sleep rand(1)
end

live_loop :f do
  use_bpm rand(60...65)
  use_synth :blade
  play rand(79...86), amp: 0.5
  play rand(59...66),amp: 0.6
  play rand(89...96),amp: 0.45
  play rand(69...76),amp: 0.55
  sleep 1
end

live_loop :g do
  use_bpm rand(60...65)
  sample :drum_cowbell, amp: 0.4
  sleep 1
end

live_loop :h do
  use_bpm rand(60...65)
  20.times do
    use_bpm rand(60...65)
    sample :drum_cowbell, amp: 0.4
    sleep 1
  end
  3.times do
    sample :drum_cowbell, amp: 0.45
    sleep 0.2
  end
end

#break up all good

live_loop :i do
  use_bpm rand(60...65)
  sample :ambi_lunar_land,amp: 0.5
  sleep 1
end

live_loop :j do
  use_bpm rand(60...65)
  sample :elec_chime, amp: 0.45
  sleep 1
end

live_loop :k do
  use_bpm rand(60...65)
  sample :ambi_dark_woosh, amp: 0.55
  sleep 0.16
end

live_loop :l do
  use_bpm rand(60...65)
  sample :bass_thick_c,amp: 0.6
  sleep 0.75
end
