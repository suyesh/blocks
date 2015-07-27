class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name.capitalize
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}: #{miles_flown}- #{status})"
  end
end

flyers = []

flyers << Flyer.new("larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("moe", "moe@example.com", 1000)
flyers << Flyer.new("curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("shemp", "shemp@example.com", 2000)

platinum_flyers, coach_flyers = flyers.partition {|flyer| flyer.status == :platinum}

puts platinum_flyers
puts coach_flyers

name_tags = flyers.map {|flyer| "#{flyer.name.capitalize} (#{flyer.status.upcase})"}
puts name_tags

luftansa = flyers.map {|flyer| flyer.miles_flown * 1.6}
puts luftansa

total_kilometers = flyers.reduce(0) {|total, flyer| total + (flyer.miles_flown * 1.6)}

puts total_kilometers
