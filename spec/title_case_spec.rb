require("rspec")
require("pry")
require("title_case")

describe ("String#title_case") do
  it ("capitalizes the word") do
    expect("tyler".title_case()).to(eq("Tyler"))
  end

  it ("capitalizes the first letter of the multiple words") do
    expect("tyler james".title_case()).to(eq("Tyler James"))
  end

  it ("does not capatilize the words 'but', 'if', 'is', 'a' 'the', 'of', 'and', 'or'") do
    expect("tyler and or james".title_case()).to(eq("Tyler and or James"))
  end

  it ("does capatilize the words 'but', 'if', 'is', 'a' 'the', 'of', 'and', 'or' if these words are the first word in the sentence") do
    expect("if james".title_case()).to(eq("If James"))
  end

  it ("does not capatilize the letter 'a'") do
    expect("a story a".title_case()).to(eq("A Story a"))
  end
end
