require 'pry'
def second_supply_for_fourth_of_july(holiday_hash)
   {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
    return holiday_supplies[:summer][:fourth_of_july][1]
    holiday_supplies[:summer][:fourth_of_july]<< "Watermelon"
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:christmas]<< "Balloons"
    holiday_supplies[:winter][:new_years]<< "Balloons"

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day]<< supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
# binding.pry 
#holiday_hash.map do |season, holiday_info|
   #binding.pry 

 #holiday_hash["season"]<< ["#{holiday_name}"][supply_array]]
  #end
end

def all_winter_holiday_supplies()
  #binding.pry
  holiday_hash[:winter].map do |season, holiday| 
  season.collect do |holiday_name, supplies|
    supplies
  end
end
end 

def all_supplies_in_holidays(holiday_hash)
holday_hash.each do |season, holiday|
  puts "#{season.capitalize}"
  holidays.each do |holidays, supplies|
    puts "#{holiday.to_s.split("_").map {|hol| holiday.capitalize}.join(", ")}"
  end
end 
end

def all_holidays_with_bbq(holiday_hash)
holiday_hash.map do |holiday, supplies|
  holiday if supplies.include?("BBQ")
  end.flatten.compact
end