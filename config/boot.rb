ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
ROOT_PATH = File.expand_path('../../', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
Bundler.require(:default)

# 将app目录加入autoload_paths 方便加载
$:.unshift File.expand_path('../../app', __FILE__)

# 将generator文件载入
Dir["#{File.expand_path('../../lib/generator', __FILE__)}/**/*.rb"].each {|file| require file }

# 载入server models

Dir["#{File.expand_path('../../app/server/actions', __FILE__)}/**/*.rb"].each {|file| require file }
Dir["#{File.expand_path('../../app/server/models', __FILE__)}/**/*.rb"].each {|file| require file }


# 载入db migrations
Dir["#{File.expand_path('../../app/server/db', __FILE__)}/**/*.rb"].each {|file| require file }

# 载入 Server API
require 'server/api/all'

# 载入客户端
require 'client/application'

# Game Init
Dir["#{File.expand_path('../initializer', __FILE__)}/**/*.rb"].each {|file| require file }

# 连接DB
ActiveRecord::Base.establish_connection(YAML.load_file('app/server/config/database.yml')['default'])

