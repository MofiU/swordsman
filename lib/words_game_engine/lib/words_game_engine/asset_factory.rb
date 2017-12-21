module WordsGameEngine
  module AssetFactory
    extend ActiveSupport::Autoload
    autoload :Asset

    @registry = {}

    def self.registry
      @registry
    end


    def self.define(&block)

      builder_class = Class.new do
        attr_reader :attributes

        def initialize
          @attributes = {}
        end

        def method_missing(name, *args, &block)
          @attributes[name] = args[0]
        end
      end

      definition_class = Class.new do
        define_method :factory do |name, &block|
          new_builder = builder_class.new
          new_builder.instance_eval(&block) if block_given?
          AssetFactory.registry[name] = new_builder
        end
      end

      definition_class.new.instance_eval(&block) if block_given?
    end

    def self.build(name, overrides = {})
      raise FactoryNotRegistry, "Invalid factory name" unless registry.key? name
      attributes = AssetFactory.registry[name].attributes.merge(overrides)
      const_get(name.to_s.classify).new(attributes)
    end

    def self.create(name, overrides = {})
      build(name, overrides = {}).save!
    end

    class FactoryNotRegistry < StandardError; end

  end
end