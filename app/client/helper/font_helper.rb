module Client
  module Helper
    class FontHelper

      def menu_label(message)
        ColorizedString[message].colorize(:magenta)
      end

      def primary_label(message)
        ColorizedString[message].colorize(:green).ljust(50)
      end

      def title_label(message)
        ColorizedString[message].colorize(:blue).rjust(20)
      end

    end
  end
end