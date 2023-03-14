use_bpm 176

def bad_chord
  play :G3
  play :B3
  play :D4
  play :F4
end
live_loop :hi do
  sample :drum_bass_soft, amp: 2
  sleep 0.5
end
live_loop :liveloop2 do
  sample :drum_cymbal_closed, amp: 0.45
  sleep 0.25
end
live_loop :main_thing do
  play chord(:D4, :minor7), amp: 3 if one_in(6)
  bad_chord()
  play (48..100), amp: 3 if one_in(1)
  sleep 0.5
end
