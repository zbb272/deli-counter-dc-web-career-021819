def line(line_array)
  if line_array.size == 0 
    puts "The line is currently empty."
  else 
    message = "The line is currently:"
    line_array.each_with_index do | name, index |
      message += " #{index + 1}. #{name}"
    end 
    puts message
end

def take_a_number(line_array, name)
  line_array << name 
  puts "Welcome, #{name}. You are number #{line_array.size} in line."
end

def now_serving(line_array)
  
end 


describe "#now_serving" do
    context "there are no people in line" do
      it "should say that the line is empty" do
        expect($stdout).to receive(:puts).with("There is nobody waiting to be served!")
        now_serving(katz_deli)
      end
    end

    context "there are people in line" do
      it "should serve the first person in line and remove them from the queue" do
        expect($stdout).to receive(:puts).with("Currently serving Logan.")
        now_serving(other_deli)
        expect(other_deli).to eq(%w(Avi Spencer))
      end
    end
  end