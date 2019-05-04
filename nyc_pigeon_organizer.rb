def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |category, info|
    info[:color].each_value do |bird_name|
      pigeons[bird_name]
    end
  end
end
