const { types, Pool } = require('pg');

const timestampOID = 1114;
types.setTypeParser(timestampOID, (str) => new Date(Date.parse(str + '+0000')));

const pool = new Pool({
  connectionString:
    'postgres://student:alchemy@dvdrental.csqshthfvvnr.us-west-2.rds.amazonaws.com:5432/dvdrental',
  ssl: process.env.PGSSLMODE && { rejectUnauthorized: false },
});

module.exports = pool;
