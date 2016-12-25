/*: Outline
 
 
 # Arrays & array iteration
 
 ### Readings associated with this lab
 
 * [Array](https://github.com/learn-co-curriculum/swift-array-readme)
 * [Array Iteration](https://github.com/learn-co-curriculum/swift-arrayIteration-readme)
 

 */
/*: question1
 ### 1. You're building an app and want to store all of the ingredients added to a cart. How would you represent this cart in code? The ingredients are "Chips", "Salsa", "Guacamole", "Red wine". Explicitly mark the content of the cart as strings.
 */
let cart: [String] = [ "Chips", "Salsa", "Guacamole", "Red Wine"]

print("\(cart)")

/*: question2
 ### 2. You need to create a list that contains the numbers from 1 to 10. How would you represent this list in code? Explicitly mark the content of the cart as numbers.
 */
var first10 : [Int]
 first10 = [1,2,3,4,5,6,7,8,9,10]

print("\(first10)")

/*: question3
 ### 3. Take the list of numbers you created in question 2 and print their values in the most efficient way possible.
 */
for member in first10   {
    print("\(member)")
}


/*: question5
 ### 5. Take the list of shopping cart items you created in question 1 and print their values by passing each item in list to a function to be printed.
 */
func printList(array: [String]) {
var index = 0
for ingredient in array  {
    print("Ingredient \(index) is \(ingredient)")
    index += 1
}
}

printList(array: cart)

/*: question6
 ### 4. Create a function that takes an array of names and greets each person with the following message "Good morning x" <- x being the individuals name. One caveat. If the persons first name is Michael, we want to greet them with the message, "Top of the morning Michael!".
 */
let namesArray: [String] = ["Ramon", "Manuel","Michael", "Juaco", "Albeiro", "Homero", "John Jairo"]

func saluteArray(input: [String]) {
    
    for mem in input {
        
        if mem == "Michael" {
            print("Top of the morning Michael!")
        } else {
            print("Good morning \(mem)")
        }
    
    }
}

saluteArray(input: namesArray)


/*: question7
 ### 7. Create a function that takes an array of Ints (40, 60, 50, 52, 59, 13, 90, 100, 5, 52, 51, 49) and returns an array of Ints. This function should look through the array of Ints and create a new array of Ints that only contain integers less than 50.
 */

func lessThan50(inArray:[Int]) -> [Int] {
    
    var outArray: [Int] = []
    
    for mem in inArray {
        if mem < 50 {
            outArray.append(mem)
        }
    }
    
    return outArray

}


let inputArray: [Int] = [40,60,50,52,59,13,90,100,5,52,51,49]

lessThan50(inArray: inputArray)

