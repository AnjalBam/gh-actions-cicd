const app = require('express')();
const cors = require('cors')
const morgan = require('morgan');
const bodyParser = require('body-parser');

const PORT = 8080;

app.use(cors())
app.use(morgan('combined'));

app.get('/', (req, res) => {
    res.send('welcome to my website');
})

app.listen(PORT, () => {
    console.log(`Listening at http://localhost:${PORT}`);
})