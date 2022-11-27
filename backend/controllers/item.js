// import functions from Item model

import {
    getItems,
    getItemById,
} from "../models/ItemModel.js";
// get all Items
export const showItems = (req, res) => {
    getItems((err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results)
        }
    });
};
// get single Item
export const showItemById = (req, res) => {
    getItemById(req.body.id, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
};