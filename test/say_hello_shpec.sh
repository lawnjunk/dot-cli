#include "say_hello.sh"

describe "say_hello.sh"
  describe "say_hello with no arguments"
    it "should print hello world" 
      output=$(say_hello)
      assert equal "$output" "hello world"
    end
  end
  describe "say_hello with arguments"
    it "should print hello slug" 
      output=$(say_hello slug)
      assert equal "$output" "hello slug"
    end
  end
end
