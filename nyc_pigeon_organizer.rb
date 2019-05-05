def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |category, info|
    info.each do |attribute, array|
      array.each do |pigeon|
        if pigeons[pigeon]
          if pigeons[pigeon][category]
            pigeons[pigeon][category] << attribute
          else
            pigeons[pigeon][category] = [attribute]
          end
        else pigeons[pigeon] = {"#{category}: [attribute]"}
        end
      end
    end
  end
