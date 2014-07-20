class DateFromat

	require 'date'
	require 'yaml'

	def initialize
		CONFIG = Yaml.load_file("holidays.yaml") if File.exist?("holidays.yaml")
		puts "joliday list"
		puts CONFIG['holidays']
	end

	def self.checkingHolidays day
		#time = Time.now.strftime("%Y-%m-%d").to_s
		#time = Time.local timeNow("%Y,%m,%d")
		#year,month,day = timeNow("%Y").to_i,timeNow("%m").to_i,timeNow("%d").to_i
		#time = Time.local(year,month,day)
		#tomorrow = Time.local(year,month,(day+1))
		#puts time.saturday?

		next_shiping_day = day.next_day
		( next_shiping_day.saturday? || next_shiping_day.sunday? ) ? checkingHolidays(next_shiping_day) : next_shiping_day
	end

	def self.timeNow format
	 Time.now.strftime(format)
	end

	def self.nextShippingDate
		today = Date.today
		date = checkingHolidays today
		puts	date
	end

end
DateFromat.new
DateFromat.nextShippingDate
#http://richonrails.com/articles/environment-variables-in-ruby-on-rails