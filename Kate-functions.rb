def arp(n,t)
  play n
  sleep t
  play n+2
  sleep t
  play n+4
  sleep t
end


live_loop :maj_arp do
  arp(60,0.1)
  sleep 1
  arp(65,0.1)
  sleep 1
  arp(70,0.1)
  sleep 1
  arp(75,0.1)
  sleep 1
end







