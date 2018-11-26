def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, values|
    values.each do |value, pigeons|
      pigeons.each do |pigeon|        
        if pigeon_list[pigeon][attribute]
          pigeon_list[pigeon][attribute]  << value
        else
          pigeon_list[pigeon][attribute]  = [value]
        end
      end
    end
  end
end