class Patient
attr_accessor :body_temp, :pulse, :respiration_rate, :blood_pressure
def initialize
  @blood_pressure = []
  @pulse = []
  @respiration_rate = []
  @body_temp =[]
end
# vitals 1
def vitals 
madison = 0
while madison < 3
puts "Updating Jane Doe vitals. Blood Pressure?"
blood_pressure = gets.chomp.to_f
@blood_pressure << blood_pressure
puts "Body Temperature?"
body_temp = gets.chomp.to_f
@body_temp << body_temp
puts "Pulse?"
pulse = gets.chomp.to_f
  @pulse << pulse
puts "Respiration Rate?"
respiration_rate = gets.chomp.to_f
@respiration_rate << respiration_rate
if body_temp > 99.1
puts "CAUTION: Jane Doe is experiencing pyrexia!"
elsif body_temp < 97.8
  puts "CAUTION: Jane Doe is experiencing hypothermia!"
end
if blood_pressure > 160 
  
  puts "CAUTION: Jane Doe is experiencing hypertension"
elsif blood_pressure < 110
  puts "CAUTION: Jane Doe is experiencing hypotension"
end
if pulse > 100
  puts "CAUTION: Jane Doe is experiencing bradycardia!"
elsif pulse < 60 
  puts "CAUTION: Jane Doe is experiencing tachycardia!"
end
if respiration_rate > 16 
  puts "CAUTION: Jane Doe is experiencing tachypnea"
elsif respiration_rate < 12
  puts "CAUTION: Jane Doe is experiencing bradypnea"
end
madison +=1
end #if
end #class
end #while
cream1 = Patient.new
cream1.vitals
#restrictions:
# more than 20%
#clear screen 
#array - getters and setters
## when is it going to stop ## add while 
puts "Jane Doe blood pressure #{cream1.blood_pressure}"
puts "Jane Doe respiration rate#{cream1.respiration_rate}"
puts "Jane Doe pulse #{cream1.pulse}"
puts "Jane Doe body temp #{cream1.body_temp}"