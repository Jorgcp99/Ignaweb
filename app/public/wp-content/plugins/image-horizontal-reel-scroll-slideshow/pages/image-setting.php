<?php if(preg_match('#' . basename(__FILE__) . '#', $_SERVER['PHP_SELF'])) { die('You are not allowed to call this page directly.'); } ?>
<div class="wrap">
  <div class="form-wrap">
    <div id="icon-edit" class="icon32 icon32-posts-post"><br>
    </div>
    <h2><?php _e('Image horizontal reel scroll slideshow', 'image-horizontal-reel-scroll-slideshow'); ?></h2>
	<h3><?php _e('Widget setting', 'image-horizontal-reel-scroll-slideshow'); ?></h3>
    <?php
	$Ihrss_title = get_option('Ihrss_title');
	$Ihrss_sliderheight = get_option('Ihrss_sliderheight');
	$Ihrss_slidespeed = get_option('Ihrss_slidespeed');
	$Ihrss_slidebgcolor = get_option('Ihrss_slidebgcolor');
	$Ihrss_slideshowgap = get_option('Ihrss_slideshowgap');
	$Ihrss_random = get_option('Ihrss_random');
	$Ihrss_type = get_option('Ihrss_type');
	
	if (isset($_POST['Ihrss_submit'])) 
	{
		//	Just security thingy that wordpress offers us
		check_admin_referer('Ihrss_form_setting');
			
		$Ihrss_title = stripslashes(sanitize_text_field($_POST['Ihrss_title']));
		$Ihrss_sliderheight = intval($_POST['Ihrss_sliderheight']);
		$Ihrss_slidespeed = intval($_POST['Ihrss_slidespeed']);
		$Ihrss_slidebgcolor = stripslashes(sanitize_text_field($_POST['Ihrss_slidebgcolor']));
		$Ihrss_slideshowgap = intval($_POST['Ihrss_slideshowgap']);
		$Ihrss_random = stripslashes(sanitize_text_field($_POST['Ihrss_random']));
		$Ihrss_type = stripslashes(sanitize_text_field($_POST['Ihrss_type']));
		
		if(!is_numeric($Ihrss_sliderheight) || $Ihrss_sliderheight == 0) { $Ihrss_sliderheight = 75; }
		if(!is_numeric($Ihrss_slidespeed) || $Ihrss_slidespeed == 0) { $Ihrss_slidespeed = 1; }
		if(!is_numeric($Ihrss_slideshowgap) || $Ihrss_slideshowgap == 0) { $Ihrss_slideshowgap = 10; }
		
		if($Ihrss_random != "YES" && $Ihrss_random != "NO")
		{
			$Ihrss_random = "YES";
		}

		update_option('Ihrss_title', $Ihrss_title );
		update_option('Ihrss_sliderheight', $Ihrss_sliderheight );
		update_option('Ihrss_slidespeed', $Ihrss_slidespeed );
		update_option('Ihrss_slidebgcolor', $Ihrss_slidebgcolor );
		update_option('Ihrss_slideshowgap', $Ihrss_slideshowgap );
		update_option('Ihrss_random', $Ihrss_random );
		update_option('Ihrss_type', $Ihrss_type );
		
		?>
		<div class="updated fade">
			<p><strong><?php _e('Details successfully updated.', 'image-horizontal-reel-scroll-slideshow'); ?></strong></p>
		</div>
		<?php
	}
	?>
    <form name="Ihrss_form" method="post" action="">
      <label for="tag-title"><?php _e('Enter widget title', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <input name="Ihrss_title" id="Ihrss_title" type="text" value="<?php echo $Ihrss_title; ?>" size="80" />
      <p><?php _e('Enter widget title, Only for widget.', 'image-horizontal-reel-scroll-slideshow'); ?></p>
           
	  <label for="tag-height"><?php _e('Enter height', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <input name="Ihrss_sliderheight" id="Ihrss_sliderheight" type="text" value="<?php echo $Ihrss_sliderheight; ?>" />
      <p><?php _e('Enter widget height, only number. (Example: 170)', 'image-horizontal-reel-scroll-slideshow'); ?></p>
      
	  <label for="tag-title"><?php _e('Enter slide speed', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <input name="Ihrss_slidespeed" id="Ihrss_slidespeed" type="text" value="<?php echo $Ihrss_slidespeed; ?>" />
      <p><?php _e('This box is to manage scroller speed. (Example: 1)', 'image-horizontal-reel-scroll-slideshow'); ?></p>
      
	  <label for="tag-height"><?php _e('Enter slide bgcolor', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <input name="Ihrss_slidebgcolor" id="Ihrss_slidebgcolor" type="text" value="<?php echo $Ihrss_slidebgcolor; ?>" />
      <p><?php _e('Background color of the slideshow. (Example: #FFFFFF)', 'image-horizontal-reel-scroll-slideshow'); ?></p>
      
	  <label for="tag-height"><?php _e('Enter slideshow gap', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <input name="Ihrss_slideshowgap" id="Ihrss_slideshowgap" type="text" value="<?php echo $Ihrss_slideshowgap; ?>" />
      <p><?php _e('This is pixels gap between each image in slideshow. Enter only number. (Example: 5)', 'image-horizontal-reel-scroll-slideshow'); ?></p>
	  
	  <label for="tag-height"><?php _e('Enter random display', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <input name="Ihrss_random" id="Ihrss_random" type="text" value="<?php echo $Ihrss_random; ?>" />
      <p><?php _e('This option is to retrieve the images in random order. (Enter: YES/NO Only)', 'image-horizontal-reel-scroll-slideshow'); ?></p>
	  
	  <label for="tag-height"><?php _e('Select gallery group (Type)', 'image-horizontal-reel-scroll-slideshow'); ?></label>
      <!--<input name="Ihrss_type" id="Ihrss_type" type="text" value="<?php //echo $Ihrss_type; ?>" />-->
	  <select name="Ihrss_type" id="Ihrss_type">
	  <option value="">Select</option>
	  <?php
		$sSql = "SELECT distinct(Ihrss_type) as Ihrss_type FROM `".WP_Ihrss_TABLE."` order by Ihrss_type";
		$myDistinctData = array();
		$arrDistinctDatas = array();
		$thisselected = "";
		$myDistinctData = $wpdb->get_results($sSql, ARRAY_A);
		foreach ($myDistinctData as $DistinctData)
		{
			if(strtoupper($DistinctData['Ihrss_type']) == strtoupper($Ihrss_type)) 
			{ 
				$thisselected = "selected='selected'" ; 
			}
			?>
			<option value='<?php echo strtoupper($DistinctData['Ihrss_type']); ?>' <?php echo $thisselected; ?>><?php echo strtoupper($DistinctData['Ihrss_type']); ?></option>
			<?php
			$thisselected = "";
		}
		?>
		</select>
      <p><?php _e('This field is to group the images. Select your group name to fetch the images for widget. (Example: GROUP1)', 'image-horizontal-reel-scroll-slideshow'); ?></p>
	  <p class="submit">
		<input name="Ihrss_submit" id="Ihrss_submit" class="button button-primary" value="<?php _e('Submit', 'image-horizontal-reel-scroll-slideshow'); ?>" type="submit" />&nbsp; 
		<input name="publish" lang="publish" class="button button-primary" onclick="Ihrss_redirect()" value="<?php _e('Cancel', 'image-horizontal-reel-scroll-slideshow'); ?>" type="button" />&nbsp;
		<input name="Help" lang="publish" class="button button-primary" onclick="Ihrss_help()" value="<?php _e('Help', 'image-horizontal-reel-scroll-slideshow'); ?>" type="button" />
	 </p>
	  <?php wp_nonce_field('Ihrss_form_setting'); ?>
    </form>
  </div>
</div>