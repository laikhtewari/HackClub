//: Playground - noun: a place where people can play

/*:
# Welcome to Hack club. The first rule of Hack club is: don't talk about Hack Club*/

//: Let's do some review. We can define a variable as shown below

var myString = "Hello, world"

//: Don't worry about setting a type, Swift does that for you with 'inferred typing'. But, if you want to be super clear, you can 'explicitly type' a variable as shown below.

var myInteger: Int = 10

//: One we define a variable, we can change it to whatever value we want, so long as it is the same type as the original value ie you can't change a string variable to an integer

myInteger = 5

//: We also cannot change a normal variable to nothing. Try uncommenting the next line to see what happens when we change myString to nil

//myString = nil

//: We can get around this by making it an optional variable (remember to recomment the previous line otherwise we wont see the output on the right anymore)

var myOptionalString: String? = "Laikh and Tommy are pretty cool"

myOptionalString = nil

myOptionalString = "Holla back"

//: The reason why we have to go through the extra step in allowing a variable to have a value of nil is because it can be dangerous to allow all variables be nil. If we try and access a variable that is nil and it shouldn't be, our app would crash. So in order to use an optional variable, we first have to check if it has a value

//: We could do it like this

if myOptionalString != nil {
    println("Yay! No errors!")
} else {
    println("Give me a value!")
}

//: But, since we're lazy, Swift gives us a faster way to check

if let testString = myOptionalString {
    println(testString)
} else {
    println(":(")
}

//: What happens here is we try to assign the value of myOptionalString to testString. If it works, we know myOptionalString is not nil. We can either use testString or myOptionalString, depending on what we want to do. However, if myOptionalString is nil, the if statement won't run.

myOptionalString = nil

if let testString = myOptionalString {
    println(testString)
} else {
    println(":(")
}

//: There is another type of optional called an implicitly unwrapped optional, which means that we make a promise to the compiler that if we use that variable later on, it will have a value (and not be nil). This way we don't have to go through the hassle of unwrapping it when we try to use it.

var myOtherOptionalString: String!

myOtherOptionalString = "Sup, dawg"

