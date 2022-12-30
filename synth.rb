## syn() synth
def syn(t)
  arr=[90,40,10]
  arr1=[55,60,80]
  arr2=arr1.map{|n|n-10}
  n = arr1.select{|n|n<80}
  
  with_fx :gverb do
    with_fx :reverb do
      live_loop :synth1 do
        synth :fm, note: n,amp: 0.005, attack: 0.009
        sleep t
      end
    end
  end
end

syn(0.123) 
