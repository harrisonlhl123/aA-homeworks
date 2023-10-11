function titleize(names, callback) {
    let newName = names.map(name => `Mx ${name} Jingleheimer Schmidt`);
    callback(newName)
}

titleize(["Mary", "Brian", "Leo"], (names) => {
    names.forEach(name => console.log(name));
})

function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function () {
    console,log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
}

Elephant.prototype.grow = function () {
    this.height = this.height + 12;
}

Elephant.prototype.addTrick = function (trick) {
    this.tricks.push(trick);
}

Elephant.prototype.play = function() {
    trickIndex = Math.floor(Math.random() * this.tricks.length);

    console.log(`${this.name} is ${this.tricks[trickIndex]}!`)
}

Elephant.paradeHelper = function (elephant) {
    console.log(`${elephant.name} is trotting by!`);
}

function dinerBreakfast() {
    let order = "I'd like cheesy scrambled eggs please.";
    console.log(order);

    return function (food) {
        order = `${prder.slice(0, order.length - 8)} and ${food} please.`;
        console.log(order);
    }
}

// Simple Timeout

window.setTimeout(function () {
    alert('HAMMER TIME!');
  }, 5000);
  
  // // Timeout with a Closure
  
  function hammerTime (time) {
    window.setTimeout(function () {
      alert(`${time} is HAMMER TIME!`);
    });
  }
  
  // Some tea? Some biscuits?
  
  const readline = require('readline');
  
  const reader = readline.createInterface({
    // it's okay if this part is magic; it just says that we want to
    // 1. output the prompt to the standard output (console)
    // 2. read input from the standard input (again, console)
  
    input: process.stdin,
    output: process.stdout
  });
  
  function teaAndBiscuits () {
    reader.question('Would you like some tea?', function (res) {
      console.log(`You replied ${res}.`);
      reader.question('Would you like some biscuits?', function (res2) {
        console.log(`You replied ${res2}.`);
        
        const first = (res === 'yes') ? 'do' : 'don\'t';
        const second = (res2 === 'yes') ? 'do' : 'don\'t';
  
        console.log(`So you ${first} want tea and you ${second} want biscuits.`);
        reader.close();
      });
    });
  }
  
  // Cats and dogs
  
  function Cat () {
    this.name = 'Markov';
    this.age = 3;
  }
  
  function Dog () {
    this.name = 'Noodles';
    this.age = 4;
  }
  
  Dog.prototype.chase = function (cat) {
    console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`)
  };
  
  const Markov = new Cat ();
  const Noodles = new Dog ();
  
  // Method style
  
  Noodles.chase(Markov);
  
  Noodles.chase.call(Markov, Noodles);
  Noodles.chase.apply(Markov, [Noodles]);
