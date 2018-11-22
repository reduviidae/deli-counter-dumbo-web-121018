# Write your code here.
katz_deli = ["Cathasach", "Wiljago", "Bonniletta"]

def line(queue)
  new_array = []
  i = 1
  if queue.length > 0 
    queue.each do |guest|
      new_array.push("#{i}. #{guest}")
      i += 1
    end
    puts "The line is currently: #{new_array.join(" ")}"
  else queue.length == 0
    puts "The line is currently empty."  
  end
end

def take_a_number(queue, name)
  queue << name
  count = queue.length
  puts "Welcome #{name}. You are number #{count} in line."
end

def now_serving(queue)
  if queue.length > 0 
    puts "Currently serving #{queue.shift}."
  else 
    puts "There is nobody waiting to be served!"
  end
end