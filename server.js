const express = require('express');
const app = express();

app.get('/', (req, res) => {
    const token = req.query.access_token;
    if (token) {
        // Store token in localStorage
        res.send(`<script>
            localStorage.setItem('spotify_token', '${token}');
            window.location.href = 'http://localhost:3000';
        </script>`);
    } else {
        res.send('Authentication failed');
    }
});

app.listen(3001, () => {
    console.log('Redirect handler running');
});
