const app = require('express')();
const PORT = 8080;

app.get('/', (req, res) => {
    res.send('welcome to my website!!!!');
})

app.listen(PORT, () => {
    console.log(`Listening at http://localhost:${PORT}`);
})