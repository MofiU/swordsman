module Swordsman
  class DbCreate < Thor::Group
    include Thor::Actions
    argument :name
    def self.source_root
      File.expand_path('../templates', __FILE__)
    end

    desc 'init database file'
    def create
      # 在mysql下，由于字符集编码问题，会导致Model.create 失败，所以请在自己的机器上手动创建database、
      # sqlite3 由于无法存储中文已被舍弃
      # config = YAML.load_file('app/server/config/database.yml')['development']
      # client = Mysql2::Client.new(config.except('database'))
      # client.query("CREATE DATABASE #{config['database']}")
      puts "由于字符集编码问题，该操作请在私人机器上手动完成， 请配置utf_8 utf8_bin"
    end
  end
end

