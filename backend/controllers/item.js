// import functions from Item model

import {
    getItems,
    getItemById,
    insertItem,
    updateItemById,
    deleteItemById,
} from "../models/ItemModel.js";

// get all Items
export const showItems = (req, res) => {
    getItems((err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
};


// get single Item
export const showItemById = (req, res) => {
    getItemById(req.params.id, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
};

// create Item
export const createItem = (req, res) => {
    const data = req.body;
    insertItem(data, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
};

// update Item
export const updateItem = (req, res) => {
    const data = req.body;
    const id = req.params.id;
    updateItemById(data, id, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
};


// delete Item
export const deleteItem = (req, res) => {
    const id = req.params.id;
    deleteItemById(id, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
};