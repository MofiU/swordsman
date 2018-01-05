module Client
  module Helper
    class FontHelper

      def value_label(message)
        success_label(message).ljust(50)
      end

      def title_label(message)
        info_label(message).rjust(20)
      end

      def important_label(message)
        ColorizedString[message].colorize(:magenta)
      end

      def info_label(message)
        ColorizedString[message].colorize(:blue)
      end

      def success_label(message)
        ColorizedString[message].colorize(:green)
      end

      def warning_label(message)
        ColorizedString[message].colorize(:red)
      end

    end
  end
end