json.array!(@encrypted_objects) do |encrypted_object|
  json.extract! encrypted_object, :id, :secret_stuff, :secret_stuff2, :tell_this_to_the_world
  json.url encrypted_object_url(encrypted_object, format: :json)
end
