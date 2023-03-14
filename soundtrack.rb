##| play :Cb5, amp:4
##| 3. times do
##|   play 68, amp:4
##|   sleep 1
##|   play  50
##|   sleep 1
##|   play :E3
##|   sleep 1
##|   sample :ambi_lunar_land

##| end

##| 4. times do
##|   sample :ambi_lunar_land
##|   play :C3
##|   sleep 1
##|   play 68
##|   play :Cb5

##| end

##| live_loop :waffle do
##|   sample :ambi_swoosh
##| sleep 1
##|end
##| play 58
##| sleep 1
##| play 56
##| sleep 1
##| play :G#
##| sleep 0.1
##| play :F#
##| sample :ambi_dark_woosh
##| sleep 1
##| play :G
##| sleep 3
##| play 44
#3| end
##| play :C3
##| sleep 0.1
##| play :D3
##| sleep 0.1
##| play :C3
