require 'rails/generators/migration'
require 'rails/generators/active_record'

module ChalkDust
  module Generators
    class InstallMigrations < Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path("../templates", __FILE__)

      desc "Generates (but does not run) the migrations for chalk dust"
      def install_migrations
        migration_template "migration.rb", "db/migrate/chalk_dust_create_tables.rb"
      end
      def self.next_migration_number(dirname)
        ActiveRecord::Generators::Base.next_migration_number(dirname)
      end
    end
  end
end
