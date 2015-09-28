//: Playground - noun: a place where people can play

/*:
# Welcome to Hack club. The first rule of Hack club is: don't talk about Hack Club*/

//: Let's do some review. We can define a variable as shown below

var myString = "Hello, world"

let pi = 3.14

//: Don't worry about setting a type, Swift does that for you with 'inferred typing'. But, if you want to be super clear, you can 'explicitly type' a variable as shown below.

var myInteger: Int = 10

//: Once we define a variable, we can change it to whatever value we want, so long as it is the same type as the original value ie you can't change a string variable to an integer

myInteger = 5

//: However, if we used let to declare the variable, we can't change its value. Try uncommenting the next line and see what happens.

//pi = 3.1415

//: We also cannot change a normal variable to nothing. Try uncommenting the next line to see what happens when we change myString to nil

//myString = nil

//: We can get around this by making it an optional variable (remember to recomment the previous line otherwise we wont see the output on the right anymore)

var myOptionalString: String? = "Laikh and Tommy are pretty cool"

myOptionalString = nil

myOptionalString = "Holla back"

//: The reason why we have to go through the extra step in allowing a variable to have a value of nil is because it can be dangerous to allow all variables be nil. If we try and access a variable that is nil and it shouldn't be, our app would crash. So in order to use an optional variable, we first have to check if it has a value

//: We could do it like this

if myOptionalString != nil {
    print("Yay! No errors!")
} else {
    print("Give me a value!")
}

//: But, since we're lazy, Swift gives us a faster way to check. This is called 'optional binding'

if let testString = myOptionalString {
    print(testString)
} else {
    print(":(")
}

//: What happens here is we try to assign the value of myOptionalString to testString. If it works, we know myOptionalString is not nil. We can either use testString or myOptionalString, depending on what we want to do. However, if myOptionalString is nil, the if statement won't run.

myOptionalString = nil

if let testString = myOptionalString {
    print(testString)
} else {
    print(":(")
}

//: There is another type of optional called an implicitly unwrapped optional, which means that we make a promise to the compiler that if we use that variable later on, it will have a value (and not be nil). This way we don't have to go through the hassle of unwrapping it when we try to use it.

var myOtherOptionalString: String!

myOtherOptionalString = "Sup, dawg"

print(myOtherOptionalString)

//: But be careful, if your variable has a value of nil and you try to use it, the compiler won't yell at you, but when it comes to runtime, your app will crash because it won't know how to deal with what you're asking it to do.

//: You may have noticed we haven't gone over conditional statements yet, but we already tried to show you them. If you were confused, we apologize (shame on us). Conditional statements in Swift are very similar to conditional statemets in other languages, such as Java. The special thing about Swift conditionals is that they don't need parentheses around the actual condition. Below are some examples

var myVar = 10
var myBool = true

if myVar + 1 == 10 && myBool
{
    print("Yay! We got through")
}
else if myVar == 12
{
    print("This is pretty good too")
}
else
{
    print("awww...")
}

//: Let's look at some data structures. Arrays can either be immutable or mutable depending on if you define them as vars or lets. A let array is equivalent to a Java array while a var array is similar to a Java ArrayList

let myImmutableArray: [Int] = [1, 0, 5]  //creates immutable array with length 3 and values 1, 0, 5

var myMutableArray = [String]() //creates empty string array of length 0


//:# Functions

//: Functions in Swift are like methods in Java. They're basically chunks of code made to perform a specific task that you can call again by using the name that you gave it. An example of a function is:

func square(x: Int) -> Int
{
    return x * x
}

square(5)

//: What's going on here? The function, called square, is taking in one Int parameter, multiplying that by itself, and returning an Int. In Swift, you can pass almost anything in the parameters of a function, including functions (this is called a callback and we'll talk about this a little later). You can also return almost anything, once again including functions. You can also have no parameters and return nothing. Here is an example of a function that takes in multiple parameters and doesn't return anything:

func printPower(base: Int, exponent: Int)
{
    var power = 1
    for(var i = 0; i < exponent; i++)
    {
        power *= base
    }
    print(power)
}

printPower(2, 5)

//: You can see here that without specifying a return type, Swift automatically assumes that the function is void.

//: Here, we can see a function without parameters:

func printStatement()
{
    print("Laikh and Tommy are awesome.")
}

printStatement()

//: Another cool feature Swift has with functions is that you can return multiple values. This group of multiple values is called a tuple. Below is an example of a function that returns a tuple.

func myTupleFunc(name1: String, name2: String) -> (String, String)
{
    return (name1, name2)
}

println(myTupleFunc("Laikh", "Tommy").0)
println(myTupleFunc("Laikh", "Tommy").1)

