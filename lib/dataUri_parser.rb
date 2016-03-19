#
#  @creator arfullight
#  @date    2016/03/19
#  @info    parse dataURL into a file
#
require 'base64'

class DataUriParser


	def self.parse(dataURI, targetFile)

		data = Base64.decode64(dataURI.gsub(/[^,]+,/, ""))

		File.open(targetFile, 'wb') do |file|
			file.write(data)
		end

	end

	def self.toDataUri(targetFile, fileType)
		
		data = File.read(targetFile)

		dataURI = "data:#{fileType};base64," + Base64.encode64(data)
		return dataURI

	end

end