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

// insert Item
export const insertItem = (data, result) => {
    db.query("INSERT INTO item SET ?", data, (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results[0]);
        }
    });
};

// update Item
export const updateItemById = (data, id, result) => {
    db.query("UPDATE item SET item_name = ?, item_price = ? WHERE item_id = ?", [data.item_name, data.item_price, id], (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
};


// delete Item
export const deleteItemById = (id, result) => {
    db.query("DELETE FROM item WHERE item_id = ?", [id], (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
};