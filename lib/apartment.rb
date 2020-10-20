require './lib/renter'

class Apartment
  attr_reader :number,
              :monthly_rent,
              :bathrooms,
              :bedrooms,
              :renter

  def initialize(apartment_information)
    @number = apartment_information[:number]
    @monthly_rent = apartment_information[:monthly_rent]
    @bathrooms = apartment_information[:bathrooms]
    @bedrooms = apartment_information[:bedrooms]
  end

  def add_renter(renter)
    @renter = renter
  end
end
