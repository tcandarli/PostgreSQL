var pgp = require('pg-promise')( /*options*/ );

var cn = {
    host: 'localhost',
    port: 5432,
    database: 'dvdrental',
    user: 'postgres',
    password: 'abc'
};

var db = pgp(cn);

db.one(`SELECT title FROM film WHERE film_id=133`)
    .then(result => {
        console.log(result)
    })
    .catch(error => {
        console.log(error);
    });