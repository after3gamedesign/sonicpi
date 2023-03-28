#buffer 0
use_bpm 128

d = [:drum_bass_hard, :drum_bass_soft, :drum_cymbal_closed, :drum_heavy_kick]
dr = rand(d.length())
sd = d[dr]
s=rand(dr)

def drumz(sd,l,s)
  live_loop l do
    sample sd
    sleep s
  end
end

drumz(d[1],:a, 0.6)
drumz(d[2],:b, 0.5)
drumz(d[3],:c, 0.4)


#buffer 1
##| s= :loop_amen
##| a= :loop_tabla
##| m= :loop_breakbeat
##| sl= 16
##| d= sample_duration s

##| live_loop :slice1 do
##|   sample s, slice: rand(16), num_slices: sl/2
##|   sleep d/sl + 0.15
##| end

##| live_loop :slice2 do
##|   sample a, slice: rand(16), num_slices: sl/2
##|   sleep d/sl + 0.15
##| end

##| live_loop :slice3 do
##|   sample m, slice: rand(16), num_slices: sl/2
##|   sleep d/sl + 0.15
##| end


def slice(a,b,c)
  live_loop a do
    sl=16
    d=sample_duration b
    sample b, slice: rand(c), num_slices: sl/2
    sleep d/sl + 0.15
  end
end

slice(:slice1,:loop_amen,16)
slice(:slice2,:loop_tabla,16)
slice(:slice3,:loop_breakbeat,16)

#buffer 2

##| def ll(m)
##|   live_loop :adjsl do
##|     play rand(60...m)
##|     sleep 1
##|   end
##| end

##| ll(70)

##| def oo(s, n)
##|   live_loop :alkjfds do
##|     play rand(55...n)
##|     sleep s
##|   end
##| end

##| oo(rand(1), 65)

def pp(q,w,e,r)
  live_loop q do
    use_synth r
    play w
    sleep e
  end
end

pp(:a, 65, 0.4, :dark_ambience)
pp(:b, 67, 0.5, :pulse)
pp(:c, 63, 0.6, :pluck)



#buffer 3
live_loop :drums do
  sample :drum_bass_soft
  sleep 0.5
end

live_loop :cymbals do
  sample :drum_cymbal_hard
  sleep 0.5
end

live_loop :cowbell do
  sample :drum_cowbell, beat_stretch: 2
  sleep 1
end

live_loop :bd_zum do
  sample :bd_zum
  sleep 1
end

live_loop :deeeeep do
  sample :bass_thick_c
  sleep 0.75
end

def rr(a,b,c)
  live_loop a do
    sample b
    sleep c
  end
end

rr(:drums,:drum_bass_soft,0.5)
rr(:cymbals,:drum_cymbal_hard,0.5)
rr(:bd_zum,:bd_zum,1)
rr(:deep,:bass_thick_c,0.75)


#buffer 4
array = [67,68,69,70,71,72,73,74,75,76,75,74,73,72,71,70,69,68]
live_loop :choir do
  sample :ambi_choir
  sleep 4
end

live_loop :chime do
  sample :elec_chime
  sleep 0.5
end

live_loop :guitar do
  sample :guit_e_fifths
  sleep 0.5
end

live_loop :scales do
  use_synth :piano
  play array.tick
  sleep 0.5
end

live_loop :trill do
  r=rand(1...10)
  use_synth :pluck
  play :A4, slide: r
  sleep 0.16
  l=rand(1...10)
  play :B4, slide: l
  sleep 0.16
end

live_loop :integer do
  n = rand(60...71)
  use_synth :kalimba
  play n
  sleep 0.5
end


#buffer 5
array = [67,68,69,70,71,72,73,74,75,76,75,74,73,72,71,70,69,68]



live_loop :choir do
  sample :ambi_choir
  sleep 4
end

live_loop :drums do
  sample :drum_bass_soft, amp: 1.5
  sleep 0.5
end

live_loop :cymbals do
  sample :drum_cymbal_hard
  sleep 0.5
end

live_loop :chime do
  sample :elec_chime, amp: 1
  sleep 0.5
end

live_loop :guitar do
  sample :guit_e_fifths, amp: 1
  sleep 0.5
end

live_loop :cowbell do
  sample :drum_cowbell
  sleep 1
end

live_loop :scales do
  use_synth :piano
  play array.tick, amp: 1
  sleep 0.5
end

live_loop :bd_zum do
  sample :bd_zum, amp: 1.5
  sleep 1
end

live_loop :trill do
  use_synth :pluck
  play :A4, amp: 1.6
  sleep 0.16
  play :B4, amp: 1.6
  sleep 0.16
end

live_loop :bd_zum do
  sample :bd_zum, amp: 1.5
  sleep 1
end

live_loop :deeeeeeeeeeeeeeeeeeeeeeeeeeeeeep do
  sample :bass_thick_c, amp: 1.2
  sleep 0.3
end

live_loop :integer do
  n = rand(60...71)
  use_synth :kalimba
  play n
  sleep 0.5
end

#buffer 6
  sd = d[dr]
  
  sample sd
  sleep 0.45
end

use_bpm 128

d = [:drum_bass_hard, :drum_bass_soft, :drum_cymbal_closed, :drum_heavy_kick]
dr = rand(d.length())
sd = d[dr]
s=rand(dr)

def drumz(sd,l,s)
  live_loop l do
    sample sd
    sleep s
  end
end



#buffer 7

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


#buffer 8
#needed for :cowbell loop
array = [67,68,69,70,71,72,73,74,75,76,75,74,73,72,71,70,69,68]

def rr(a,b,c)
  live_loop a do
    sample b
    sleep c
  end
end

rr(:drums,:drum_bass_soft,0.5)
rr(:cymbals,:drum_cymbal_hard,0.5)
rr(:bd_zum,:bd_zum,1)
rr(:deep,:bass_thick_c,0.75)
rr(:choir,:ambi_choir,4)
rr(:chime,:elec_chime,0.5)
rr(:guitar,:guit_e_fifths,0.5)

#needed
live_loop :cowbell do
  sample :drum_cowbell, beat_stretch: 2
  sleep 1
end


#buffer 9
def ww(a,b,c,d,e,f)
  live_loop a do
    use_bpm rand(b...c)
    sample d, amp: e
    sleep f
  end
end

def tt(a,b,c,d,e,f,g)
  live_loop a do
    use_bpm rand(b...c)
    use_synth d
    play e, amp: f
    sleep g
  end
end


ww(:a,60,65,:ambi_choir,0.1,0.16)
tt(:c,60,65,:beep,rand(60..67),0.6,0.5)
tt(:e,60,65,:prophet,rand(50...57),0.4,rand(1))
ww(:g,60,65,:drum_cowbell,0.4,1)
ww(:i,60,70,:ambi_lunar_land,0.5,1)
ww(:j,60,75,:elec_chime,0.45,1)
ww(:k,60,65,:ambi_dark_woosh,0.55,0.16)
ww(:l,60,73,:bass_thick_c,0.6,0.75)


#needed
array = [60,61,62,63,64,65,66,67,68]
live_loop :b do
  use_bpm rand(60...65)
  s = rand(1)
  use_synth :dark_ambience
  play array.tick, amp: 1.1
  sleep s
end

#needed
live_loop :d do
  use_bpm rand(60...65)
  sample :drum_cymbal_hard, attack: 3
  sleep 1
end

#needed
live_loop :f do
  use_bpm rand(60...65)
  use_synth :blade
  play rand(79...86), amp: 0.5
  play rand(59...66),amp: 0.6
  play rand(89...96),amp: 0.45
  play rand(69...76),amp: 0.55
  sleep 1
end

#needed
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
