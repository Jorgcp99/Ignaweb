<footer class="siteFooter">
    <div class="footerContent row">
        <div class="footerDir col-12 col-md-3 row">
            <?php dynamic_sidebar('footer_direccion') ?>
            <hr class="separator">
        </div>
        <h3 class="copyright col-12 col-md-3"><?php echo get_bloginfo('name') . " ® " . date('Y') ?></h3>
        
        <div class="footerCont col-12 col-md-3 row">
        <hr class="separator2">
            <?php dynamic_sidebar('footer_contacto') ?>
            
        </div>
    </div>

</footer>

<?php wp_footer(); ?>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</body>

</html>