// import express
import express from "express";
// import cors 
import cors from "cors";
// import multer
import multer from "multer";
// import routes
import router from "./routes/routes.js";

import path from "path";
import { fileURLToPath } from 'url';
const __filename = fileURLToPath(
    import.meta.url);

const __dirname = path.dirname(__filename);

const upload = multer({
    dest: './asset/'
})

const app = express();

//use cors
app.use(cors());
// use express json
app.use('/asset', express.static(path.join(__dirname + '/asset')));
app.use(express.json())
app.use(express.urlencoded({ extended: true }));



// use router
app.use(router);

app.get('/', function(req, res) {
    res.json({ message: 'Welcome Mr Huy !' });
});

// PORT
const PORT = process.env.PORT || 8081;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}.`);
});