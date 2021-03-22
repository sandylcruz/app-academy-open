json.extract! @party, :id, :name, :location

json.guests @party.guests do |guest|
  json.name guest.name
  json.gifts guest.gifts, :title
end

