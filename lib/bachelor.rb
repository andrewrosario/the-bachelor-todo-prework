def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each_with_index do |contestant, index|
    contestant.each do |key, value|
      # puts "Key is #{key} and Value is #{value}"
      if key == "status" && value == "Winner"
        name = data[season][index]['name'].split
        return name[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |key, value|
    data[key].each_with_index do |contestant, index|
      contestant.each do |key2, value|
        if key2 == "occupation" && value == occupation
          return data[key][index]['name']
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  num_of_people = 0
  data.each do |season, value|
    data[season].each do |contestant|
      contestant.each do |key, value|
        if value == hometown
          num_of_people += 1 
        end
      end
    end
  end
  num_of_people
end

def get_occupation(data, hometown)
  # code here
  
end

def get_average_age_for_season(data, season)
  # code here
end
