/*: Outline
 
 
 # Arrays & array iteration
 
 ### Readings associated with this lab
 
 * [Array](https://github.com/learn-co-curriculum/swift-array-readme)
 * [Array Iteration](https://github.com/learn-co-curriculum/swift-arrayIteration-readme)
 

 */
/*: question1
 ### 1. You're building an app and want to store all of the ingredients added to a cart into an `Array`. The ingredients are "Chips", "Salsa", "Guacamole", and "Red wine". Name this `Array` variable whatever you like, think of a name which makes sense.
 */
var ingredients: [String] = ["Chips", "Salsa", "Guacamole", "Red wine"]






/*: question2
 ### 2. You need to create a list that contains the numbers from 1 to 10. How would you represent this list in code?
 */
var list: [Int] = [1,2,3,4,5,6,7,8,9,10]







/*: question3
 ### 3. Take the list of numbers you created in question 2 and print their values in the most efficient way possible. (Hint: for-in loop).
 */
for number in list {
    print(number)
}







/*: question4
 ### 4. Take the list of shopping cart items you created in question 1 and iterate through it printing each item to the console.
 */
for list in ingredients {
    print(list)
}







/*: question5
 ### 5. Create a function that takes an array of names and greets each person with the following message "Good morning x" <- x being the individuals name. One caveat. If the persons first name is Michael, we want to greet them with the message, "Top of the morning Michael!".
 */
func greeting(names: Array<String>) {
    for name in names{
        if ( name == "Micheal") {
            print("Top of the morning \(name)")
        } else {
            print("Good morning \(name)")
        }
    }
}


let listOfNames: [String] = ["Andy","Charlie","Micheal","Bob"]

print(greeting(names: listOfNames))

/*: question6
 ### 6. Create a function that takes an array of Ints and returns an array of Ints. This function should look through the array of Ints and create a new array of Ints that only contain integers less than 50.
 */
var arrayOfInts: [Int] = [10,30,25,55,80,24]
var arrayOfIntsOver50: [Int] = []

func testNumbers(numbers: Array<Int>) -> Array<Int> {
    for number in numbers {
        if( number < 50) {
            arrayOfIntsOver50.append(number)
        }
        
    }
    return arrayOfIntsOver50
}

print(arrayOfInts)
testNumbers(numbers: arrayOfInts)
print(arrayOfIntsOver50)

//: Here is a [link](https://github.com/learn-co-curriculum/swift-arrayIterationLab-lab/blob/solution/ArrayIteration.playground/Pages/main.xcplaygroundpage/Contents.swift) to the solution.




