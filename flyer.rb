class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}: #{miles_flown})"
  end
end

flyers = []

1.upto(5) {|n|

flyers << Flyer.new("Flyer #{n}", "flyer#{n}@example.com", n * 1000)
}

puts flyers

flyers.each do |flyer|
  puts "#{flyer.name} - #{flyer.miles_flown} miles"
end

total = 0

flyers.each do |flyer|
  total += flyer.miles_flown
end

puts total

promotions = {United: 1.5, Delta: 2.0, Lufthansa: 2.5}

promotions.each do |name, promotion|
  puts "Earn #{promotion}x miles by flying #{name}"
end
