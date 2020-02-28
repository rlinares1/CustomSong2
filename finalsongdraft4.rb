radio = "C:/Users/romario_linares/Downloads/radio.wav"
siren = "C:/Users/romario_linares/Downloads/siren.wav"
song2 = "C:/Users/romario_linares/Downloads/jotarostheme.wav"
goodgrief = "C:/Users/romario_linares/Downloads/grief.wav"

b = 0

sample siren, amp: 1
sample radio
sleep 13.4

set :bpm , 144

#drum
live_loop :snare do
  sample :drum_snare_soft
  sleep 0.4
  if (b >= 7) then
  stop end
end

live_loop :kik2 do
  sample :drum_heavy_kick, amp: 1.3
  sleep 0.2
  if (b >= 7) then
  stop end
end

sample radio

sample siren, amp: 1

sleep 12.78

live_loop :hihat do
  sample :drum_cymbal_closed, amp: 0.5
  sleep 0.1
  if (b >= 7) then
  stop end
end

live_loop :snare2 do
  sync :kik
  sample :drum_snare_hard
  sleep 0.3
  if (b >= 7) then
  stop end
end

use_synth :chipbass
use_synth_defaults attack: 0,
  decay: 0, amp: 3, sustain: 0.1, release: 0,
  cutoff: 120

live_loop :bassmel do
  bass :c2, :g2, :gb2, :f2, :eb2, :c2, :bb1
  if (b >= 7) then
  stop end
end


define :bass do |note1, note2, note3, note4, note5, note6, note7|
  play note1
  sleep 0.3
  play note2
  sleep 0.3
  play note3
  sleep 0.2
  play note4
  sleep 0.3
  play note5
  sleep 0.2
  play note6
  sleep 0.1
  play note7
  sleep 0.2
end

sleep 6.4

use_synth :square
use_synth_defaults attack: 0,
  decay: 0, amp: 1, sustain: 0.1, release: 0,
  cutoff: 120
live_loop :bassmel2 do
  4.times do
    bass2 :c3, :g3, :gb3, :f3, :eb3, :c3, :bb2
  end
  stop
end

define :bass2 do |note1, note2, note3, note4, note5, note6, note7|
  play note1
  sleep 0.3
  play note2
  sleep 0.3
  play note3
  sleep 0.2
  play note4
  sleep 0.3
  play note5
  sleep 0.2
  play note6
  sleep 0.1
  play note7
  sleep 0.2
end

sleep 6.4

melarray = [:c3, :g3, :c3, :gb3, :c3, :eb3, :c3]
i = 0
sleeparray = [0.1, 0.2, 0.1, 0.2, 0.1, 0.2, 0.1]

use_synth :blade
use_synth_defaults attack: 0,
  decay: 0, amp: 3, sustain: 0.1, release: 0,
  cutoff: 120
2.times do
  
  i = 0
  7.times do
    play melarray[i]
    sleep sleeparray[i]
    i +=1
  end
  play :bb2, sustain: 0.3
  sleep 0.36
  play :c3, sustain: 0.4
  sleep 1.85
end

melarray2 = [:f3, :c4, :f3, :b3, :f3, :ab3, :f3]
k = 0
sleeparray2 = [0.1, 0.2, 0.1, 0.2, 0.1, 0.2, 0.1]
use_synth :blade
use_synth_defaults attack: 0,
  decay: 0, amp: 3, sustain: 0.1, release: 0,
  cutoff: 120
1.times do
  
  k = 0
  7.times do
    play melarray2[k]
    sleep sleeparray2[k]
    k +=1
  end
  play :eb3, sustain: 0.3
  sleep 0.36
  play :f3, sustain: 0.4
  sleep 1.85
end

1.times do
  
  i = 0
  7.times do
    play melarray[i]
    sleep sleeparray[i]
    i +=1
  end
  play :bb2, sustain: 0.3
  sleep 0.36
  play :c3, sustain: 0.4
  sleep 1.85
end

use_synth :piano
use_synth_defaults attack: 0,
  decay: 0, sustain: 0.4, release: 0,
  cutoff: 120

live_loop :mel do
  2.times do
    play :eb4
    play :g4
    play :c5
    sleep 0.4
    
    play :eb4
    play :g4
    play :b4
    sleep 0.4
    
    play :eb4
    play :g4
    play :bb4
    sleep 0.3
    
    play :eb4
    play :g4
    play :b4
    sleep 0.3
    
    play :eb4, sustain: 0.6
    play :g4, sustain: 0.6
    play :c5, sustain: 0.6
    sleep 0.3
    
    play :eb4
    play :g4
    play :c5
    sleep 0.4
    
    play :eb4
    play :g4
    play :b4
    sleep 0.3
    
    play :eb4
    play :g4
    play :bb4
    sleep 0.3
    
    play :eb4
    play :g4
    play :b4
    sleep 0.5
  end
  stop
end

melarray = [:c3, :g3, :c3, :gb3, :c3, :eb3, :c3]
i = 0
sleeparray = [0.1, 0.2, 0.1, 0.2, 0.1, 0.2, 0.1]

use_synth :blade
use_synth_defaults attack: 0,
  decay: 0, amp: 3, sustain: 0.1, release: 0,
  cutoff: 120
2.times do
  
  i = 0
  7.times do
    play melarray[i]
    sleep sleeparray[i]
    i +=1
  end
  play :bb2, sustain: 0.3
  sleep 0.36
  play :c3, sustain: 0.4
  sleep 1.85
end

use_synth :piano
use_synth_defaults attack: 0,
  decay: 0, sustain: 0.4, release: 0,
  cutoff: 120

live_loop :mel2 do
  1.times do
    play :eb4
    play :c4
    play :f4
    sleep 0.4
    
    play :eb4
    play :c4
    play :b4
    sleep 0.4
    
    play :eb4
    play :c4
    play :bb4
    sleep 0.3
    
    play :eb4
    play :c4
    play :b4
    sleep 0.3
    
    play :eb4, sustain: 0.6
    play :c4, sustain: 0.6
    play :f4, sustain: 0.6
    sleep 0.3
    
    play :eb4
    play :c4
    play :f4
    sleep 0.4
    
    play :eb4
    play :c4
    play :b4
    sleep 0.3
    
    play :eb4
    play :c4
    play :bb4
    sleep 0.3
    
    play :eb4
    play :c4
    play :b4
    sleep 0.5
  end
  stop
end

melarray2 = [:f3, :c4, :f3, :b3, :f3, :ab3, :f3]
k = 0
sleeparray2 = [0.1, 0.2, 0.1, 0.2, 0.1, 0.2, 0.1]
use_synth :blade
use_synth_defaults attack: 0,
  decay: 0, amp: 3, sustain: 0.1, release: 0,
  cutoff: 120
1.times do
  
  k = 0
  7.times do
    play melarray2[k]
    sleep sleeparray2[k]
    k +=1
  end
  play :eb3, sustain: 0.3
  sleep 0.36
  play :f3, sustain: 0.4
  sleep 1.85
end

use_synth :piano
use_synth_defaults attack: 0,
  decay: 0, sustain: 0.4, release: 0,
  cutoff: 120

live_loop :mel do
  1.times do
    play :eb4
    play :g4
    play :c5
    sleep 0.4
    
    play :eb4
    play :g4
    play :b4
    sleep 0.4
    
    play :eb4
    play :g4
    play :bb4
    sleep 0.3
    
    play :eb4
    play :g4
    play :b4
    sleep 0.3
    
    play :eb4, sustain: 0.6
    play :g4, sustain: 0.6
    play :c5, sustain: 0.6
    sleep 0.3
    
    play :eb4
    play :g4
    play :c5
    sleep 0.4
    
    play :eb4
    play :g4
    play :b4
    sleep 0.3
    
    play :eb4
    play :g4
    play :bb4
    sleep 0.3
    
    play :eb4
    play :g4
    play :b4
    sleep 0.5
  end
  stop
end

melarrayend = [:c3, :g3, :c3, :gb3, :c3, :eb3, :c3]
b = 0
sleeparrayend = [0.1, 0.2, 0.1, 0.2, 0.1, 0.2, 0.1]

use_synth :blade
use_synth_defaults attack: 0,
  decay: 0, amp: 3, sustain: 0.1, release: 0,
  cutoff: 120
1.times do
  
  b = 0
  7.times do
    play melarrayend[b]
    sleep sleeparrayend[b]
    b +=1
  end
  play :bb2, sustain: 0.3
  sleep 0.36
  play :c3, sustain: 0.4
  sleep 1.85
end

sample siren, amp: 1
sample radio
sleep 13.4

sample goodgrief, amp: 3
sleep 0.1
sample song2, amp: 5