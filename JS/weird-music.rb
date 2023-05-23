# Buffer 1
use_bpm 170
def bad_chord
  play :G3
  play :B3
  play :D4
  play :F4
end

live_loop :metronome_drum do
  n = 1 or 2
  if n = 1
    sample :drum_bass_hard, amp: 3
    sleep 0.5
    if n = 2
      sample :drum_bass_hard, amp: 6
      sleep 0.5
    end
  end
end
live_loop :drum_roll do
  sample :drum_roll, amp: 3 if one_in(8)
  sleep 0.5
end


def hi_hat
  r = 1 or 2
  if r = 1
    sample :drum_cymbal_closed, amp: 2
    sleep 0.25
    if r = 2
      sample :drum_cymbal_closed, amp: 4 if one_in(4)
      sleep 0.25
    end
  end
end

def piano_chords
  play chord(:D4, :minor7), amp: 3 if one_in(6)
  bad_chord()
  play (48..100), amp: 3 if one_in(1)
  sleep 0.5
end

live_loop :everything do
  hi_hat()
  
end
live_loop :everything1 do
  piano_chords()
end
# Buffer 2
d = sample_duration :loop_amen_full
sl = 16
live_loop :firstslice do
  sample :loop_amen_full, amp: 0.125, slice: 8, num_slices: sl/2
  sleep d/sl
end
# Buffer 4
castle = 'C:\Users\student\Downloads\overture.ogg'
load_sample castle
d = sample_duration castle

sl=32
live_loop :castlevania do
  sample castle, slice: 16, num_slices: sl/2
  sleep d/sl
end
# Buffer 5
use_bpm 150
use_synth :piano
arp=[73, 76, 80]
arp2=[72, 75, 79]
pent=[73, 75, 77, 80, 82]




live_loop :arp do
  arp.each do |n|
    play n
    sleep 1
  end
end
live_loop :arp2 do
  arp2.each do |h|
    play h
    sleep 1
  end
end

pentc=[73, 76, 78, 80, 83]
arp=[72, 75, 79]
arp2=[73, 77, 80]

live_loop :arp do
  arp_r = arp[rand(arp.length)]
  play arp_r
  sleep 1
end
live_loop :arp2 do
  arp2_r = arp2[rand(arp2.length)]
  play arp2_r
  sleep 1
end
live_loop :pentc_random do
  pentc_r = pentc[rand(pentc.length)]
  play pentc_r
  sleep 1
end
sleep 0.5
live_loop :pent do
  pent.each do |p|
    play p
    sleep 1
  end
end
# Buffer 7
use_bpm 100
live_loop :hi do
  a = rand(2)
  d = rand(3)
  s = rand(1)
  r = rand(2)
  sl = rand(1)
  use_synth :beep
  r = rand(1...2)
  if r = 1
    play :D4, attack: a, decay: d, sustain: s, release: r
    sleep sl
  end
  if r = 2
    play :Cb4, attack: a, decay: d, sustain: s, release: r
    sleep sl
  end
end
# Buffer 8
##| Beautiul scales :)
live_loop :cscale do; tick
  play (scale :c, :major).look
  sleep 0.5
end
sleep 0.08333333333333333333
live_loop :dscale do; tick
  play (scale :d, :major).look
  sleep 0.5
end
sleep 0.08333333333333333333
live_loop :escale do; tick
  play (scale :e, :major).look
  sleep 0.5
end
sleep 0.08333333333333333333
live_loop :fscale do; tick
  play (scale :f, :major).look
  sleep 0.5
end
sleep 0.08333333333333333333
live_loop :gscale do; tick
  play (scale :g, :major).look
  sleep 0.5
end
sleep 0.08333333333333333333
live_loop :ascale do; tick
  play (scale :a, :major).look
  sleep 0.5
end
sleep 0.08333333333333333333
live_loop :bscale do; tick
  play (scale :b, :major).look
  sleep 0.5
end
