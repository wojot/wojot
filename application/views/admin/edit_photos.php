<div class="container">
    <div class="row">
        <div class="box">
            <div class="col-lg-12">
                <hr>
                <h2 class="intro-text text-center">
                    <?= $title; ?>
                </h2>
                <hr>
                <div class="row">
                    <?php

                    for ($i = 0; $i < sizeof($photos); $i++) {
                        $photos_path = base_url() . 'uploads/' . $photos[$i];
                        ?>



                        <div class="col-xs-6 col-md-3">

                            <div class="btn-group btn-group-justified" role="group" aria-label="...">



                            <a href="<?= base_url() ?>admin/backward/<?= $photos[$i]; ?>" class="btn btn-primary">
                                <span class="glyphicon glyphicon-backward" aria-hidden="true"></span> </a>

                                <a href="<?= base_url() ?>admin/delete/<?= $photos[$i]; ?>" class="btn btn-danger">
                                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Usuń</a>

                            <a href="<?= base_url() ?>admin/forward/<?= $photos[$i]; ?>" class="btn btn-primary">
                                <span class="glyphicon glyphicon-forward" aria-hidden="true"></span> </a>

                            </div>

                            <a href="<?= $photos_path . '.jpg'; ?>" class="thumbnail"
                                data-lightbox="galeria"><img
                                    src="<?= $photos_path . '_thumb.jpg'; ?>" style="max-height:160px"></a></div>
                    <?php } ?>

                </div>
            </div>
        </div>
    </div>
</div>

</div>