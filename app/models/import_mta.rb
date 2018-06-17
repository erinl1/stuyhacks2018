require "csv"
class ImportMta

  def initialize
  end

  def import
    ary = CSV.read(Rails.root.join("mta.csv"))
    array = []

  end


end
