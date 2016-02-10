# 03 Method missing
require 'ap'

class Scooby
  def method_missing(mname, *args)
    if mname.to_s =~ /^doo/
      names = mname.to_s.gsub('_', ' ')
      "Scooby #{names}"
    else
      super
    end
  end
end

scooby = Scooby.new
# Ghost method, booooo!
ap scooby.doo_fred_velma_shaggy_and_dafne_too!

ap scooby.ghosts_are_here!
