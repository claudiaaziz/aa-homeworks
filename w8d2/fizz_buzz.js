fizzBuzz = array => {
    const new_array = []
    for (let i = 0; i < array.length; i++) {
        if (array[i] % 3 !== 0 && array[i] % 5 === 0 || array[i] % 3 === 0 && array[i] % 5 !== 0) {
            new_array.push(array[i])
        }
    }
    return new_array
}

console.log(fizzBuzz([3,45,6]))

