// import connection
import db from "../config/database.js";

// get all Items
export const getItems = (result) => {
    db.query("SELECT * FROM item", (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
};

// get single Items
export const getItemById = (id, result) => {
    db.query("SELECT * FROM item WHERE item_id = ?", [id], (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results[0]);
        }
    });
};