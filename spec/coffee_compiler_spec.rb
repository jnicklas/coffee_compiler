require 'spec_helper'

describe CoffeeCompiler do
  let :compiler do
    CoffeeCompiler.new("triple = ((x) -> x * 3); return triple(6)")
  end

  let :invalid_compiler do
    CoffeeCompiler.new("foo ( Bar -> '")
  end

  describe '#compile' do
    it "compiles the coffeescript code" do
      result = compiler.compile
      result.should include('function')
      V8::Context.new.eval(result).should == 18
    end

    it "raises an error when the code is invalid" do
      expect { invalid_compiler.compile }.to raise_error(CoffeeCompiler::SyntaxError)
    end
  end

  describe '#eval' do
    it "evals the coffeescript code" do
      compiler.eval.should == 18
    end
  end
end
