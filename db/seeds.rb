class Seed
  def self.begin
    seed = Seed.new
    seed.generate_businesses
  end

  def generate_businesses
    25.times do |i|
      business = Business.create!(
        name: Faker::Company.name
      )
    end
  end
end

Seed.begin
