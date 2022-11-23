// import express 
import express from "express";
// import functions from controller
import {
    showItems,
    showItemById,


} from "../controllers/item.js";

import {
    showAUser,
    createAccount
} from "../controllers/user.js";



// init express router
const router = express.Router();

////////////////////////// Items ////////////////////////////////
// get all Item
router.get("/api/items", showItems);

// get single Item 
router.get("/api/items/:id", showItemById);

////////////////////////// USER ////////////////////////////////
// get all user
router.get("/api/users/:email", showAUser);
// create account
router.post("/api/users/", createAccount);
export default router;