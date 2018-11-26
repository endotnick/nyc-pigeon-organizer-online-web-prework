def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, values|
    values.each do |value, pigeons|
      pigeons.each do |pigeon|
        if !pigeon_list.has_key?(pigeon)
          pigeon_list[pigeon] = {}
        end

        if !pigeon_list[pigeon].has_key?(attribute)
          pigeon_list[pigeon][attribute] = []
        end

        if !pigeon_list[pigeon][attribute].has_key?(value)
          pigeon_list[pigeon][attribute] << value.to_s
        end
      end
    end
  end
  pigeon_list
end
