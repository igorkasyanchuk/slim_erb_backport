require "slim"
require "slim_erb_backport/railtie"
# require 'pry'

module SlimErbBackport
end

module Slim
  class Embedded < Filter
    # ERB engine (uses the Temple ERB implementation)
    class ERBEngine < Engine
      def on_slim_embedded(engine, body, attrs)
        [:multi, [:newline], erb_parser.call(collect_text(body))]
      end

      protected

      def erb_parser
        @erb_parser ||= Temple::ERB::Parser.new
      end
    end
  end
end

Slim::Embedded.send(:register, :erb, Slim::Embedded::ERBEngine)
