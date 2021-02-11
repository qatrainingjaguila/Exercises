// Memoization - storing function results like a cache
// This requires additional memory, but is useful for computationally expensive functions
// Only referentially transparent functions should be memoized


// Easier to use existing libraries for memoization
// E.g. nanomemoize

// const memoized = nanonmemoise(sum(a,b) => a + b);
// memoized(1,2) first caches, second time pulls from cache

const sum = (a,b) => a+b;

console.log(sum(2,7))

//can be cached locally e.g. in an object
const cache = {
    "2 7":9
}
