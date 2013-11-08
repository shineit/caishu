require 'settingslogic'

class Settings < Settingslogic
	source File.join(CORE_ROOT,'config/application.yml')
end