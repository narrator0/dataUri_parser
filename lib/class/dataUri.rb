#
#  @aditor arfullight	
#  @date   2016/3/21
#  @info   create dataUrl class
#

class DataUri

	def initialize(dataUriString)
		
		@dataUriString = dataUriString
		
		#get info
		matchData  = /data:([^;]+);base64,([^,]+)/.match(@dataUriString);
		
		if matchData
			@mediaType = matchData[1]
			@data 		 = matchData[2]
		end

	end

	#
	#  getter
	#
	def dataUriString
		return @dataUriString
	end

	def mediaType
		return @mediaType
	end

	def data
		return @data
	end

	#
	#  methods
	#

	def decode
		return Base64.decode64(@data)
	end

	def decodeToFile(targetFile)

		File.open(targetFile, 'w') do |file|
			file.write(Base64.decode64(@data))
		end

	end

end