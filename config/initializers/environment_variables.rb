module EnvironmentVariablesExample
  class Application < Rails::Application
    config.before_configuration do
      env_file = Rails.root.join("config", 'environment_variables.yml').to_s

      if File.exists?(env_file)
        #puts "HI IM HERE"
        #puts YAML.load_file(env_file)[Rails.env]
        YAML.load_file(env_file)[Rails.env].each do |key, value|
          #puts 'the key'
          #puts key.to_s
          #puts 'the value'
          #puts value
          ENV[key.to_s] = value
        end # end YAML.load_file
      end # end if File.exists?
    end # end config.before_configuration
  end # end class
end # end module
