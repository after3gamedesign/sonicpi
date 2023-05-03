live_loop :synth1 do
  play 50, amp: 0.1, attack: 0.6
  sleep 1
end

live_loop :synth2 do
  use_synth :bass_foundation
  play 69, amp: 0.6, attack: 0.5
  sleep 0.6
end

use_bpm 140

arp = ["D","F","A","C"]

live_loop :chord do
  play chord(:D,:minor7), attack_level: 0.1, sustain: 10, pitch: 0.1
  sleep 10
end

live_loop :kick do
  sample :drum_heavy_kick
  sleep 1
end

live_loop :bass do
  arp.each do |n|
    play ":"+n
    sleep 10
  end
end
c = [":A",":E"]
v = ["C","G"]

def anything(c,a,l,s)
  n=":foo"+"l"
  live_loop  do
    play c, amp: a
    sleep s
  end
end

anything(c,1,1,1)
anything(v,0.1,2,0.5)

use_bpm 180

#pentatonic scale in D

notes = [50,67,69]
new_notes = notes.map{|note|note+5}
play notes
sleep 1
play new_notes
puts(new_notes)
pattern = [:drum_bass_hard,:drum_cymbal_closed,:drum_bass_hard]

live_loop :drums do
  pattern.each do |e|
    sample e
    sleep 0.25
  end
end

live_loop :synth do
  use_synth :bass_highend
  new_notes.each do |n|
    play n
    sleep 1
  end
end
use_bpm 200
arp = [81,85,89]


live_loop :arp do
  arp.each do |n|
    play n
    sleep 1
  end
end

live_loop :arp1 do
  note = arp[rand(arp.length)]
  play note
  sleep 1
end
arr=[]
i=0
while i<100 do
  arr.append(i)
  puts(i)
  i+=1
end

puts(arr)

arr.each do |n|
  if (n%5=0) then
      play n
      sleep 1
    end
  end
  
  use_bpm 180
s = rand(0..1)
f = 0
##| less = lessthanone(s,f)

def hats(n)
  sample :loop_amen, start: 0.25, finish: 0.5
  sleep n
end

##| def lessthanone(s,f)
##|   f = s+f
##|   if f<1 
##|     return f
##|   else
##|     return 1
##|   end
##| end

def drum(n,s,f)
  s = rand(0..1)
  sample :loop_amen, start: s, finish: f
  sleep n
end

def breakbeat(s)
  drum(1,s,1)
  sleep 0.5
  drum(0.5,s,1)
  sleep 0.5
end

live_loop :brk do
  breakbeat(s)
end

