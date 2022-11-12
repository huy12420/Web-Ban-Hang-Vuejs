<template>
    <div class="row">
        <div id="content" class="col-sm-12">
            <h3 class="title"> Men </h3>
            <div class="row-item">



                <div class="product-grid col-lg-2">

                    <div class="thumb">
                        <div class="image">
                            <img href="#" src="../assets/images/taco/item1.jpg" class="img-responsive"> >
                        </div>
                        <div class="caption">
                            <h4>
                                <a href="#" class="product-name"> Gucci bag </a>
                            </h4>
                            <p class="price"> 3000$ </p>
                        </div>
                        <div class="button-card">
                            <a class="btn" > ADD TO CART </a>
                        </div>


                    </div>
                </div>
                <div class="product-grid col-lg-2">

                    <div class="thumb">
                        <div class="image">
                            <img href="#" src="../assets/images/taco/item1.jpg" class="img-responsive"> >
                        </div>
                        <div class="caption">
                            <h4>
                                <a href="#" class="product-name"> Gucci bag </a>
                            </h4>
                            <p class="price"> 3000$ </p>
                        </div>
                        <div class="button-card">
                            <a class="btn"> ADD TO CART </a>
                        </div>


                    </div>
                </div>










            </div>




        </div>


    </div>

</template>

<script>


export default {
    name: "Item",
    return: { 
        

    },
    method: { 
    }

}
</script>


<style scoped lang="scss">
.row {
    padding-top: 50px;
}


#content {
    min-height: 400px;
    
}

.title {
    display: flex;
    justify-content: space-between;
    border-bottom: 1px solid black;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    font-size: 40px;
    color: black;
    text-decoration: double;
}

.product-grid {
    height: 300px;
    position: relative;
    text-align: center;
    vertical-align: top;
    padding: 7px;
    margin-top: 30px;
    margin-bottom: 20px;
    border: 1px solid transparent;
    border-radius: 3px;
    

}

.product-grid:hover {
    border: 3px solid black;
    transition: .25s;
}

.product-grid .thumb img {
    object-fit: cover;
    height: 200px;
}

.product-grid .thumb h4 a {
    line-height: 18px;
    text-decoration: none;
    color: black;
    padding: 5px;
    margin: 0 auto;
    text-align: center;
    overflow: hidden;
}

.price {
    font-weight: 300;
    color: black;
}

.button-card {
    position: absolute;
    bottom: 0;
    left: calc(50% - 50px);
}

.button-card a {
    text-decoration: none;
    padding: 4px 8px;
    text-transform: uppercase;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
</style>