const pool = require('../config/database');


async function getByUUID(uuid) {
    const connection = await pool.getConnection();
    const [rows] = await connection.query('SELECT * from teams')
    connection.release();
    res.json(rows)
}