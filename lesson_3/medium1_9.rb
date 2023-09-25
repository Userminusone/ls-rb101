def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

puts bar(foo)

=begin

The output of this program will be "no". This is because the invocation of foo, regardless of the value of its parameter, will return "yes". The invocation of bar with the argument "yes" as returned by foo will return "no", since bar returns "yes" if its parameter is "no" and returns "no" otherwise. (since param == "no" is only true when param has the value "no")

=end