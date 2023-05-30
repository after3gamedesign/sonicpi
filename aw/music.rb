#buffer 1
live_loop :t do
  use_synth :pretty_bell
  play 60
  sleep 0.5
  play 62
  sleep rand(0.5)
  play 64
  sleep 1
  play 65
  sleep rand(0.75)
  play 67
  sleep 1.1
  play 69
  sleep rand(0.6)
  play 71
  sleep 0.9
  play 72
  sleep rand(0.4)
end

live_loop :y do
  use_synth :piano
  sleep 0.5
  play 70
  sleep 0.5
  play 72
  sleep rand(0.5)
  play 74
  sleep 1
  play 75
  sleep rand(0.75)
  play 77
  sleep 1.1
  play 79
  sleep rand(0.6)
  play 81
  sleep 0.9
  play 82
  sleep rand(0.4)
end

live_loop :i do
  use_synth :beep
  play 60
  sleep 2
end



#buffer 2
#attack decay release sustain
use_bpm 120

live_loop :a do
  a = rand(3...5)
  d = rand(2...5)
  s = rand(1...2)
  r = rand(3...4)
  sl = rand(1...3)
  use_synth :beep
  play rand(60...80), gain: 0.05,attack: a, decay: d, sustain: s, release: r,amp: 0.25
  sleep sl
end

#buffer 3
live_loop :a do
  3.times do
    use_synth :bass_foundation
    play 60
    play 72
    sleep 1
  end
  
  4.times do
    sample :loop_tabla, amp: 6
    sleep 1.25
  end
  sleep 4
  5.times do
    use_synth :organ_tonewheel
    play 61
    sleep 1
    play 67
    sleep 0.5
  end
  
  2.times do
    sample :loop_amen_full
    sleep 1.25
  end
  sleep 3
end

#buffer 4
array = [62,66,70,72,76]
arr = [62,66,70,72,76,72,70,66,62]

live_loop :loop0 do
  use_synth :kalimba
  play array.tick
  sleep 1
end

live_loop :loop1 do
  use_synth :kalimba
  sleep 0.5
  play arr.tick
  sleep 1
end

live_loop :loop2 do
  array0 = array.reverse
  use_synth :kalimba
  sleep 0.75
  play array0.tick
  sleep 1
end

live_loop :mika do
  sample :loop_mika, amp: 0.5
  sleep 4
end

#buffer 6
live_loop :b do
  3.times do
    sample :loop_breakbeat
    sleep 1
  end
  
  4.times do
    use_synth :bass_foundation
    play 66,amp: 0.35
    sleep 0.4
    play 64,amp: 0.35
    sleep 0.35
  end
  
  5.times do
    use_synth :kalimba
    play 60,amp: 4.5
    sleep 0.2
    play 61,amp: 4.5
    sleep 0.2
  end
  
  1.times do
    sample :loop_amen_full,amp: 0.5
    sleep 6.5
  end
  
  4.times do
    use_synth :pretty_bell
    play 60, sustain: 10,amp: 0.45
    sleep 0.1
    play 62,amp: 0.45
    sleep 0.1
    play 64,amp: 0.45
  end
  
  2.times do
    sample :loop_mika
    sleep 4
  end
  sleep 3
end

#buffer 7
use_bpm 180

##| live_loop :aw do
##|   sample :loop_amen_full
##|   sleep rand(6...7)
##|   sample :loop_mika
##|   sleep rand(7...8)
##|   sample :loop_breakbeat
##|   sleep rand(1...2)
##|   sample :loop_tabla, amp: 6
##|   sleep rand(8...9)
##|   sample :loop_mika
##|   sleep rand(6...7)
##|   sample :loop_safari,amp: 3
##|   sleep rand(7...8)
##| end

a =  :loop_amen_full
d = sample_duration a
sl = 32
with_fx :echo do
  
  live_loop :people do
    
    3.times do
      sample a, slice: rand(9), num_slices: sl if one_in(2)
      sleep d/sl
      
      sample a, slice: rand(7), num_slices: sl if one_in(1)
      sleep d/sl
      
      sample a, slice: 1, num_slices: sl if one_in(3)
      sleep d/sl
      
    end
    
    
    2.times do
      sample a, slice: 9, num_slices: sl if one_in(1)
      sleep d/sl
      
    end
    
    1.times do
      sample a, slice: rand(12), num_slices: sl
      sleep d/sl
      sample a, slice: rand(12), num_slices: sl
      sleep d/sl
    end
    
  end
  
  ##| live_loop :people1 do
  ##|   sample people, slice: 19, num_slices: sl/2 if one_in(8)
  ##|   sleep d/sl
  ##| end
  
  
end


#buffer 8
use_bpm 120

carray = [64,66,67,69,71,73,74,76]
barray = [59,61,62,64,66,68,69,71]

live_loop :loop0 do
  use_synth :prophet
  play carray.tick,amp: 0.5
  sleep 1
end

live_loop :loop1 do
  use_synth :prophet
  carr = carray.reverse
  sleep 0.5
  play carr,amp: 0.5
  sleep 1
end

live_loop :loop2 do
  use_synth :prophet
  carr1 = [64,66,67,69,71,73,74,76,74,73,71,69,67,66,64]
  sleep 0.75
  play carr1.tick, amp: 0.5
  sleep 1
end

live_loop :loop3 do
  use_synth :prophet
  play barray.tick,amp: 0.5
  sleep 1
end

live_loop :loop4 do
  use_synth :prophet
  barr = barray.reverse
  sleep 0.5
  play barr.tick,amp: 0.5
  sleep 1
end

live_loop :loop5 do
  use_synth :prophet
  barr1 = [59,61,62,64,66,68,69,71,69,68,66,64,62,61,59]
  sleep 0.75
  play barr1.tick,amp: 0.5
  sleep 1
end

live_loop :mika do
  sample :loop_mika, amp: 0.5
  sleep 4
end
