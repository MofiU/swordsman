module Client
  module Helper
    class PromoteHelper < Thor

      desc "overwrite say", "system tip"
      def say(message, color = :black)
        super ColorizedString[message].colorize(color)
      end

      desc "overwrite ask", "system ask"
      def ask(message, color = :green)
        super ColorizedString[message].colorize(color)
      end

      desc "overwrite yes?", "system confirm"
      def yes?(message, color = :red)
        super ColorizedString[message].colorize(color)
      end
    end
  end
end