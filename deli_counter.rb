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
  
end

describe "#take_a_number" do
    context "there is nobody in line" do
      it "should add a person to the line" do
        expect($stdout).to receive(:puts).with("Welcome, Ada. You are number 1 in line.")
        take_a_number(katz_deli, "Ada")
        expect(katz_deli).to eq(["Ada"])
      end
    end

    context "there are already people in line" do
      it "should add a person to the end of the line" do
        # This weird looking %w syntax is just another way to instantiate an
        # Array. %w(item1 item2) is equivalent to ["item1", "item2"]
        expect($stdout).to receive(:puts).with("Welcome, Grace. You are number 4 in line.")
        take_a_number(other_deli, "Grace")
        expect(other_deli).to eq(%w(Logan Avi Spencer Grace))
      end
    end

    context "adding multiple people in a row" do
      it "should correctly build the line" do
        take_a_number(katz_deli, "Ada")
        take_a_number(katz_deli, "Grace")
        take_a_number(katz_deli, "Kent")
        expect(katz_deli).to eq(%w(Ada Grace Kent))
      end
    end
  end

def now_serving(line_array)
  
end 