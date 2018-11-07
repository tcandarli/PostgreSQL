var pgp = require('pg-promise')( /*options*/ );

var cn = {
    host: 'localhost',
    port: 5432,
    database: 'dvdrental',
    user: 'postgres',
    password: 'abc'
};

var db = pgp(cn);

// db.one(`SELECT * FROM film WHERE film_id=133`)
//     .then(result => {
//         console.log(result) // printing the result
//     })
//     .catch(error => {
//         console.log(error); // printing the error
//     });

// db.one(`SELECT * FROM film WHERE film_id=234`)
//     .then(result => {
//         console.log(`Title: ${result.title} replacement cost: ${result.replacement_cost}`);
//     })
//     .catch(error => {
//         console.log(error)
//     });

// db.one(`SELECT * FROM customer WHERE customer_id=30`)
//     .then(result => {
//         console.log(`Full name: ${result.first_name} ${result.last_name}`);
//     })
//     .catch(error => {
//         console.log(error);
//     })

// db.one(`SELECT SUM(amount) FROM payment;`)
//     .then(result => {
//         console.log(`Sum of amount: ${result.sum}`);
//     })
//     .catch(error => {
//         console.log(error);
//     });

// db.one(`select first_name, last_name 
// from customer
// where customer_id = (select customer_id
// from payment
// group by customer_id
// order by sum(amount) desc
// limit 1);`)
//     .then(result => {
//         console.log(`${result.first_name} ${result.last_name}`);
//     })
//     .catch(error => {
//         console.log(error)
//     });

// for (let i = 3; i < 8; i++) {
//     db.one(`select first_name, last_name
// from customer
// where customer_id in (${i});`)
//         .then(result => {
//             console.log(`${result.first_name} ${result.last_name}`);
//         })
//         .catch(error => {
//             console.log(error);
//         });
// }

// db.any(`select first_name, last_name
// from customer
// where customer_id in (3, 4, 5, 6, 7, 8);`)
//     .then(result => {
//         result.forEach(element => {
//             console.log(`${element.first_name} ${element.last_name}`);
//         });
//     })
//     .catch(error => {
//         console.log(error);
//     });

db.any(`select title from film
where title like 'N%'`)
    .then(result => {
        result.forEach(element => {
            console.log(`${element.title}`);
        });
    })
    .catch(error => {
        console.log(error);
    });