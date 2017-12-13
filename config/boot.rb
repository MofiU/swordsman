ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
ROOT_PATH = File.expand_path('../../', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
Bundler.require(:default)

# $LOAD_PATH.unshift File.expand_path('../../app/models', __FILE__)
# $LOAD_PATH.unshift File.expand_path('../../app/controllers', __FILE__)
# $LOAD_PATH.unshift File.expand_path('../../app/views', __FILE__)

File.expand_path('../../app/models', __FILE__)

Dir["#{File.expand_path('../../app/models', __FILE__)}/**/*.rb"].each {|file| require file }
Dir["#{File.expand_path('../../app/controllers', __FILE__)}/**/*.rb"].each {|file| require file }
Dir["#{File.expand_path('../../app/views', __FILE__)}/**/*.rb"].each {|file| require file }

Dir["#{File.expand_path('../../bin', __FILE__)}/**/*.rb"].each {|file| require file }
Dir["#{File.expand_path('../../lib', __FILE__)}/**/*.rb"].each {|file| require file }
Dir["#{File.expand_path('../../db', __FILE__)}/**/*.rb"].each {|file| require file }

ActiveRecord::Base.establish_connection(YAML.load_file('config/database.yml')['default'])

