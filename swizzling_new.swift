dynamic func foo() {
  print("foo")
}

@_dynamicReplacement(for: foo)
func bar() {
  print("bar")
}

foo() 

// prints
// bar

