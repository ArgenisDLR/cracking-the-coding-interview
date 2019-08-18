func isPalindromePermutation(word: String) -> Bool {
  // create an empty Set of Characters
  var oddCharacters: Set<Character> = []
  
  // iterate over the array
  for char in word {
    // checking if the array contains the element
    if oddCharacters.contains(char) {
      // remove it if it does
      oddCharacters.remove(char)
    } else {
      // else , insert the element
      oddCharacters.insert(char)
    }
  }
  // return length of the array if it's less than or equal to 1
  return oddCharacters.count <= 1
}

// True
print(isPalindromePermutation(word: "racecar"))
print(isPalindromePermutation(word: "hannah"))

// False
print(isPalindromePermutation(word: "truck"))
print(isPalindromePermutation(word: "habits"))
