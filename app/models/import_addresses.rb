require "csv"
class ImportAddresses

  def initialize
  end

  def import
    ary = CSV.read(Rails.root.join("addresses.csv"))
    array = []
    ary.each do |point|
      point_2 = point[0].split('(')[1]
      full_address = "#{point[22]} #{point[9]}"
      puts full_address
      if point_2 != nil
      long =  point_2.chomp(')').split(" ")[0]
      lat =  point_2.chomp(')').split(" ")[1]
      coordinates = {lat: lat, long: long, address: full_address}
      array.push(coordinates)
      end
    end
    puts array
    Student.all.each do |student|
      hash = array.pop
      student.latitude = hash[:lat]
      student.longitude = hash[:long]
      student.address = hash[:address]
      student.save
    end

  end


end
