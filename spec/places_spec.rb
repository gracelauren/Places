require('rspec')
require('places')

describe(Places) do
  before() do
    Places.clear()
end

  describe("#description") do
    it("lets you say the places you have been") do
      test_places = Places.new("China")
      expect(test_places.description()).to(eq("China"))
    end
  end

  describe('#save') do
    it("adds a places to the array of saved tasks") do
      test_places = Places.new("China")
      test_places.save()
      expect(Places.all()).to(eq([test_places]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Places.all()).(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved places") do
      Places.new("China").add()
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end
end
