// import connection
import db from "../config/database.js";

// insert Cart
export const insertCart = (data, result) => {
    var a;
    db.query("INSERT INTO CART(TOTAL_DIFFER_ITEMM,TOTAL_PRICE) VALUES(" + data.TOTAL_DIFFER_ITEMM + ",'" + data.TOTAL_PRICE + "')", {}, (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            a = results[0];
        }
    });
    result(null, a);
};