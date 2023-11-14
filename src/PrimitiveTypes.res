// Strings
let greeting = "Hello World"
let multilineGreeting = "Hello
World"

let greetingResult = greeting ++ " " ++ multilineGreeting
Console.log(greetingResult)

Console.log(`Text: ${greeting}`)

// Char
let firstLetterOfAlphabet = 'a'

// String to Char
Console.log(String.get("a", 0))
// Char to String
Console.log(String.make(1))

// Regex
let r = %re("/b/g")

// Float opertors: +., -., *., /.
Console.log(2.1 +. 3.2)

// unit: undefined or void
let x = Math.random()
Console.log(x)

// unknown: represent value with contents that are mystery or are not 100% guaranteed

// tuple - immutable
let ageAndName = (24, "Lil' Rescript")
Console.log(ageAndName)

// record or object - immutable
type person = {
  age: int,
  name: string,
  personType?: string,
}

let me = {
  age: 4,
  name: "Doe",
}

let name = me.name
let meNextYear = {...me, age: me.age + 1}
Console.log(meNextYear)
Console.log(me.personType)

let maybePersonType = Some("Human")
let human = {...me, personType: ?maybePersonType}
Console.log(human)

let isRescript = switch me.personType {
| Some("Rescript") => true
| _ => false
}
Console.log(isRescript)

let personTypeWasSet = switch human {
| {personType: ?None} => false
| {personType: ?Some(_)} => true
}
Console.log(personTypeWasSet)
