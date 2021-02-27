
<?php get_header(); ?>

    <main class="pagina seccion no-sidebars contenedor">

        <?php $categoria = get_queried_object();?>

        <script>
        function goBack() {
        window.history.back();
        }
        </script>

        <h2 class="titleProductCategory"><?php echo $categoria->name?></h2>
        <button class="backCategoryButton" onclick="goBack()">Átras</button>

        <?php
        ignaweb_lista_categoria($categoria->slug);
        ?>
        
    </main>

<?php get_footer(); ?>