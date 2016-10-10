/*: Outline
 
 
 # Arrays & array iteration
 
 ### Readings associated with this lab
 
 * [Array](https://github.com/learn-co-curriculum/swift-array-readme)
 * [Array Iteration](https://github.com/learn-co-curriculum/swift-arrayIteration-readme)
 

 */
/*: question1
 ### 1. You're building an app and want to store all of the ingredients added to a cart. How would you represent this cart in code? The ingredients are "Chips", "Salsa", "Guacamole", "Red wine". Explicitly mark the content of the cart as strings.
 */
var cart: [String] = ["Chips", "Salsa", "Guacamole", "Red Wine"]
var cart1 = ["Chips", "Salsa", "Guacamole", "Red Wine"]
print(cart)

for items in cart {
    print(items)
}
// used cart directly, and it still worked.
/*: question2
 ### 2. You need to create a list that contains the numbers from 1 to 10. How would you represent this list in code? Explicitly mark the content of the cart as numbers.
 */
var listOfNumbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var listOfNumbers1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(listOfNumbers[0]) //should be 1

/*
func printEachNumber(arg: [Int]) {
    for number in listOfNumbers {
        print(number)
    }
}

printEachNumber(arg: listOfNumbers)
 */
/*: question3
 ### 3. Take the list of numbers you created in question 2 and print their values in the most efficient way possible.
 */
func printEachNumber(arg: [Int]) {
    for number in listOfNumbers {
        print(number)
    }
}

printEachNumber(arg: listOfNumbers)
/*: question4
 ### 4. Take the list of shopping cart items you created in question 1 and print their values in the most efficient way possible. Prefix each item in the array with a string of text.
 */
/*
func printEachItemsFromCart(arg1: [String]) {
    for items in cart {
        print("This \(items) is printed by a function")
    }
}
printEachItemsFromCart(arg1: cart)
*/

for items in cart {
    print("This is \(items)")
}
/*: question5
 ### 5. Take the list of shopping cart items you created in question 1 and print their values by passing each item in list to a function to be printed.
 */
func printEachItemsFromCart(arg1: [String]) {
    for items in cart {
        print("This \(items) is printed by a function")
    }
}
printEachItemsFromCart(arg1: cart)
/*: question6
 ### 4. Create a function that takes an array of names and greets each person with the following message "Good morning x" <- x being the individuals name. One caveat. If the persons first name is Michael, we want to greet them with the message, "Top of the morning Michael!".
 */
let namesToIterate: [String] = ["James", "Paul", "Michael", "Michelle", "Pauline"]

func morningGreetingFor(arg1: [String]) {
    for name in namesToIterate {
        if name == "Michael" {
            print("Top of the morning \(name)")
        } else {
            print("Good Morning, \(name)")
        }
    }
}

morningGreetingFor(arg1: namesToIterate)
/*: question7
 ### 7. Create a function that takes an array of Ints (40, 60, 50, 52, 59, 13, 90, 100, 5, 52, 51, 49) and returns an array of Ints. This function should look through the array of Ints and create a new array of Ints that only contain integers less than 50.
 */
let arrayOfInts: [Int] = [40, 60, 50, 52, 59, 13, 90, 100, 5, 52, 51, 49]
var arrayLessThan50: [Int] = []
var rejectedNumberCount = 0

func sortingForLessThan50(arg1: [Int]) ->[Int] {
    for number in arg1 {
        if number < 50 {
            arrayLessThan50.append(number)
        } else {
            rejectedNumberCount += 1
        }
    }
    
    return arrayLessThan50
}

sortingForLessThan50(arg1: arrayOfInts)
print(rejectedNumberCount)