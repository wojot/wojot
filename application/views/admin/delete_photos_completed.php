<div class="container">
    <div class="row">
        <div class="box">
            <div class="col-lg-12">
                <hr>
                <?php
                if ($deleted) { ?>
                    <div class="alert alert-success" role="alert">Zdjęcie <?= $name; ?> usunięte</div>
                <?php } else {
                ?>
                <div class="alert alert-danger" role="alert">Zdjęcie nie zostało usunięte!<br>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>