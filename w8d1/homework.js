function madLib(verb, adjective, noun) {
    console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`)
}

// madLib('make', 'best', 'guac')
// "We shall MAKE the BEST GUAC."

function isSubstring(string, substring) {
    return string.includes(substring)
}

// console.log(isSubstring("time to program", "time"))
// true

// console.log(isSubstring("Jump for joy", "joys"))
// false

function fizzBuzz(array) {
    const fizzBuzzArr = []

    array.forEach(ele => {
        if ((ele % 3 === 0 || ele % 5 === 0) && !(ele % 3 === 0 && ele % 5 === 0)) {
            fizzBuzzArr.push(ele)
        }
    })

    return fizzBuzzArr
}

const inputArray = [1, 3, 5, 9, 10, 12, 15, 18]
const result = fizzBuzz(inputArray)
// console.log(result)


function isPrime(num) {
    if (num < 2){
        return false
    }

    for (let i = 2; i < num; i++){
        if (num % i === 0){
            return false
        }
    }

    return true
}

// console.log(isPrime(2))
// true

// console.log(isPrime(10))
// false

// console.log(isPrime(15485863))
// true

// console.log(isPrime(3548563))
// false

function sumOfNPrimes(n){
    let sum = 0
    let countPrimes = 0
    let i = 2

    while (countPrimes < n){
        if (isPrime(i)) {
            sum+=i
            countPrimes++
        }
        i++
    }

    return sum
}

console.log(sumOfNPrimes(0))
// 0
console.log(sumOfNPrimes(1))
// 2
console.log(sumOfNPrimes(4))
// 17