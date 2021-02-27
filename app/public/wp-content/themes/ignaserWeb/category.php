<?php get_header() ?>

    <script>
    function goBack() {
    window.history.back();
    }
    </script>

    <button class="backCategoryButton" onclick="goBack()">Átras</button>

    <?php
        $categoria = get_queried_object();
    ?>

    <h2 class="TitleCategoriaBlog">Categoría: <?php echo $categoria->name ?></h2>

    <main class="pagina seccion contenedor">
        <ul class="listado-blog">
            <?php get_template_part('template-parts/loop', 'blog'); ?>
        </ul>
    </main>

<?php get_footer() ?>