<div class="container">
    <div class="row">
        <div class="box">
            <div class="col-lg-12">
                <hr>
                <h2 class="intro-text text-center">
                    <?= $title; ?>
                </h2>
                <hr>
                <a href="<?= base_url(); ?>fotografia" class="btn btn-primary btn-block">Powrót</a><br>
                <div class="row">
                    <?php

                    for ($i = 0; $i < sizeof($photos); $i++) {
                        $photos_path = base_url() . 'uploads/' . $photos[$i]->name;
                        ?>

                        <div class="col-xs-6 col-md-3"><a href="<?= $photos_path . '.jpg'; ?>" class="thumbnail"
                                                          data-lightbox="galeria"><img
                                    src="<?= $photos_path . '_thumb.jpg'; ?>"
                                    alt="<?= $i; ?>. Fotografia z kategorii <?= $title; ?>"
                                    title="Zdjęcie nr <?= $i; ?>"
                                    style="max-height:160px"></a></div>
                    <?php } ?>

                </div>
            </div>
        </div>
    </div>
</div>

</div>