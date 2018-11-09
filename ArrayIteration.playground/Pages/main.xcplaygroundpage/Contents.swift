/*: Outline
 
 
 # Arrays & array iteration
 
 ### Readings associated with this lab
 
 * [Array](https://github.com/learn-co-curriculum/swift-array-readme)
 * [Array Iteration](https://github.com/learn-co-curriculum/swift-arrayIteration-readme)
 

 */
/*: question1
 ### 1. You're building an app and want to store all of the ingredients added to a cart into an `Array`. The ingredients are "Chips", "Salsa", "Guacamole", and "Red wine". Name this `Array` variable whatever you like, think of a name which makes sense.
 */
var shoppingCart = [String]()
shoppingCart.append("Chips")
shoppingCart.append("Salsa")
shoppingCart.append("Guacamole")
shoppingCart.append("Red Wine")
/*: question2
 ### 2. You need to create a list that contains the numbers from 1 to 10. How would you represent this list in code?
 */
var numberList = [Int]()

for number in 1...10 {
    numberList.append(number)
}
/*: question3
 ### 3. Take the list of numbers you created in question 2 and print their values in the most efficient way possible. (Hint: for-in loop).
 */
for number in numberList {
    print(number)
}
/*: question4
 ### 4. Take the list of shopping cart items you created in question 1 and iterate through it printing each item to the console.
 */
for item in shoppingCart {
    print(item)
}
/*: question5
 ### 5. Create a function that takes an array of names and greets each person with the following message "Good morning x" <- x being the individuals name. One caveat. If the persons first name is Michael, we want to greet them with the message, "Top of the morning Michael!".
 */
func greet(people: [String]) {
    for person in people {
        if person == "Michael" {
            print("Top of the morning Michael!")
        } else {
            print("Good morning \(person)!")
        }
    }
}

var names = ["Amanda", "Bob", "JoAnn", "Michael", "Larry", "Jason", "Tommy"]
greet(people: names)
/*: question6
 ### 6. Create a function that takes an array of Ints and returns an array of Ints. This function should look through the array of Ints and create a new array of Ints that only contain integers less than 50.
 */
func splitLessThan50(intArray: [Int]) -> [Int] {
    var newIntArray = [Int]()
    
    for number in intArray {
        if number < 50 {
            newIntArray.append(number)
        }
    }
    
    return newIntArray
}

let nums = [31, 55, 64, 17, 42, 58, 101, 21, 9]
print(splitLessThan50(intArray: nums))
//: Here is a [link](https://github.com/learn-co-curriculum/swift-arrayIterationLab-lab/blob/solution/ArrayIteration.playground/Pages/main.xcplaygroundpage/Contents.swift) to the solution.
