#buffer 8
use_bpm 130
arp=[34,44,54,64,74,84,94]

live_loop  :arps do
  arp.each do |n|
    use_synth :bass_foundation
    play arp
    sleep 1
  end
end

live_loop :arpy do
  note = arp[rand(arp.length)]
  play note
  sleep 0.5
end

live_loop :arper do
  use_synth :bass_highend
  note = [rand(arp.length)]
  play note
  sleep 0.5
end

live_loop :arp_arp do
  use_synth :chiplead
  note = [rand(arp.length)]
  play note
  sleep 0.5
end
#buffer 7
def arp(n,t)
  play n
  sleep t
  play n+2
  sleep t
  play n+4
  sleep t
end

live_loop :noodles do
  arp(60,0.1)
  sleep 1
  arp(65,0.1)
  sleep 1
  arp(70,0.1)
  sleep 1
  arp(75,0.1)
  sleep 1
end



