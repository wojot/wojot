<div class="brand">WojoT Fotografia</div>
<div class="address-bar">Ślubna | Produktowa | Klubowa | Motoryzacyjna | Sesje zdjęciowe</div>

<!-- Navigation -->
<nav class="navbar navbar-default" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
            <a class="navbar-brand" href="<?= base_url(); ?>">Fotografia WojoT</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li>
                    <a href="<?= base_url(); ?>">
                        <span class="glyphicon glyphicon-home" aria-hidden="true"></span> Strona główna</a>
                </li>
                <li>
                    <a href="http://slubnapamiatka.eu" target="_blank">
                        <span class="glyphicon glyphicon-heart" aria-hidden="true"></span> Fotografia ślubna</a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">
                        <span class="glyphicon glyphicon-camera" aria-hidden="true"></span> Fotografia <span
                            class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="<?= base_url(); ?>fotografia">Fotogafia</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="<?= base_url(); ?>fotografia/products">Produktowa</a></li>
                        <li><a href="<?= base_url(); ?>fotografia/clubbing">Klubowa</a></li>
                        <li><a href="<?= base_url(); ?>fotografia/cars">Motoryzacyjna</a></li>
                        <li><a href="<?= base_url(); ?>fotografia/interior">Wnętrz</a></li>
                        <li><a href="<?= base_url(); ?>fotografia/sessions">Sesje zdjęciowe</a></li>
                        <li><a href="<?= base_url(); ?>fotografia/other">Pozostałe</a></li>
                    </ul>
                </li>
                <li>
                    <a href="<?= base_url(); ?>kontakt">
                        <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Kontakt</a>
                </li>
                <?php if (isset($this->session->userdata['is_logged'])) { ?>
                    <br>
                    <li>
                        <a href="<?= base_url(); ?>admin">Admin</a>
                    </li>
                    <li>
                        <a href="<?= base_url(); ?>admin/messages">Wiadomości</a>
                    </li>
                    <li>
                        <a href="<?= base_url(); ?>admin/add_photos">Dodaj zdjęcia</a>
                    </li>
                    <li>
                        <a href="<?= base_url(); ?>admin/edit_photos">Edytuj zdjęcia</a>
                    </li>
                    <li>
                        <a href="<?= base_url(); ?>admin/logout">Wyloguj</a>
                    </li>

                <?php } ?>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>