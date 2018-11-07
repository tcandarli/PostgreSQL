var pgp = require('pg-promise')( /*options*/ );

var cn = {
    host: 'localhost',
    port: 5432,
    database: 'dvdrental',
    user: 'postgres',
    password: 'abc'
};

var db = pgp(cn);

db.one(`SELECT title from film where film_id=133`)
    .then(result => {
        console.log(result)
    })
    .catch(error => {
        console.log(error);
    });