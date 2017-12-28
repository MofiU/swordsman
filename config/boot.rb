ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
ROOT_PATH = File.expand_path('../../', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
Bundler.require(:default)

Dir["#{File.expand_path('../../lib/generator', __FILE__)}/**/*.rb"].each {|file| require file }

require File.expand_path('../../lib/words_game_engine/lib/words_game_engine.rb', __FILE__)

Dir["#{File.expand_path('../../app/helpers', __FILE__)}/**/*.rb"].each {|file| require file }
Dir["#{File.expand_path('../../app/models', __FILE__)}/**/*.rb"].each {|file| require file }
Dir["#{File.expand_path('../../app/views', __FILE__)}/**/*.rb"].each {|file| require file }

Dir["#{File.expand_path('../../bin', __FILE__)}/**/*.rb"].each {|file| require file }
Dir["#{File.expand_path('../../db', __FILE__)}/**/*.rb"].each {|file| require file }

# Game Init
Dir["#{File.expand_path('../initializer', __FILE__)}/**/*.rb"].each {|file| require file }

ActiveRecord::Base.establish_connection(YAML.load_file('config/database.yml')['default'])

