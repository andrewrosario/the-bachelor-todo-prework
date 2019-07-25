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
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
