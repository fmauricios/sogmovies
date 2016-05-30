require 'rails_helper'

RSpec.describe Actor, :type => :model do

  describe ".full_name" do
    it "returns full name" do
      actor = Actor.new({
        first_name: "Pancrario",
        last_name: "Perez",
        birthday: Date.new(1975, 02, 02)
      })
      expect(actor.full_name).to eq("Pancrario Perez")
    end
  end

end
