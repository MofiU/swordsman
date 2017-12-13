module Swordsman
  class DbCreate < Thor::Group
    include Thor::Actions
    argument :name
    def self.source_root
      File.expand_path('../templates', __FILE__)
    end

    desc 'init database file'
    def create
      SQLite3::Database.new('db/swordsman.db') unless File.exist?('db/swordsman.db')
      puts "Create Database File Successful!"
    end
  end
end

