<?php if(preg_match('#' . basename(__FILE__) . '#', $_SERVER['PHP_SELF'])) { die('You are not allowed to call this page directly.'); } ?>
<div class="wrap">
<?php
$did = isset($_GET['did']) ? intval($_GET['did']) : '0';
if(!is_numeric($did)) { die('<p>Are you sure you want to do this?</p>'); }

// First check if ID exist with requested ID
$sSql = $wpdb->prepare(
	"SELECT COUNT(*) AS `count` FROM ".WP_Ihrss_TABLE."
	WHERE `Ihrss_id` = %d",
	array($did)
);
$result = '0';
$result = $wpdb->get_var($sSql);

if ($result != '1')
{
	?><div class="error fade"><p><strong><?php _e('Oops, selected details doesnt exist.', 'image-horizontal-reel-scroll-slideshow'); ?></strong></p></div><?php
}
else
{
	$Ihrss_errors = array();
	$Ihrss_success = '';
	$Ihrss_error_found = FALSE;
	
	$sSql = $wpdb->prepare("
		SELECT *
		FROM `".WP_Ihrss_TABLE."`
		WHERE `Ihrss_id` = %d
		LIMIT 1
		",
		array($did)
	);
	$data = array();
	$data = $wpdb->get_row($sSql, ARRAY_A);
	
	// Preset the form fields
	$form = array(
		'Ihrss_path' => $data['Ihrss_path'],
		'Ihrss_link' => $data['Ihrss_link'],
		'Ihrss_target' => $data['Ihrss_target'],
		'Ihrss_title' => $data['Ihrss_title'],
		'Ihrss_order' => $data['Ihrss_order'],
		'Ihrss_status' => $data['Ihrss_status'],
		'Ihrss_type' => $data['Ihrss_type']
	);
}
// Form submitted, check the data
if (isset($_POST['Ihrss_form_submit']) && $_POST['Ihrss_form_submit'] == 'yes')
{
	//	Just security thingy that wordpress offers us
	check_admin_referer('Ihrss_form_edit');
	
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
		$sSql = $wpdb->prepare(
				"UPDATE `".WP_Ihrss_TABLE."`
				SET `Ihrss_path` = %s,
				`Ihrss_link` = %s,
				`Ihrss_target` = %s,
				`Ihrss_title` = %s,
				`Ihrss_order` = %d,
				`Ihrss_status` = %s,
				`Ihrss_type` = %s
				WHERE Ihrss_id = %d
				LIMIT 1",
				array($form['Ihrss_path'], $form['Ihrss_link'], $form['Ihrss_target'], $form['Ihrss_title'], $form['Ihrss_order'], 
					$form['Ihrss_status'], $form['Ihrss_type'], $did)
			);
		$wpdb->query($sSql);
		$Ihrss_success = __('Image details was successfully updated.', 'image-horizontal-reel-scroll-slideshow');
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
    <p><strong><?php echo $Ihrss_success; ?> <a href="<?php echo WP_IHRSS_ADMIN_URL; ?>"><?php _e('Click here', 'image-horizontal-reel-scroll-slideshow'); ?></a> 
	 <?php _e('to view the details', 'image-horizontal-reel-scroll-slideshow'); ?></strong></p>
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
            // Let's assign the url value to the input field
            $('#Ihrss_path').val(Ihrss_path);
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
      <h3><?php _e('Update image details', 'image-horizontal-reel-scroll-slideshow'); ?></h3>
      
	  <label for="tag-image"><?php _e('Enter image path', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <input name="Ihrss_path" type="text" id="Ihrss_path" value="<?php echo esc_html(stripslashes($form['Ihrss_path'])); ?>" size="80" />
	  <input type="button" name="upload-btn" id="upload-btn" class="button-secondary" value="Upload Image">
      <p><?php _e('Where is the picture located on the internet', 'image-horizontal-reel-scroll-slideshow'); ?></p>
	  
      <label for="tag-link"><?php _e('Enter target link', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <input name="Ihrss_link" type="text" id="Ihrss_link" value="<?php echo esc_html(stripslashes($form['Ihrss_link'])); ?>" size="80" />
      <p><?php _e('When someone clicks on the picture, where do you want to send them. url must start with either http or https.', 'image-horizontal-reel-scroll-slideshow'); ?></p>
      <label for="tag-target"><?php _e('Enter target option', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <select name="Ihrss_target" id="Ihrss_target">
        <option value='_blank' <?php if($form['Ihrss_target']=='_blank') { echo 'selected' ; } ?>>Open target link in a new window</option>
        <option value='_self' <?php if($form['Ihrss_target']=='_self') { echo 'selected' ; } ?>>Open target link in the same window</option>
      </select>
      <p><?php _e('Do you want to open link in new window?', 'image-horizontal-reel-scroll-slideshow'); ?></p>
      <label for="tag-title"><?php _e('Enter image reference', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <input name="Ihrss_title" type="text" id="Ihrss_title" value="<?php echo esc_html(stripslashes($form['Ihrss_title'])); ?>" size="80" />
      <p><?php _e('Enter image reference. This is only for reference.', 'image-horizontal-reel-scroll-slideshow'); ?></p>
      <label for="tag-select-gallery-group"><?php _e('Select gallery type', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <select name="Ihrss_type" id="Ihrss_type">
        <option value='GROUP1' <?php if($form['Ihrss_type']=='GROUP1') { echo 'selected' ; } ?>>GROUP1</option>
        <option value='GROUP2' <?php if($form['Ihrss_type']=='GROUP2') { echo 'selected' ; } ?>>GROUP2</option>
        <option value='GROUP3' <?php if($form['Ihrss_type']=='GROUP3') { echo 'selected' ; } ?>>GROUP3</option>
        <option value='GROUP4' <?php if($form['Ihrss_type']=='GROUP4') { echo 'selected' ; } ?>>GROUP4</option>
        <option value='GROUP5' <?php if($form['Ihrss_type']=='GROUP5') { echo 'selected' ; } ?>>GROUP5</option>
        <option value='GROUP6' <?php if($form['Ihrss_type']=='GROUP6') { echo 'selected' ; } ?>>GROUP6</option>
        <option value='GROUP7' <?php if($form['Ihrss_type']=='GROUP7') { echo 'selected' ; } ?>>GROUP7</option>
        <option value='GROUP8' <?php if($form['Ihrss_type']=='GROUP8') { echo 'selected' ; } ?>>GROUP8</option>
        <option value='GROUP9' <?php if($form['Ihrss_type']=='GROUP9') { echo 'selected' ; } ?>>GROUP9</option>
        <option value='GROUP0' <?php if($form['Ihrss_type']=='GROUP0') { echo 'selected' ; } ?>>GROUP0</option>
		<option value='Widget' <?php if($form['Ihrss_type']=='Widget') { echo 'selected' ; } ?>>Widget</option>
		<option value='sample' <?php if($form['Ihrss_type']=='Sample') { echo 'selected' ; } ?>>Sample</option>
		<option value='GROUP10' <?php if($form['Ihrss_type']=='GROUP10') { echo 'selected' ; } ?>>GROUP10</option>
		<option value='GROUP11' <?php if($form['Ihrss_type']=='GROUP11') { echo 'selected' ; } ?>>GROUP11</option>
		<option value='GROUP12' <?php if($form['Ihrss_type']=='GROUP12') { echo 'selected' ; } ?>>GROUP12</option>
		<option value='GROUP13' <?php if($form['Ihrss_type']=='GROUP13') { echo 'selected' ; } ?>>GROUP13</option>
		<option value='GROUP14' <?php if($form['Ihrss_type']=='GROUP14') { echo 'selected' ; } ?>>GROUP14</option>
		<option value='GROUP15' <?php if($form['Ihrss_type']=='GROUP15') { echo 'selected' ; } ?>>GROUP15</option>
		<option value='GROUP16' <?php if($form['Ihrss_type']=='GROUP16') { echo 'selected' ; } ?>>GROUP16</option>
		<option value='GROUP17' <?php if($form['Ihrss_type']=='GROUP17') { echo 'selected' ; } ?>>GROUP17</option>
		<option value='GROUP18' <?php if($form['Ihrss_type']=='GROUP18') { echo 'selected' ; } ?>>GROUP18</option>
		<option value='GROUP19' <?php if($form['Ihrss_type']=='GROUP19') { echo 'selected' ; } ?>>GROUP19</option>
		<option value='GROUP20' <?php if($form['Ihrss_type']=='GROUP20') { echo 'selected' ; } ?>>GROUP20</option>
      </select>
      <p><?php _e('This is to group the images. Select your slideshow group.', 'image-horizontal-reel-scroll-slideshow'); ?></p>
      <label for="tag-display-status"><?php _e('Display status', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <select name="Ihrss_status" id="Ihrss_status">
        <option value='YES' <?php if($form['Ihrss_status']=='YES') { echo 'selected' ; } ?>>Yes</option>
        <option value='NO' <?php if($form['Ihrss_status']=='NO') { echo 'selected' ; } ?>>No</option>
      </select>
      <p><?php _e('Do you want the picture to show in your galler?', 'image-horizontal-reel-scroll-slideshow'); ?></p>
      <label for="tag-display-order"><?php _e('Display order', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <input name="Ihrss_order" type="text" id="Ihrss_order" size="10" value="<?php echo $form['Ihrss_order']; ?>" maxlength="3" />
      <p><?php _e('What order should the picture be played in. should it come 1st, 2nd, 3rd, etc.', 'image-horizontal-reel-scroll-slideshow'); ?></p>
      <input name="Ihrss_id" id="Ihrss_id" type="hidden" value="">
      <input type="hidden" name="Ihrss_form_submit" value="yes"/>
      <p class="submit">
        <input name="publish" lang="publish" class="button button-primary" value="<?php _e('Save Details', 'image-horizontal-reel-scroll-slideshow'); ?>" type="submit" />&nbsp; 
        <input name="publish" lang="publish" class="button button-primary" onclick="Ihrss_redirect()" value="<?php _e('Cancel', 'image-horizontal-reel-scroll-slideshow'); ?>" type="button" />&nbsp; 
        <input name="Help" lang="publish" class="button button-primary" onclick="Ihrss_help()" value="<?php _e('Help', 'image-horizontal-reel-scroll-slideshow'); ?>" type="button" />
      </p>
	  <?php wp_nonce_field('Ihrss_form_edit'); ?>
    </form>
</div>
</div>