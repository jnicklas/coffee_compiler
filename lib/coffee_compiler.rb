require 'v8'

class CoffeeCompiler
  class SyntaxError < StandardError; end

  attr_reader :code

  def initialize(code)
    @code = code
  end

  def compile
    context['CoffeeScript'].compile(code)
  rescue V8::JSError => e
    raise CoffeeCompiler::SyntaxError, e.message
  end

  def eval
    context.eval(compile)
  end

  def context
    V8::Context.new do |context|
      context.load(File.expand_path('coffee-script/extras/coffee-script.js', File.dirname(__FILE__)))
    end
  end
end
