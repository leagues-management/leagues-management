const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');

async function login(req, res) {
    const {email, password} = req.body
    
}