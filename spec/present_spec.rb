require 'present'

RSpec.describe Present do
  context "when no present is wrapped" do
    it "Error when unwrapping" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
    it "Successfully wraps a present" do
      present = Present.new
      expect(present.wrap("Rubber Duck")).to eq "Rubber Duck"
    end

  end

  context "when a present is wrapped" do
    it "Error when wrapping again" do
      present = Present.new
      present.wrap("Rubber Duck")
      expect { present.wrap("Macbook") }.to raise_error "A contents has already been wrapped."
    end
    it "Sucessfully unwraps present" do
      present = Present.new
      present.wrap("Rubber Duck")
      expect(present.unwrap).to eq "Rubber Duck"
    end
  end
end