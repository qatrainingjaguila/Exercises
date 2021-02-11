const compute = (x,y) => x+y;

console.log(compute(3,4))

// Pure functions produce the same output for the same inputs without side effects

const greet = (name) => `Hi,${name}`;

console.log(greet("Hans"))

// This function is NOT PURE because the output is different for the same input
const today = () => new Date(); 

// slice is pure, always the same output for an input
const arr = [0,1,2,3,4,5];
const r = arr.slice(2,5);

console.log(r);

//splice mutates the input
const arr1= [0,1,2,3,4,5];
arr1.splice(0,1);
arr1.splice(0,1); //produces a different output for the same inputs

