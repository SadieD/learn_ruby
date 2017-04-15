class Timer
  attr_accessor :seconds, :minutes, :hours, :time_string
  
	def initialize(seconds = 0, minutes = 0, hours = 0)
		@seconds = seconds
		@time_string = '%02d:%02d:%02d' % [hours, minutes, seconds]
	end
	
	def seconds
		@seconds
	end
	
	def seconds=(seconds = 0, minutes = 0, hours = 0)
		@seconds = seconds

		seconds, minutes = convert_hours_minutes_seconds(seconds, minutes)
		minutes, hours = convert_hours_minutes_seconds(minutes, hours)
		
		@time_string = '%02d:%02d:%02d' % [hours, minutes, seconds]
	end
	
	def convert_hours_minutes_seconds unit_to_convert, unit_converted
		while unit_to_convert > 59 do
			unit_to_convert = unit_to_convert - 60
			unit_converted = unit_converted + 1
		end
		
		return unit_to_convert, unit_converted
	end
	
	private :convert_hours_minutes_seconds
	
end
