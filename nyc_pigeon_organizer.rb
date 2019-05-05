def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute_type, attributes|
    attributes.each do |attribute, array|
      array.each do |pigeon|
        if pigeon_list[pigeon]
          if pigeon_list[pigeon][attribute_type]
            pigeon_list[pigeon][attribute_type] << attribute
          else
            pigeon_list[pigeon][attribute_type] = [attribute]
          end
        else
          pigeon_list[pigeon] = {"#{attribute_type}": [attribute]}
        end
      end
    end
  end
  pigeon_list
end
