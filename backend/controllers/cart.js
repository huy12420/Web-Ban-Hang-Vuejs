import {
    insertCart
} from "../models/CartModel.js";

// Insert item to cart 
export const createCart = (req, res) => {
    const data = req.body;
    insertCart(data, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
};