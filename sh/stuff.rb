# Buffer 3 & 4 
use_bpm 240
live_loop :drums do
  sample :drum_cymbal_closed, amp: 0.5
  sleep 0.75
end

live_loop :drums2 do
  sample :drum_cymbal_open, amp: 0.25
  sleep 1
end

live_loop :drums3 do
  sample :drum_cymbal_soft, amp: 0.75
  sleep 0.5
end

use_bpm 120
live_loop :melody do
  sample  :ambi_soft_buzz, amp: 2
  sleep 1.5
end
