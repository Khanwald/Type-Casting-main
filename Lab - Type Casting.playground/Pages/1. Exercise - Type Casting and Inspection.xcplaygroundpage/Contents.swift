/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var a:[Any] = [12,12.5, "hi", true, 23]
print(a)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for x in a{
    if x is Int{
        print("The integer has a value of \(x)")
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var collection:[String: Any] = ["Carl": 23, "Samantha": "Not cool", "Dan": false, "Cal": 34.3]

for (key, value) in collection{
    print("\(key): \(value)")
}
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total:Double = 0
for person in collection{
    if let a = person.value as? Int{
        total += Double(a)
        print(total)
    }
    else if let a = person.value as? Double{
        total += a
        print(total)
    }
    else if person.value is String{
        total += 1
        print(total)
    }
    else if person.value is Bool{
        if let a = person.value as? Bool{
            switch a{
            case true: total += 2
            case false: total -= 3
            }
        }
    }
}

print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2:Double = 0
for person in collection{
    if let a = person.value as? Int{
        total2 += Double(a)
        print(total2)
    }
    else if let a = person.value as? Double{
        total2 += a
        print(total2)
    }
    else if person.value is String{
        let a = person.value as? Int
        print(total2)
    }
}
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
