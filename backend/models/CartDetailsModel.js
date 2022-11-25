// import connection
import db from "../config/database.js";

// insert cart Details
export const insertCartDetails = (cartData, result) => {
    db.query("INSERT INTO cart_detail SET ?", cartData, (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results[0]);
        }
    });
};