def nyc_pigeon_organizer(data)
  pigeons = {}
data.each do |category, info|
  category.each do |color, name|
  pigeons << [color][name]
  end
end
end
