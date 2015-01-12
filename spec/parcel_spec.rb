require('rspec')
require('parcel')
require('pry')

 describe(Parcel) do
  describe("#volume") do

    it("returns the products of all the dimensions of the box") do
      test_parcel = Parcel.new(5, 6, 5, 11)
      expect(test_parcel.volume()).to(eq(150))
    end

    it("returns a calculated shipping cost based on the weight parameter") do
      test_parcel = Parcel.new(5, 6, 5, 11)
      expect(test_parcel.cost_to_ship()).to(eq(165))
    end
  end

 end
