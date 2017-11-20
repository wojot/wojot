<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <p>Copyright &copy; <a href="<?= base_url(); ?>admin/login">WojoT</a> Fotograf Wojciech Ciuba 2009 -
                    <?php
                    $datestring = '%Y';
                    $time = time();
                    echo mdate($datestring, $time);
                    ?></p>
            </div>
        </div>
    </div>
</footer>


<!-- Script to Activate the Carousel -->
<script>
    $('.carousel').carousel({
        interval: 3000,
        pause: null
    })
</script>
<!-- Lightbox script -->
<script src="<?= base_url(); ?>js/lightbox.min.js"></script>

<script>
    lightbox.option({

        'albumLabel': 'Zdjęcie %1 z %2'
    })
</script>

</body>

</html>