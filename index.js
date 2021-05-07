const app = require('express')();
const cors = require('cors')
const morgan = require('morgan');
const bodyParser = require('body-parser');

const PORT = 8080;

app.use(cors())
app.use(morgan('combined'));
app.use(bodyParser.json({extended: true, urlEncoded: true}))

app.get('/', (req, res) => {
    res.send({'message': 'It works!!'});
})

app.listen(PORT, () => {
    console.log(`Listening at http://localhost:${PORT}`);
})