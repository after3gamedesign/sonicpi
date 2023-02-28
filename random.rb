
def magic_rand(i)
  
  live_loop :i do
    r=rand(i)
    sample :drum_heavy_kick, pitch: r
    sleep 0.151
  end
end

##| magic_rand(50)
