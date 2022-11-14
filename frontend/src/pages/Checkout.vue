<template>
    <div class="checkout-container">
        <div class="checkout-form-container">
            <form >
                <div class="checkout-heading">
                    <h3>Few more step to place your order<span>Total</span></h3>
            
                </div>

                <div class="form-group details-group">
                    <h4>Shipping Details</h4>
                    <div class="form-group">
                        <input type="text" name="coPhone" id="coPhone" placeholder="Phone number" class="form-control"
                            />
                       
                    </div>

                    <div class="form-group">
                        <input type="text" name="coAddress" id="coAddress" placeholder=""
                            class="form-control"  />
                       
                    </div>
                </div>

                <div class="form-group details-group">
                    <h4>Payment Method</h4>
                    <div class="form-group">
                        <div class="form-group">
                            <input type="radio" name="payment" value="cash" id="paymentCash"
                                 /><span>Cash</span>
                            <input type="radio" name="payment" value="card" id="paymentCard"
                                 /><span>Card (Visa)</span>
                        </div>
                        
                    </div>


                    <div >
                        <div class="form-group">
                            <input type="text" name="coCardNum" placeholder="Enter your card number" id="coCardNum"
                                class="form-control" size="16" maxlength="16" />
                           
                        </div>

                        <div class="form-group">
                            <input v-upcase type="text" name="coCardName" placeholder="Enter the name in your card "
                                id="coCardName" class="form-control" />
                            
                        </div>

                        <div class="form-group">
                            <div class="form-control">
                                <span
                                    style="font-size: 1.6rem; position: absolute; margin-left: -5px; margin-top: -11px;">Expiry
                                    Date:
                                </span>
                                <input
                                    style="position: absolute; margin-left: 100px; margin-top: -12px; background: inherit;"
                                    type="month" name="coCardEx" id="coCardEx" 
                                    />
                            </div>
                          
                        </div>

                        <div class="form-group">
                            <input type="text" name="coCardCvv" placeholder="CVV" id="coCardCvv" class="form-control"
                                />
                           
                        </div>
                    </div>
                </div>

                <div  class="form-group">
                    <input type="submit" value="CONFIRM & PAY" class="btn"
                        />
                </div>
            </form>
        </div>
    </div>
</template>

<script>

export default {
    name: "Checkout",

    data() {
        
    },

    
};
</script>
<style scoped>
.checkout-container {
    padding: 2rem 9%;
}

.checkout-container .checkout-form-container {
    background: #fff;
    height: 90vh;
}

.checkout-container .checkout-form-container form {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -42%);
    max-width: 70rem;
    width: 100%;
    box-shadow: 0 1rem 1rem rgba(0, 0, 0, 0.05);
    border: 0.1rem solid rgba(0, 0, 0, 0.2);
    padding: 2rem;
    border-radius: 0.5rem;
    animation: fadeUp 0.4s linear;
}

.checkout-container .checkout-form-container form h3 {
    padding-bottom: 1rem;
    font-size: 2rem;
    text-transform: uppercase;
    color: #130f40;
    margin: 0;
}

.checkout-container .checkout-form-container form .form-control {
    margin: 0.7rem 0;
    border-radius: 0.5rem;
    background: #f7f7f7;
    padding: 2rem 1.2rem;
    font-size: 1.6rem;
    color: #130f40;
    text-transform: none;
    width: 100%;
    border: none;
}

.checkout-container .checkout-form-container form label {
    font-size: 2rem;
    margin: 0;
    padding: 0;
}

.checkout-container .checkout-form-container form span {
    font-size: 18px;
    padding-left: 5px;
    padding-right: 40px;
}

.checkout-container .checkout-form-container form .btn {
    margin: 1rem 0;
    width: 100%;
    text-align: center;
}

.checkout-container .checkout-form-container form p {
    padding-top: 1rem;
    font-size: 1.5rem;
    color: #666;
    margin: 0;
}

.checkout-container .checkout-form-container form p a {
    color: #27ae60;
}

.checkout-container .checkout-form-container form p a:hover {
    color: #130f40;
    text-decoration: underline;
}

.checkout-container .checkout-form-container form .form-group {
    margin: 0;
}

.checkout-container .checkout-form-container form .form-group.details-group {
    margin-top: 40px;
}

.checkout-container .checkout-form-container form .form-group .error-mess {
    font-size: 1.5rem;
    position: relative;
    color: rgb(243, 47, 47);
    margin: 0;
    padding: 0;
}

.checkout-container .checkout-form-container form .checkout-heading h3 {
    display: flex;
    justify-content: space-between;
}

.checkout-container .checkout-form-container form .checkout-heading h3 span {
    padding-right: 0px;
    color: #f38609;
}

.checkout-container .checkout-form-container form .checkout-heading h3:first-of-type span {
    padding-right: 0px;
    color: #130f40;
}
</style>
