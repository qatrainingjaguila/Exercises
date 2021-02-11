// Other ways of calling functions

const compute = (x,y) => x+y

// still only takes context or object, then the first 2 params
 const c = compute.call(null,1,2,3)

// Needs params in an array
 const d = compute.apply(null,[2,3,4])

 const person = {
     name = "Ned",
     age = "20"
 }

const getName = () => {
    return this.name;
}

const e = getName.call(person)

console.log(e)