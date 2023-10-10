isPrime = num => {
    if (num < 2) return false

    for (let i = 2; i < num; i++) {
        if (num % i === 0) return false
    }
    return true
}

// console.log(isPrime(7))
// console.log(isPrime(4))
// console.log(isPrime(2))
// console.log(isPrime(10))
// console.log(isPrime(15485863))
// console.log(isPrime(3548563))

firstNPrimes = n => {
    const array = []

    let i = 1
    while (array.length < n) {
        if (isPrime(i)) array.push(i)
        i += 1
    }
    return array
}

// console.log(firstNPrimes(4))

sumOfNPrimes = n => {
    let sum = 0
    const primes = firstNPrimes(n)

    for (const num of primes) {
        sum += num
    }
    return sum
}

console.log(sumOfNPrimes(0))
console.log(sumOfNPrimes(1))
console.log(sumOfNPrimes(4))