const titleize = (array, cb) => {
    array.map(name => `Mx. ${name} Jingleheimer Schmidt`).forEach(name => cb(name))
}

const printCallback = name => console.log(name);

titleize(["Mary", "Brian", "Leo"], printCallback);



