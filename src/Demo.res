let greetings = "hello!"
let score = 10
let newScore = 10 + score

Console.log(newScore)

module A = {
  %%private(let a = 3)
  let b = 4
  let c = a + b
}

Console.log(A.c)

let add = (a, b) => a + b
Console.log(add(score, newScore))

let testTypeAnnote: string = "passed"

// Test type alias
type scoreType = int
let x: scoreType = 5

type intCoordinates = (int, int, int)
type floatCoordinates = (float, float, float)

let a: intCoordinates = (5, 2, 1)
let b: floatCoordinates = (5.2, 2.1, 1.2)

type coordinates<'a> = ('a, 'a, 'a)

let c: coordinates<int> = (2, 3, 8)
let d: coordinates<float> = (2.2, 31.1, 8.2)

// let inferred cook's the type
let buddy = (2, 3, 4)

let listOfGreetings = ["Hello", "world", "how are you?"]

type result<'a, 'b> =
  | Ok('a)
  | Error('b)

type myPayload = {data: string}
type myPayloadResults<'errorType> = array<result<myPayload, 'errorType>>

let payloadResults: myPayloadResults<string> = [
  Ok({data: "ok"}),
  Ok({data: "sasuga"}),
  Error("Something went wrong"),
]

// but inferred get the types: sasuga
// let payloadResults = [
//   Ok({data: "ok"}),
//   Ok({data: "sasuga"}),
//   Error("Something went wrong"),
// ]

// Recursive types
type rec person = {
  name: string,
  friends: array<person>,
}

// mutually recursive types using 'and'
type rec student = {taughtBy: teacher} and teacher = {students: array<student>}

// type escape hatch; or like interop or port on elm
external convertToFloat : int => float = "%identity"
let age = 10
let gpa = 2.1 +. convertToFloat(age)
Console.log(gpa)
