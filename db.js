const postgres = require('pg').native;
const pg = require('knex')({
  client: 'pg',
  connection: process.env.DATABASE_URL,
  searchPath: ['knex', 'public'],
});

const logger = (...args) => console.log('>db: ', ...args);

let connected = false;

const client = new postgres.Client(process.env.DATABASE_URL);

async function connect() {
  if (!connected) await client.connect();
  connected = true;
}

async function getUnlocks() {
  await connect();
  const query = pg.select('*').from('public.unlocks').toString();
  logger({ query });
  return client.query(query);
}


module.exports = {
  getUnlocks,
}