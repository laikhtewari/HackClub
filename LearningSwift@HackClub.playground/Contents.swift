/*:
# Welcome to Hack club. The first rule of Hack club is: don't talk about Hack Club

## Just kidding. Here is a playground with Swift basics*/

//: ## Let's do some review:

//: #### Variables

//:We can define a variable as shown below

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

//: #### Optionals 

//: We can get around this by making it an optional variable (remember to recomment the previous line otherwise we wont see the output on the right anymore)

var myOptionalString: String? = "Laikh and Tommy are pretty cool"

myOptionalString = nil

myOptionalString = "Yay I get a value!"

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

myOtherOptionalString = "I don't like being nil"

print(myOtherOptionalString)

//: But be careful, if your variable has a value of nil and you try to use it, the compiler won't yell at you, but when it comes to runtime, your app will crash because it won't know how to deal with what you're asking it to do.

//: #### Conditional Statements

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

//: #### Loops

//: Let's look at some loops. Swift has a similar structure for 'for' loops and 'while' loops compared to Java, and also has a 'for...in' loop similar to in Python

for var i = 0; i < 10; i++
{
    println("Iteration #\(i)")
}
//If you click on the circle next to the line where it says 10 lines on the right, you will see a box pop up underneat the loop. You can then click on the list icon to see the printed lines

//: We used what's called 'string interpolation to add the int i to the printed string. Thats when you use "My string goes here \(-some non string here-)"

var myBoolean = true
var myIndex = 0
while myBoolean
{
    print("\(myIndex)")
    myIndex++
    if myIndex == 5
    {
        myBoolean = false
    }
}

let myArray = ["Menlo", "Sacred Heart", "Castilleja", "Priory", "Nueva"]
for school in myArray
{
    println("I go to " + school)
}

//: #### Data structures

//: Let's look at some data structures. Arrays can either be immutable or mutable depending on if you define them as vars or lets. A let array is equivalent to a Java array while a var array is similar to a Java ArrayList

let myImmutableArray: [Int] = [1, 0, 5]  //creates immutable array with length 3 and values 1, 0, 5

var myMutableArray = [Int]() //creates empty int array of length 0

for i in 1...5
{
    myMutableArray.append(i)
}

//: One other type of data structure you may use is called a Dictionary. It's like an array of key-value pairs. Basically, each element in a dictionary has two parts: a key and a value. You may use a key to parse through the dictionary and find your value. Since there is a possibility that the key-value pair you are searching for doesn't exist, you must first check to see if it does

var cityStates = ["San Francisco":"California", "New York City": "New York", "Austin":"Texas"]
if let state = cityStates["Austin"]
{
    println("Austin is in " + state)
}
else
{
    println("I'm bad at geography, so I don't know where that is")
}


//:#### Functions

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

var myTuple = myTupleFunc("Laikh", "Tommy")
println(myTuple.0)
println(myTuple.1)

//: ####Classes

//: Now we're getting to the fun stuff. Classes generally group code that you will use multiple times

class Person
{
    var name: String
    var job: String
    
    init (name: String, job: String)
    {
        self.name = name
        self.job = job
    }
}

var laikh = Person(name: "Laikh", job: "Student")

var mrSteinberg = Person(name: "Mr. Steinberg", job: "Teacher")

laikh.job

mrSteinberg.job

class Student: Person {
    var grade: Int
    
    init(grade: Int, name: String)
    {
        self.grade = grade
        
        super.init(name: name, job: "Student")
    }
}

class Teacher: Person {
    var classroom: String
    
    init(classroom: String, name: String)
    {
        self.classroom = classroom
        super.init(name: name, job: "Teacher")
    }
}

var tommy = Student(grade: 10, name: "Tommy")

var mrThibodeaux = Teacher(classroom: "A///", name: "Mr. Thibodeaux")

tommy.grade

mrThibodeaux.classroom