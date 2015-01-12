require('rspec')
require('parcel')
require('pry')

 describe(Parcel) do
  describe("#volume") do

    it("returns the products of all the dimensions of the box") do
      test_parcel = Parcel.new(5, 6, 5)
      expect(test_parcel.volume()).to(eq(150))
    end

  end

 end
