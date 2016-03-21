#
#  @creator arfullight
#  @date    2016/03/19
#  @info    parse dataURL into a file
#
require 'base64'
require 'class/DataUri'

class DataUriParser

	def self.toDataUri(targetFile, fileType)
		
		data = File.read(targetFile)

		dataURI = "data:#{fileType};base64," + Base64.encode64(data)
		
		obj = DataUri.new(dataURI)
		return obj

	end

end