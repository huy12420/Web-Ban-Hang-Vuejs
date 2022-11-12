<template>
    <section class="about-section">
        <div class="heading">
            <span>about us</span>
            <h3>Never be caught.</h3>
        </div>

        <div class="row">
            <div class="about-content">

                <div class="about-content-text">
                    <p></p>
                    <p></p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="about-article">
                <h3>Be exclusive, Be Devine, Be yourself.</h3>
            </div>
        </div>

        <div class="row">
            <div id="content" class="col-sm-12">
                <h3 class="title"> Men </h3>
                <div class="row-item">
                    <div class="product-grid col-lg-2">
                        <td>
                            <tr>
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
                            </tr>


                        </td>

                    </div>
                </div>


            </div>

        </div>
    </section>
</template>

<script>
export default {
    name: "About",
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Satisfy&display=swap");

.about-section {
    padding: 2rem 9%;
}

/* // */
.about-section .row {
    width: 100%;
    height: auto;
}

#content {
    min-height: 500px;
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

/* // */
.about-section .about-content {
    display: flex;
    width: 100%;

}

.about-section .about-content .about-content-text {
    font-size: 16px;
    padding-left: 50px;
}

.about-section .about-article {
    margin-top: 50px;
    padding: 10px;
    text-align: center;
    background-color: black;
    width: 100%;
}

.about-section .about-article h3 {
    font-family: 'Satisfy', cursive;
    font-size: 32px;
    color: white;
}
</style>