// import express 
import express from "express";
// import functions from controller
import {
    showItems,
    showItemById,
} from "../controllers/item.js";

import {
    showUser,
    createAccount
} from "../controllers/user.js";
import {
    createCart
} from "../controllers/cart.js";


// init express router
const router = express.Router();

////////////////////////// Items ////////////////////////////////
// get all Item
router.get("/api/items", showItems);

// get single Item 
router.get("/api/items/:id", showItemById);

////////////////////////// USER ////////////////////////////////
// get all user
router.get("/api/users/:email", showUser);


// create account
router.post("/api/users/", createAccount);



//////////////////////// Cart /////////////////////////////////
//insert item to cart
router.post("/api/carts/", createCart);




export default router;