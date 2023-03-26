const express = require('express')
const cors = require('cors');
const pool = require('./config/database')

const app = express()

//middlewares

app.use(cors());
app.use(express.json());

app.get('/', async (req, res) => {
    try {
        const connection = await pool.getConnection();
        const [rows] = await connection.query('SELECT * from teams')
        connection.release();
        res.json(rows)
    }catch(error) {
        console.error(error)
        res.status(500).json({message: "An error ocurred while trying to get the information."})
    }
})

// Initialize server

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
    console.log("Server running on port " + PORT);
})
