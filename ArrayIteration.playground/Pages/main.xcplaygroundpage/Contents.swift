/*: Outline
 
 
 # Arrays & array iteration
 
 ### Readings associated with this lab
 
 * [Array](https://github.com/learn-co-curriculum/swift-array-readme)
 * [Array Iteration](https://github.com/learn-co-curriculum/swift-arrayIteration-readme)
 

 */
/*: question1
 ### 1. You're building an app and want to store all of the ingredients added to a cart into an `Array`. The ingredients are "Chips", "Salsa", "Guacamole", and "Red wine". Name this `Array` variable whatever you like, think of a name which makes sense.
 */
var ingredientsCart: [String] = ["Chips", "Salsa", "Guacamole", "Red wine"]






/*: question2
 ### 2. You need to create a list that contains the numbers from 1 to 10. How would you represent this list in code?
 */
var numberList: [Int] = [1,2,3,4,5,6,7,8,9,10]







/*: question3
 ### 3. Take the list of numbers you created in question 2 and print their values in the most efficient way possible. (Hint: for-in loop).
 */
for number in numberList {
    print("Number \(number)")
}







/*: question4
 ### 4. Take the list of shopping cart items you created in question 1 and iterate through it printing each item to the console.
 */
for ingredient in ingredientsCart {
    print("Ingredient: \(ingredient)")
}







/*: question5
 ### 5. Create a function that takes an array of names and greets each person with the following message "Good morning x" <- x being the individuals name. One caveat. If the persons first name is Michael, we want to greet them with the message, "Top of the morning Michael!".
 */
func greeter(nameList: [String]) {
    for name in nameList {
        if name == "Michael" {
            print("Top of the morning Michael!")
        } else {
            print("Good morning \(name)")
        }
    }
}

let friendos: [String] = ["Max", "Dan", "Hugh", "Michael", "Rhiannon"]
greeter(nameList: friendos)





/*: question6
 ### 6. Create a function that takes an array of Ints and returns an array of Ints. This function should look through the array of Ints and create a new array of Ints that only contain integers less than 50.
 */
func weDontLikeMoreThanFifty(inputList: [Int]) -> [Int] {
    var newArrayBelowFifty: [Int] = []
    for item in inputList {
        if item < 50 {
            newArrayBelowFifty.append(item)
        }
    }
    return newArrayBelowFifty
}

var arrayWithBigNumbers: [Int] = [1,5,8,65,78,12,42,91,85,47,23,45,78,91,8,32,27,67]
print(weDontLikeMoreThanFifty(inputList: arrayWithBigNumbers))



//: Here is a [link](https://github.com/learn-co-curriculum/swift-arrayIterationLab-lab/blob/solution/ArrayIteration.playground/Pages/main.xcplaygroundpage/Contents.swift) to the solution.




