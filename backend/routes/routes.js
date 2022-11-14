// import express 
import express from "express";
// import functions from controller
import {
    showItems,
    showItemById,
    createItem,
    // updateItem,
    // deleteItem,
} from "../controllers/item.js";

import {
    showAUser,
    createAccount
} from "../controllers/user.js";

import {
    addItems,
    getItem,
    // updateItem,
    allItems,
    deleteItem,
    deleteItems
} from "../controllers/cart.js";


// init express router
const router = express.Router();

////////////////////////// Items ////////////////////////////////
// get all Item
router.get("/api/items", showItems);

// get single Item 
router.get("/api/items/:id", showItemById);

// create Item
router.post("/api/items", createItem);

//update Item
// router.put("/api/items/:id", updateItem);

// delete Item
router.delete("/api/items/:id", deleteItem);



////////////////////////// USER ////////////////////////////////
// get all user
router.get("/api/users/:email", showAUser);

// create account
router.post("/api/users/", createAccount);



////////////////////////// CART ////////////////////////////////
// add to cart
router.post("/api/cartItem", addItems);

// get a item in cart
router.get("/api/cartItem/:user_id/:item_id", getItem);

// get all items by user id
router.get("/api/cartItem/:id", allItems);

// update item qty
// router.put("/api/cartItem/", updateItem);

// delete a item in cart
router.delete("/api/cartItem/:user_id/:item_id", deleteItem);

// delete all items in cart
router.delete("/api/cartItem/:id", deleteItems);
// export default router
export default router;