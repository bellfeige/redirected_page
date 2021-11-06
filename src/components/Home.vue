<template>
    <!--    <button class="btn btn-primary"-->
    <!--            data-bs-target="#collapseTarget"-->
    <!--            data-bs-toggle="collapse">-->
    <!--        Bootstrap collapse-->
    <!--    </button>-->
    <!--    <div class="collapse py-2" id="collapseTarget">-->
    <!--        This is the toggle-able content!-->
    <!--    </div>-->

    <!--    <div>-->
    <!--        Baidu is Banned-->
    <!--    </div>-->

    <div class="flex-container">
        <div class="flex-item box">
            <div class="">
                <img src="../img/SeekPng.png" width="240" class="img-responsive rounded ">
            </div>
            <div>
                <img src="../img/puppy-looking-up.png" class="figure-img img-fluid rounded" width="320" alt="...">
                <div class="figure-caption"></div>
            </div>
        </div>

        <div class="flex-item box">
            <div>
                <a href="https://google.com/ncr" title=""><img src="../img/google-logo.png" width="480"
                                                               class="img-responsive rounded "></a>
            </div>

        </div>

    </div>
</template>

<script>
    export default {
        name: "Home"
    }
</script>

<style scoped>
    .box{
        margin: 20px;
        padding:20px
    }
    .flex-container {
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-flex-direction: row;
        -ms-flex-direction: row;
        flex-direction: row;
        -webkit-flex-wrap: wrap;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        -webkit-justify-content: center;
        -ms-flex-pack: center;
        justify-content: center;
        -webkit-align-content: center;
        -ms-flex-line-pack: center;
        align-content: center;
        -webkit-align-items: center;
        -ms-flex-align: center;
        align-items: center;
    }

    .flex-item:nth-child(1) {
        -webkit-order: 0;
        -ms-flex-order: 0;
        order: 0;
        -webkit-flex: 0 1 auto;
        -ms-flex: 0 1 auto;
        flex: 0 1 auto;
        -webkit-align-self: auto;
        -ms-flex-item-align: auto;
        align-self: auto;
    }

    .flex-item:nth-child(2) {
        -webkit-order: 0;
        -ms-flex-order: 0;
        order: 0;
        -webkit-flex: 0 1 auto;
        -ms-flex: 0 1 auto;
        flex: 0 1 auto;
        -webkit-align-self: auto;
        -ms-flex-item-align: auto;
        align-self: auto;
    }
</style>