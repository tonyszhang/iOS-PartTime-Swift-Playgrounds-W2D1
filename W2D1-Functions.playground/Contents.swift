
//: # Lighthouse Labs
//:
//: ## Intro to Swift
//: ### Functions
//:

//: In the last playground, we saw how to print different things depending on conditions. We printed "There are 100 bicycles" when we had 100 bicycles and "There is 1 bicycle" when we had 1 bicycle.
//:
//: This seems like a useful bit of code, so in this playground we're going to turn it into a "function" so we can easily repeat it.
//: Here is an example function:

func sayHello() {
    print("ah, hello!")
}

//: Notice that the playground doesn't show anything to the left of the `print` statement. That's because this code hasn't run. We've created a function called `sayHello`, and described what that function does, but we havn't run the `sayHello` function yet.
//: In order to run it, we have to *call* the `sayHello` function. Let's do that now by uncommenting this line (We comment out a line by putting // in front of the line of code. This makes the playground not run this line of code. To uncomment a line remove the // from the front of it. This will allow the playground to run this line of code):

sayHello()

//: The power of writing a function is that we can now repeat this code whenever we want. Feel free to call `sayHello` a few times below:

sayHello()
sayHello()
sayHello()

//: Now our `sayHello` function is pretty cool, but we might want to say hello to a specific person.
//: Functions can take one or more "parameters" or inputs, and do something with that input. Take this example function:

func greet(name: String) {
    print("Ah! Hello, \(name)")
}

//: This is a function that takes a single `String` as a parameter, and uses it to greet someone by name.

//: ### Challenge 1
//:
//: Try to call this function with your name, so it greets you.
//:
//: Hint: put your name, wrapped in quotes, between the parentheses `()`.

greet(name: "Tony")


//: ### Challenge 2
//:
//: Now take the code your wrote in the last playground to print out a grammatical description of our bicycleCount, and write a function that takes in an Int representing how many bicycles we have, and prints out a description of how many bicycles we have. You can call the function `pluralize`.

func pluralize(_ bicycleCount: Int) {
    
    if (bicycleCount == 1) {
        print("There is 1 bicycle")
    } else if (bicycleCount == 0) {
        print("There are zero bicycles")
    } else {
        print("There are \(bicycleCount) bicycles")
    }

}

// Test it by uncommenting these lines:

pluralize(1)
pluralize(0)
pluralize(100)

//: Not only can functions take in parameters, but they can return values. So far we've only written functions that don't return anything, they just print stuff. Here is an example of a function that takes in an Int and returns an Int

func increment(input: Int) -> Int {
    let newValue = input + 1
    return newValue
}

var result = increment(input: 10)

// In this example the returned Int is stored inside the variable `result`.


//: ### Challenge 3
//:
//: Using the `increment` function as an example, re-write the `pluralize` function (call it `pluralizedString`) so it returns a String instead of printing.


func pluralizedString(_ bicycleCount: Int) -> String {
    
    var newString: String
    
    if (bicycleCount == 1) {
        newString = "There is 1 bicycle"
    } else if (bicycleCount == 0) {
        newString = "There are zero bicycles"
    } else {
        newString = "There are \(bicycleCount) bicycles"
    }
    
    return newString
}

//print(pluralizedString(100))

// Test it by uncommenting the lines below:

var str1 = pluralizedString(1)
var str2 = pluralizedString(0)
var str3 = pluralizedString(100)


//: ## Bonus Challenge
//:
//: Our current pluralize/pluralized functions can only pluralize a bicycle count. What if we want to pluralize other kinds of things?
//:
//: One way would be to take an input word as well as a count and add "s" to the end of it. Something like:

// pluralizedWord("car", 2) // returns "cars"

//: But, since english is a silly language, adding "s" doesn't always make a correct pluralization. Irregularities are common. Think of octopus/octopi, sheep/sheep and man/men.
//: So let's make it even better, we want a fuction called pluralizedWord that takes in 3 inputs:
//:
//: 1) a singular noun string (e.g. "bicycle")
//: 2) a plural noun string (e.g. "bicycles")
//: 3) a count of how many (e.g. 100)
//:

func pluralizedWord(_ singularNoun: String, _ pluralNoun: String, _ count: Int) -> String {

    var newString: String
    
    if (count == 1) {
        newString = "There is 1 \(singularNoun)"
    } else if (count == 0) {
        newString = "There are zero \(pluralNoun)"
    } else {
        newString = "There are \(count) \(pluralNoun)"
    }
    
    return newString
}


func createUser(_ name: String, _ occupation: String) {
    print("User's name = \(name)")
}
func createUser2(name: String, age: Int) {
    print("User's age = \(age)")
}
var user1 = createUser("Raeid", "Engineer")
var user2 = createUser2(name: "Raeid", age: 78)

// Test your function by uncommenting:

pluralizedWord("octopus", "octopi", 1)
pluralizedWord("woman", "women", 2)
pluralizedWord("apple", "apples", 0)

// You might have noticed that when we have a function that takes multiple inputs, we have to explicitly write out all input names other than the first one e.g. `pluralNoun` and `count`, seen above. (Not true anymore)




//: THE END


