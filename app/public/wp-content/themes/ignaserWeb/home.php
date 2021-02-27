<?php get_header() ?>

    <h1 class="blogTitle">El espacio de Ignaser</h1>

    <main class="pagina seccion contenedor">
        <ul class="listado-blog">
            <?php get_template_part('template-parts/loop', 'blog'); ?>
        </ul>
    </main>

<?php get_footer() ?>