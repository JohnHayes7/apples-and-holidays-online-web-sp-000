require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
 
 holiday_hash. each do |season, holiday|
   if season == :winter
     holiday.values.each do |decs|
       decs << supply
     end
   end
 end 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.values.each do |decs|
        decs << supply
      end
    end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |season, holiday|
    if season == :fall
      holiday_hash[:fall][holiday_name] = supply_array
    elsif season == :winter
      holiday_hash[:winter][holiday_name] = supply_array
    end
  end

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.each do |season, holiday|
    if season == :winter
        return holiday.values.flatten
    end
  end
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
      holiday_array = holiday.keys
      supply_array = holiday.values
      
        uniform_holiday_array = []
       holiday_array.each do |i|
         uniform_holiday_array << i.to_s.
         
       end
      # puts "  #{day[0].to_s.capitalize}: #{day[1].join(", ")}"
      binding.pry
  end

    
   
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







