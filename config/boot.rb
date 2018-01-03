ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
ROOT_PATH = File.expand_path('../../', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
Bundler.require(:default)

# 将app目录加入autoload_paths 方便加载
$:.unshift File.expand_path('../../app', __FILE__)

# 将generator文件载入
Dir["#{File.expand_path('../../lib/generator', __FILE__)}/**/*.rb"].each {|file| require file }

# 将game_engine载入(即将被废弃删除)
require File.expand_path('../../lib/words_game_engine/lib/words_game_engine.rb', __FILE__)

Dir["#{File.expand_path('../../app/server/actions', __FILE__)}/**/*.rb"].each {|file| require file }
Dir["#{File.expand_path('../../app/server/models', __FILE__)}/**/*.rb"].each {|file| require file }


# 载入db migrations
Dir["#{File.expand_path('../../db', __FILE__)}/**/*.rb"].each {|file| require file }

# 载入 Server API
require 'server/api/all'

# Game Init
Dir["#{File.expand_path('../initializer', __FILE__)}/**/*.rb"].each {|file| require file }

# 连接DB
ActiveRecord::Base.establish_connection(YAML.load_file('config/database.yml')['default'])

