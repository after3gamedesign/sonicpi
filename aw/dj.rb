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
