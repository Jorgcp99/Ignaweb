<?php if(preg_match('#' . basename(__FILE__) . '#', $_SERVER['PHP_SELF'])) { die('You are not allowed to call this page directly.'); } ?>
<div class="wrap">
<?php
$Ihrss_errors = array();
$Ihrss_success = '';
$Ihrss_error_found = FALSE;

// Preset the form fields
$form = array(
	'Ihrss_path' => '',
	'Ihrss_link' => '',
	'Ihrss_target' => '',
	'Ihrss_title' => '',
	'Ihrss_order' => '',
	'Ihrss_status' => '',
	'Ihrss_type' => ''
);

// Form submitted, check the data
if (isset($_POST['Ihrss_form_submit']) && $_POST['Ihrss_form_submit'] == 'yes')
{
	//	Just security thingy that wordpress offers us
	check_admin_referer('Ihrss_form_add');
	
	$form['Ihrss_path'] = isset($_POST['Ihrss_path']) ? esc_url_raw($_POST['Ihrss_path']) : '';
	if ($form['Ihrss_path'] == '')
	{
		$Ihrss_errors[] = __('Enter image path', 'image-horizontal-reel-scroll-slideshow');
		$Ihrss_error_found = TRUE;
	}

	$form['Ihrss_link'] = isset($_POST['Ihrss_link']) ? esc_url_raw($_POST['Ihrss_link']) : '';
//	if ($form['Ihrss_link'] == '')
//	{
//		$Ihrss_errors[] = __('Enter target link', 'image-horizontal-reel-scroll-slideshow');
//		$Ihrss_error_found = TRUE;
//	}
	
	$form['Ihrss_target'] = isset($_POST['Ihrss_target']) ? sanitize_text_field($_POST['Ihrss_target']) : '';
	if($form['Ihrss_target'] != "_blank" && $form['Ihrss_target'] != "_parent" && $form['Ihrss_target'] != "_self" && $form['Ihrss_target'] != "_new")
	{
		$form['Ihrss_target'] = "_blank";
	}
	
	$form['Ihrss_title'] = isset($_POST['Ihrss_title']) ? sanitize_text_field($_POST['Ihrss_title']) : '';
	
	$form['Ihrss_order'] = isset($_POST['Ihrss_order']) ? intval($_POST['Ihrss_order']) : '';
	
	$form['Ihrss_status'] = isset($_POST['Ihrss_status']) ? sanitize_text_field($_POST['Ihrss_status']) : '';
	if($form['Ihrss_status'] != "YES" && $form['Ihrss_status'] != "NO")
	{
		$form['Ihrss_status'] = "YES";
	}
	
	$form['Ihrss_type'] = isset($_POST['Ihrss_type']) ? sanitize_text_field($_POST['Ihrss_type']) : '';

	//	No errors found, we can add this Group to the table
	if ($Ihrss_error_found == FALSE)
	{
		$sql = $wpdb->prepare(
			"INSERT INTO `".WP_Ihrss_TABLE."`
			(`Ihrss_path`, `Ihrss_link`, `Ihrss_target`, `Ihrss_title`, `Ihrss_order`, `Ihrss_status`, `Ihrss_type`)
			VALUES(%s, %s, %s, %s, %d, %s, %s)",
			array($form['Ihrss_path'], $form['Ihrss_link'], $form['Ihrss_target'], $form['Ihrss_title'], $form['Ihrss_order'], $form['Ihrss_status'], $form['Ihrss_type'])
		);
		$wpdb->query($sql);
		
		$Ihrss_success = __('New image details was successfully added.', 'image-horizontal-reel-scroll-slideshow');
		
		// Reset the form fields
		$form = array(
			'Ihrss_path' => '',
			'Ihrss_link' => '',
			'Ihrss_target' => '',
			'Ihrss_title' => '',
			'Ihrss_order' => '',
			'Ihrss_status' => '',
			'Ihrss_type' => ''
		);
	}
}

if ($Ihrss_error_found == TRUE && isset($Ihrss_errors[0]) == TRUE)
{
	?>
	<div class="error fade">
		<p><strong><?php echo $Ihrss_errors[0]; ?></strong></p>
	</div>
	<?php
}
if ($Ihrss_error_found == FALSE && strlen($Ihrss_success) > 0)
{
	?>
	  <div class="updated fade">
		<p><strong><?php echo $Ihrss_success; ?> 
		<a href="<?php echo WP_IHRSS_ADMIN_URL; ?>"><?php _e('Click here', 'image-horizontal-reel-scroll-slideshow'); ?></a> <?php _e('to view the details', 'image-horizontal-reel-scroll-slideshow'); ?>
		</strong></p>
	  </div>
	  <?php
	}
?>
<script type="text/javascript">
jQuery(document).ready(function($){
    $('#upload-btn').click(function(e) {
        e.preventDefault();
        var image = wp.media({ 
            title: 'Upload Image',
            // mutiple: true if you want to upload multiple files at once
            multiple: false
        }).open()
        .on('select', function(e){
            // This will return the selected image from the Media Uploader, the result is an object
            var uploaded_image = image.state().get('selection').first();
            // We convert uploaded_image to a JSON object to make accessing it easier
            // Output to the console uploaded_image
            console.log(uploaded_image);
            var Ihrss_path = uploaded_image.toJSON().url;
			var Ihrss_title = uploaded_image.toJSON().title;
            // Let's assign the url value to the input field
            $('#Ihrss_path').val(Ihrss_path);
			$('#Ihrss_title').val(Ihrss_title);
        });
    });
});
</script>
<?php
wp_enqueue_script('jquery');  // jQuery
wp_enqueue_media(); // This will enqueue the Media Uploader script
?>
<div class="form-wrap">
	<div id="icon-edit" class="icon32 icon32-posts-post"><br></div>
	<h2><?php _e('Image horizontal reel scroll slideshow', 'image-horizontal-reel-scroll-slideshow'); ?></h2>
	<form name="Ihrss_form" method="post" action="#" onsubmit="return Ihrss_submit()"  >
      <h3><?php _e('Add new image details', 'image-horizontal-reel-scroll-slideshow'); ?></h3>
      
	  <label for="tag-image"><?php _e('Enter image path', 'image-horizontal-reel-scroll-slideshow'); ?></label>
	  <input type="text" name="Ihrss_path" id="Ihrss_path"  size="80">
	  <input type="button" name="upload-btn" id="upload-btn" class="button-secondary" value="Upload Image">
      <!--<input name="Ihrss_path" type="text" id="Ihrss_path" value="" size="100" />-->
      <p><?php _e('Where is the picture located on the internet (ex: http://www.gopiplus.com/work/wp-content/uploads/pluginimages/88x88/1.jpg)', 'image-horizontal-reel-scroll-slideshow'); ?></p>
	  
	  
      <label for="tag-link"><?php _e('Enter target link', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <input name="Ihrss_link" type="text" id="Ihrss_link" value="" size="80" />
      <p><?php _e('When someone clicks on the picture, where do you want to send them. url must start with either http or https.', 'image-horizontal-reel-scroll-slideshow'); ?></p>
      <label for="tag-target"><?php _e('Enter target option', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <select name="Ihrss_target" id="Ihrss_target">
        <option value='_blank'>Open target link in a new window</option>
        <option value='_self'>Open target link in the same window</option>
      </select>
      <p><?php _e('Do you want to open link in new window?', 'image-horizontal-reel-scroll-slideshow'); ?></p>
      <label for="tag-title"><?php _e('Enter image reference', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <input name="Ihrss_title" type="text" id="Ihrss_title" value="" size="80" />
      <p><?php _e('Enter image reference. This is only for reference.', 'image-horizontal-reel-scroll-slideshow'); ?></p>
      <label for="tag-select-gallery-group"><?php _e('Select gallery type', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <select name="Ihrss_type" id="Ihrss_type">
        <option value='GROUP1'>GROUP1</option>
        <option value='GROUP2'>GROUP2</option>
        <option value='GROUP3'>GROUP3</option>
        <option value='GROUP4'>GROUP4</option>
        <option value='GROUP5'>GROUP5</option>
        <option value='GROUP6'>GROUP6</option>
        <option value='GROUP7'>GROUP7</option>
        <option value='GROUP8'>GROUP8</option>
        <option value='GROUP9'>GROUP9</option>
        <option value='GROUP0'>GROUP0</option>
		<option value='Widget'>Widget</option>
		<option value='Sample'>Sample</option>
		<option value='GROUP10'>GROUP10</option>
		<option value='GROUP11'>GROUP11</option>
		<option value='GROUP12'>GROUP12</option>
		<option value='GROUP13'>GROUP13</option>
		<option value='GROUP14'>GROUP14</option>
		<option value='GROUP15'>GROUP15</option>
		<option value='GROUP16'>GROUP16</option>
		<option value='GROUP17'>GROUP17</option>
		<option value='GROUP18'>GROUP18</option>
		<option value='GROUP19'>GROUP19</option>
		<option value='GROUP20'>GROUP20</option>
      </select>
      <p><?php _e('This is to group the images. Select your slideshow group.', 'image-horizontal-reel-scroll-slideshow'); ?></p>
      <label for="tag-display-status"><?php _e('Display status', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <select name="Ihrss_status" id="Ihrss_status">
        <option value='YES'>Yes</option>
        <option value='NO'>No</option>
      </select>
      <p><?php _e('Do you want the picture to show in your galler?', 'image-horizontal-reel-scroll-slideshow'); ?></p>
      <label for="tag-display-order"><?php _e('Display order', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <input name="Ihrss_order" type="text" id="Ihrss_order" size="10" value="0" maxlength="3" />
      <p><?php _e('What order should the picture be played in. should it come 1st, 2nd, 3rd, etc.', 'image-horizontal-reel-scroll-slideshow'); ?></p>
      <input name="Ihrss_id" id="Ihrss_id" type="hidden" value="">
      <input type="hidden" name="Ihrss_form_submit" value="yes"/>
      <p class="submit">
        <input name="publish" lang="publish" class="button button-primary" value="<?php _e('Save Details', 'image-horizontal-reel-scroll-slideshow'); ?>" type="submit" />&nbsp;  
        <input name="publish" lang="publish" class="button button-primary" onclick="Ihrss_redirect()" value="<?php _e('Cancel', 'image-horizontal-reel-scroll-slideshow'); ?>" type="button" />&nbsp;   
        <input name="Help" lang="publish" class="button button-primary" onclick="Ihrss_help()" value="<?php _e('Help', 'image-horizontal-reel-scroll-slideshow'); ?>" type="button" />
      </p>
	  <?php wp_nonce_field('Ihrss_form_add'); ?>
    </form>
</div>
</div>