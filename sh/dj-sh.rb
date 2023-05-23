#buffer 3
use_bpm 160
array3 = [79,83,86]
array4 = [67,71,74]

live_loop :array9 do
  array3.each do |n|
    play n
    sleep 1.5
  end
end

live_loop :array10 do
  note = array3[rand(array3.length)]
  play note
  sleep 2
end

live_loop :array11 do
  array4.each do |n|
    play n
    sleep 0.5
  end
end

live_loop :array12 do
  use_synth :dsaw
  note = array4[rand(array4.length)]
  play note
  sleep 1
end
#buffer 4
use_bpm 160
array1 = [72,76,79]
array2 = [84,88,91]

live_loop :array do
  array1.each do |n|
    play n
    sleep 0.5
  end
end

live_loop :array2 do
  use_synth :dsaw
  note = array1[rand(array1.length)]
  play note
  sleep 1
end

live_loop :array3 do
  array2.each do |n|
    play n
    sleep 1.5
  end
end

live_loop :array4 do
  note = array2[rand(array2.length)]
  play note
  sleep 2
end
