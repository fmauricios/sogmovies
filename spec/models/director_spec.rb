require 'rails_helper'

RSpec.describe Actor, :type => :model do

  describe ".full_name" do
    it "returns full name" do
      director = Director.new({
        first_name: "Jorge",
        last_name: "Serna",
        birthday: Date.new(1965, 02, 02)
      })
      expect(director.full_name).to eq("Jorge Serna")
    end
  end

end
