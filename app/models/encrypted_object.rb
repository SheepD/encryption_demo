class EncryptedObject < ActiveRecord::Base
	after_find :decrypt_fields
	before_save :encrypt_fields

	def decrypt_fields
		encryptor = Encryptor.intialize("kamote","kamote")
		secret_stuff = encryptor.decrypt secret_stuff
		secret_stuff2 = encryptor.decrypt secret_stuff2
	end

	def encrypt_fields
		encryptor = Encryptor.intialize("kamote","kamote")
		secret_stuff = encryptor.encrypt secret_stuff
		secret_stuff2 = encryptor.encrypt secret_stuff2
	end
end
