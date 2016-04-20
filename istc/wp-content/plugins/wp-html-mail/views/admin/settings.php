

<h2 class="nav-tab-wrapper">
<?php
	foreach( $tabs as $el => $name ){
		$class = ( $el == $tab ) ? ' nav-tab-active' : '';
		echo '<a class="nav-tab'.$class.'" href="'.$this->get_tab_url($el).'">'.$name.'</a>';
	}
?>
</h2>

<textarea style="display:none;" id="haet_mailtemplate"><?php echo stripslashes(str_replace('\\&quot;','',$template)); ?></textarea>
<form method="post" id="haet_mail_form" action="<?php echo $_SERVER["REQUEST_URI"]; ?>">
	<?php
	switch ($tab){
		case 'general':?>
			<div class="postbox">
				<h3 class="hndle"><span><?php _e('General','haet_mail'); ?></span></h3>
				<div style="" class="inside">
					<table class="form-table">
						<tbody>
							<tr valign="top">
								<th scope="row"><label for="haet_mailbackground"><?php _e('Background color','haet_mail'); ?></label></th>
								<td>
									<input type="text" class="color" id="haet_mailbackground" name="haet_mail_theme[background]" value="<?php echo $theme_options['background']; ?>">
								</td>
							</tr>
							<tr valign="top">
								<th scope="row"><label for="haet_mailfromname"><?php _e('Email sender name','haet_mail'); ?></label></th>
								<td>
									<input type="text" class="regular-text" id="haet_mailfromname" name="haet_mail[fromname]" value="<?php echo $options['fromname']; ?>">
								</td>
							</tr>
							<tr valign="top">
								<th scope="row"><label for="haet_mailfromaddress"><?php _e('Email sender address','haet_mail'); ?></label></th>
								<td>
									<input type="text" class="regular-text" id="haet_mailfromaddress" name="haet_mail[fromaddress]" value="<?php echo $options['fromaddress']; ?>">
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		<?php break; ?>
		<?php case 'header': ?>
			<div class="postbox">
				<h3 class="hndle"><span><?php _e('Header','haet_mail'); ?></span></h3>
				<div style="" class="inside">
					<table class="form-table">
						<tbody>
							<tr valign="top">
								<th scope="row"><label for="haet_mailheaderbackground"><?php _e('Background color','haet_mail'); ?></label></th>
								<td>
									<input type="text" class="color" id="haet_mailheaderbackground" name="haet_mail_theme[headerbackground]" value="<?php echo $theme_options['headerbackground']; ?>">
								</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="haet_mailheaderimg"><?php _e('Header image','haet_mail'); ?></label>
								</th>
								<td>
									<div class="uploader">
										<input id="haet_mailheaderimg" name="haet_mail_theme[headerimg]" type="text" value="<?php echo $theme_options['headerimg']; ?>"/>
										<input id="haet_mailfilepicker" class="button upload_image_button" name="haet_mailfilepicker" type="text" value="<?php _e('Select image','haet_mail'); ?>" />
										<input id="haet_mailheaderimg_width" name="haet_mail_theme[headerimg_width]" type="hidden" value="<?php echo $theme_options['headerimg_width']; ?>"/>
										<input id="haet_mailheaderimg_height" name="haet_mail_theme[headerimg_height]" type="hidden" value="<?php echo $theme_options['headerimg_height']; ?>"/>
									</div>
									<p class="description"><?php _e('Add your logo or image header (optional). max 600px wide','haet_mail'); ?></p>
								</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="haet_mailheaderpadding"><?php _e('Padding','haet_mail'); ?></label>
								</th>
								<td>
									<?php _e('top','haet_mail'); ?>:
									<select  id="haet_mailheaderpaddingtop" name="haet_mail_theme[headerpaddingtop]">
										<?php for ($padding=0; $padding<=50; $padding++) :?>
											<option value="<?php echo $padding; ?>" <?php echo ($theme_options['headerpaddingtop']==$padding?'selected':''); ?>><?php echo $padding; ?></option>		
										<?php endfor; ?>
									</select>
									&nbsp;&nbsp; 
									<?php _e('right','haet_mail'); ?>:
									<select  id="haet_mailheaderpaddingright" name="haet_mail_theme[headerpaddingright]">
										<?php for ($padding=0; $padding<=50; $padding++) :?>
											<option value="<?php echo $padding; ?>" <?php echo ($theme_options['headerpaddingright']==$padding?'selected':''); ?>><?php echo $padding; ?></option>		
										<?php endfor; ?>
									</select>
									&nbsp;&nbsp; 
									<?php _e('bottom','haet_mail'); ?>:
									<select  id="haet_mailheaderpaddingbottom" name="haet_mail_theme[headerpaddingbottom]">
										<?php for ($padding=0; $padding<=50; $padding++) :?>
											<option value="<?php echo $padding; ?>" <?php echo ($theme_options['headerpaddingbottom']==$padding?'selected':''); ?>><?php echo $padding; ?></option>		
										<?php endfor; ?>
									</select>
									&nbsp;&nbsp; 
									<?php _e('left','haet_mail'); ?>:
									<select  id="haet_mailheaderpaddingleft" name="haet_mail_theme[headerpaddingleft]">
										<?php for ($padding=0; $padding<=50; $padding++) :?>
											<option value="<?php echo $padding; ?>" <?php echo ($theme_options['headerpaddingleft']==$padding?'selected':''); ?>><?php echo $padding; ?></option>		
										<?php endfor; ?>
									</select>
								</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="haet_mailheadertext"><?php _e('Header text','haet_mail'); ?></label>
								</th>
								<td>
									<input type="text" value="<?php echo $theme_options['headertext']; ?>" id="haet_mailheadertext" name="haet_mail_theme[headertext]">		
								</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="haet_mailheaderfont"><?php _e('Font','haet_mail'); ?></label>
								</th>
								<td>
									<select  id="haet_mailheaderfont" name="haet_mail_theme[headerfont]">
										<?php foreach ($fonts as $font => $display_name) :?>
											<option value="<?php echo $font; ?>" <?php echo ($theme_options['headerfont']==$font?'selected':''); ?>><?php echo $display_name; ?></option>		
										<?php endforeach; ?>
									</select>
									
									<select  id="haet_mailheaderfontsize" name="haet_mail_theme[headerfontsize]">
										<?php for ($fontsize=12; $fontsize<=50; $fontsize++) :?>
											<option value="<?php echo $fontsize; ?>" <?php echo ($theme_options['headerfontsize']==$fontsize?'selected':''); ?>><?php echo $fontsize; ?>px</option>		
										<?php endfor; ?>
									</select>

									<input type="text" class="color" id="haet_mailheadercolor" name="haet_mail_theme[headercolor]" value="<?php echo $theme_options['headercolor']; ?>">

									<input type="hidden" name="haet_mail_theme[headerbold]" value="0">
									<input type="checkbox" id="haet_mailheaderbold" name="haet_mail_theme[headerbold]" value="1" <?php echo ($theme_options['headerbold']==1?'checked':''); ?>>
									<label for="haet_mailheaderbold"><?php _e('Bold','haet_mail'); ?></label>
									
									&nbsp;&nbsp; 
									
									<input type="hidden" name="haet_mail_theme[headeritalic]" value="0">
									<input type="checkbox" id="haet_mailheaderitalic" name="haet_mail_theme[headeritalic]" value="1" <?php echo ($theme_options['headeritalic']==1?'checked':''); ?>>
									<label for="haet_mailheaderitalic"><?php _e('Italic','haet_mail'); ?></label>
								</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="haet_mailheaderalign"><?php _e('Alignment','haet_mail'); ?></label>
								</th>
								<td>
									<select  id="haet_mailheaderalign" name="haet_mail_theme[headeralign]">
										<option value="left" <?php echo ($theme_options['headeralign']=="left"?"selected":""); ?>><?php _e('Left','haet_mail'); ?></option>
										<option value="center" <?php echo ($theme_options['headeralign']=="center"?"selected":""); ?>><?php _e('Center','haet_mail'); ?></option>
										<option value="right" <?php echo ($theme_options['headeralign']=="right"?"selected":""); ?>><?php _e('Right','haet_mail'); ?></option>
									</select>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		<?php break; ?>
		<?php case 'content': ?>
			<div class="postbox">
				<h3 class="hndle"><span><?php _e('Content','haet_mail'); ?></span></h3>
				<div style="" class="inside">
					<table class="form-table">
						<tbody>
							<tr valign="top">
								<th scope="row"><label for="haet_mailcontentbackground"><?php _e('Background color','haet_mail'); ?></label></th>
								<td>
									<input type="text" class="color" id="haet_mailcontentbackground" name="haet_mail_theme[contentbackground]" value="<?php echo $theme_options['contentbackground']; ?>">
								</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="haet_mailheadlinefont"><?php _e('Headline Font','haet_mail'); ?></label>
								</th>
								<td>
									<select  id="haet_mailheadlinefont" name="haet_mail_theme[headlinefont]">
										<?php foreach ($fonts as $font => $display_name) :?>
											<option value="<?php echo $font; ?>" <?php echo ($theme_options['headlinefont']==$font?'selected':''); ?>><?php echo $display_name; ?></option>		
										<?php endforeach; ?>
									</select>
									
									<select  id="haet_mailheadlinefontsize" name="haet_mail_theme[headlinefontsize]">
										<?php for ($fontsize=12; $fontsize<=50; $fontsize++) :?>
											<option value="<?php echo $fontsize; ?>" <?php echo ($theme_options['headlinefontsize']==$fontsize?'selected':''); ?>><?php echo $fontsize; ?>px</option>		
										<?php endfor; ?>
									</select>

									<select  id="haet_mailheadlinealign" name="haet_mail_theme[headlinealign]">
										<option value="left" <?php echo ($theme_options['headlinealign']=="left"?"selected":""); ?>><?php _e('Left','haet_mail'); ?></option>
										<option value="center" <?php echo ($theme_options['headlinealign']=="center"?"selected":""); ?>><?php _e('Center','haet_mail'); ?></option>
										<option value="right" <?php echo ($theme_options['headlinealign']=="right"?"selected":""); ?>><?php _e('Right','haet_mail'); ?></option>
									</select>

									<input type="text" class="color" id="haet_mailheadlinecolor" name="haet_mail_theme[headlinecolor]" value="<?php echo $theme_options['headlinecolor']; ?>">

									<input type="hidden" name="haet_mail_theme[headlinebold]" value="0">
									<input type="checkbox" id="haet_mailheadlinebold" name="haet_mail_theme[headlinebold]" value="1" <?php echo ($theme_options['headlinebold']==1?'checked':''); ?>>
									<label for="haet_mailheadlinebold"><?php _e('Bold','haet_mail'); ?></label>
									
									&nbsp;&nbsp; 
									
									<input type="hidden" name="haet_mail_theme[headlineitalic]" value="0">
									<input type="checkbox" id="haet_mailheadlineitalic" name="haet_mail_theme[headlineitalic]" value="1" <?php echo ($theme_options['headlineitalic']==1?'checked':''); ?>>
									<label for="haet_mailheadlineitalic"><?php _e('Italic','haet_mail'); ?></label>
								</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="haet_mailsubheadlinefont"><?php _e('Subsubheadline Font','haet_mail'); ?></label>
								</th>
								<td>
									<select  id="haet_mailsubheadlinefont" name="haet_mail_theme[subheadlinefont]">
										<?php foreach ($fonts as $font => $display_name) :?>
											<option value="<?php echo $font; ?>" <?php echo ($theme_options['subheadlinefont']==$font?'selected':''); ?>><?php echo $display_name; ?></option>		
										<?php endforeach; ?>
									</select>
									
									<select  id="haet_mailsubheadlinefontsize" name="haet_mail_theme[subheadlinefontsize]">
										<?php for ($fontsize=12; $fontsize<=50; $fontsize++) :?>
											<option value="<?php echo $fontsize; ?>" <?php echo ($theme_options['subheadlinefontsize']==$fontsize?'selected':''); ?>><?php echo $fontsize; ?>px</option>		
										<?php endfor; ?>
									</select>

									<select  id="haet_mailsubheadlinealign" name="haet_mail_theme[subheadlinealign]">
										<option value="left" <?php echo ($theme_options['subheadlinealign']=="left"?"selected":""); ?>><?php _e('Left','haet_mail'); ?></option>
										<option value="center" <?php echo ($theme_options['subheadlinealign']=="center"?"selected":""); ?>><?php _e('Center','haet_mail'); ?></option>
										<option value="right" <?php echo ($theme_options['subheadlinealign']=="right"?"selected":""); ?>><?php _e('Right','haet_mail'); ?></option>
									</select>

									<input type="text" class="color" id="haet_mailsubheadlinecolor" name="haet_mail_theme[subheadlinecolor]" value="<?php echo $theme_options['subheadlinecolor']; ?>">

									<input type="hidden" name="haet_mail_theme[subheadlinebold]" value="0">
									<input type="checkbox" id="haet_mailsubheadlinebold" name="haet_mail_theme[subheadlinebold]" value="1" <?php echo ($theme_options['subheadlinebold']==1?'checked':''); ?>>
									<label for="haet_mailsubheadlinebold"><?php _e('Bold','haet_mail'); ?></label>
									
									&nbsp;&nbsp; 
									
									<input type="hidden" name="haet_mail_theme[subheadlineitalic]" value="0">
									<input type="checkbox" id="haet_mailsubheadlineitalic" name="haet_mail_theme[subheadlineitalic]" value="1" <?php echo ($theme_options['subheadlineitalic']==1?'checked':''); ?>>
									<label for="haet_mailsubheadlineitalic"><?php _e('Italic','haet_mail'); ?></label>
								</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="haet_mailtextfont"><?php _e('Content Font','haet_mail'); ?></label>
								</th>
								<td>
									<select  id="haet_mailtextfont" name="haet_mail_theme[textfont]">
										<?php foreach ($fonts as $font => $display_name) :?>
											<option value="<?php echo $font; ?>" <?php echo ($theme_options['textfont']==$font?'selected':''); ?>><?php echo $display_name; ?></option>		
										<?php endforeach; ?>
									</select>
									
									<select  id="haet_mailtextfontsize" name="haet_mail_theme[textfontsize]">
										<?php for ($fontsize=12; $fontsize<=50; $fontsize++) :?>
											<option value="<?php echo $fontsize; ?>" <?php echo ($theme_options['textfontsize']==$fontsize?'selected':''); ?>><?php echo $fontsize; ?>px</option>		
										<?php endfor; ?>
									</select>
									
									<select  id="haet_mailtextalign" name="haet_mail_theme[textalign]">
										<option value="left" <?php echo ($theme_options['textalign']=="left"?"selected":""); ?>><?php _e('Left','haet_mail'); ?></option>
										<option value="center" <?php echo ($theme_options['textalign']=="center"?"selected":""); ?>><?php _e('Center','haet_mail'); ?></option>
										<option value="right" <?php echo ($theme_options['textalign']=="right"?"selected":""); ?>><?php _e('Right','haet_mail'); ?></option>
									</select>

									<input type="text" class="color" id="haet_mailtextcolor" name="haet_mail_theme[textcolor]" value="<?php echo $theme_options['textcolor']; ?>">

									<input type="hidden" name="haet_mail_theme[textbold]" value="0">
									<input type="checkbox" id="haet_mailtextbold" name="haet_mail_theme[textbold]" value="1" <?php echo ($theme_options['textbold']==1?'checked':''); ?>>
									<label for="haet_mailtextbold"><?php _e('Bold','haet_mail'); ?></label>
									
									&nbsp;&nbsp; 
									
									<input type="hidden" name="haet_mail_theme[textitalic]" value="0">
									<input type="checkbox" id="haet_mailtextitalic" name="haet_mail_theme[textitalic]" value="1" <?php echo ($theme_options['textitalic']==1?'checked':''); ?>>
									<label for="haet_mailtextitalic"><?php _e('Italic','haet_mail'); ?></label>
								</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="haet_mailtextfont"><?php _e('Link styling','haet_mail'); ?></label>
								</th>
								<td>
									<input type="text" class="color" id="haet_maillinkcolor" name="haet_mail_theme[linkcolor]" value="<?php echo $theme_options['linkcolor']; ?>">

									<input type="hidden" name="haet_mail_theme[linkbold]" value="0">
									<input type="checkbox" id="haet_maillinkbold" name="haet_mail_theme[linkbold]" value="1" <?php echo ($theme_options['linkbold']==1?'checked':''); ?>>
									<label for="haet_maillinkbold"><?php _e('Bold','haet_mail'); ?></label>
									
									&nbsp;&nbsp; 
									
									<input type="hidden" name="haet_mail_theme[linkunderline]" value="0">
									<input type="checkbox" id="haet_maillinkunderline" name="haet_mail_theme[linkunderline]" value="1" <?php echo ($theme_options['linkunderline']==1?'checked':''); ?>>
									<label for="haet_maillinkunderline"><?php _e('Underline','haet_mail'); ?></label>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		<?php break; ?>
		<?php case 'footer':?>
			<div class="postbox">
				<h3 class="hndle"><span><?php _e('Footer','haet_mail'); ?></span></h3>
				<div style="" class="inside">
					<table class="form-table">
						<tbody>
							<tr valign="top">
								<th scope="row"><label for="haet_mailfooterbackground"><?php _e('Background color','haet_mail'); ?></label></th>
								<td>
									<input type="text" class="color" id="haet_mailfooterbackground" name="haet_mail_theme[footerbackground]" value="<?php echo $theme_options['footerbackground']; ?>">
								</td>
							</tr>
							<tr valign="top">
								<th scope="row"><label for="haet_mailfooter"><?php _e('Footer','haet_mail'); ?></label></th>
								<td>
									<?php 
										wp_editor(stripslashes(str_replace('\\&quot;','',$theme_options['footer'])),'haet_mailfooter',array('textarea_name'=>'haet_mail_theme[footer]','wpautop'=>false,'textarea_rows'=>6));
									?>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="hidden" name="haet_mail_theme[footerlink]" value="0">
									<input type="checkbox" id="haet_mail_theme_footerlink" name="haet_mail_theme[footerlink]" value="1" <?php echo ($theme_options['footerlink']==1 || !isset($theme_options['footerlink'])?'checked':''); ?>>
									<label for="haet_mail_theme_footerlink"><?php _e('Show "powered by" link in email footer','haet_mail'); ?></label>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		<?php break; ?>
		<?php case 'plugins':?>
			<div class="postbox">
				<h3 class="hndle"><span><?php _e('Use template for mails sent by your installed plugins','haet_mail'); ?></span></h3>
				<ul style="" class="inside haet-mail-plugins clearfix">
					<?php 
					foreach ($active_plugins as $plugin_name => $plugin): 
						include HAET_MAIL_PATH.'views/admin/single-plugin.php';
					endforeach;

					foreach ($available_plugins as $plugin_name => $plugin): 
						if( !array_key_exists($plugin_name, $active_plugins) )
							include HAET_MAIL_PATH.'views/admin/single-plugin.php';
					endforeach;

					$buyable_plugins = array(
						'woocommerce'   =>  array(
						    'name'      =>  'woocommerce',
						    'file'      =>  'woocommerce/woocommerce.php',
						    'class'     =>  'Haet_Sender_Plugin_WooCommerce',
						    'display_name' => 'WooCommerce'
						),
						'easy-digital-downloads'	=>	array(
					        'name'      =>  'easy-digital-downloads',
					        'file'      =>  'easy-digital-downloads/easy-digital-downloads.php',
					        'class'     =>  'Haet_Sender_Plugin_EDD',
					        'display_name' => 'Easy Digital Downloads'
					    )
						);
					foreach ($buyable_plugins as $plugin_name => $plugin): 
						if( !array_key_exists($plugin_name, $available_plugins) )
							include HAET_MAIL_PATH.'views/admin/single-plugin.php';
					endforeach;
					?>
				</ul>
			</div>
		<?php break; ?>
		<?php break; ?>
		<?php case 'advanced':?>
			<div class="postbox">
				<h3 class="hndle"><span><?php _e('Advanced features','haet_mail'); ?></span></h3>
				<div style="" class="inside">
					<table class="form-table">
						<tbody>
						    <?php /*<tr valign="top">
						    	<th scope="row"><label><?php _e('Export Template Settings','haet_mail') ?></label></th>
						    	<td>
						    		<textarea><?php echo stripslashes(str_replace('\\&quot;','',json_encode($theme_options))); ?></textarea>
						    	</td>
						    </tr>*/ ?>
						    <?php
						    $theme_is_writable = is_writable(get_stylesheet_directory());
						    ?>
						    <tr valign="top">
						    	<th scope="row"><label><?php _e('Create custom template','haet_mail') ?></label></th>
						    	<td>
						    		<input type="hidden" name="haet_mail_create_template">
						    		<button type="button" id="haet_mail_create_template_button" class="button-secondary <?php echo ($theme_is_writable?'':'button-disabled'); ?>"><?php _e('create template file in my theme folder', 'haet_mail') ?></button>
						    		<?php if(file_exists(get_stylesheet_directory().'/wp-html-mail/template.html')): ?>
										<p><?php _e('You already have a custom template. If you create a new one the existing template will be backed up.','haet_mail'); ?></p>
						    		<?php endif; ?>
						    		<?php if(!$theme_is_writable): ?>
										<p><?php _e('WARNING: Your theme directory is not writable by the server. Please change the permission to allow us to create the mail template.','haet_mail'); ?></p>
						    		<?php endif; ?>
						    		<p class="description">
						    			<?php _e('Customize your mail template as far as you can. Then click this button to export the template to your theme directory for further modifications.<br>The template will be created in <strong>wp-content/YOUR-THEME/wp-html-mail/template.html</strong>','haet_mail'); ?>
						    		</p>
						    		<div id="haet_mail_template_created" class="haet-mail-dialog" title="<?php _e('Template created','haet_mail'); ?>">
						    			<p>
						    				<?php _e('Your template has been created.','haet_mail'); ?>
						    			</p>
						    		</div>
						    	</td>
						    </tr>
						</tbody>
					</table>
				</div>
			</div>
		<?php default:
			$is_plugin_tab = false;
			if( isset($active_plugins[ $_GET['tab'] ] ) ){
				$active_plugins[ $_GET['tab'] ]['class']::settings_tab();
				$is_plugin_tab = true;
			}
		break; ?>
	<?php } //switch Tab ?>
	<div class="submit">
		<input type="submit" name="update_haet_mailSettings" class="button-primary" value="<?php _e('Save and Preview', 'haet_mail') ?>" />
		<!--<input type="submit" name="reload_haet_mailtemplate" class="button-secondary" value="<?php _e('Discard changes and reload template', 'haet_mail') ?>" />-->
	</div>
</form>
<iframe id="mailtemplatepreview" style="width:800px; height:480px; border:1px solid #ccc;" ></iframe>
<br>
<?php if( !isset($is_plugin_tab) || false===$is_plugin_tab ): ?>
	<div class="postbox haet-mail-send-test">
		<h3 class="hndle"><span><?php _e('Send a test mail','haet_mail'); ?></span></h3>
		<div style="" class="inside">
			<input id="haet_mail_test_address" required type="email" placeholder="you@example.org"> 
			<button class="button-secondary" id="haet_mail_test_submit"><?php _e('send test mail','haet_mail'); ?></button>
			<div id="haet_mail_test_sent" class="haet-mail-dialog" title="<?php _e('Email sent','haet_mail'); ?>">
				<p>
					<?php _e('Your message has been sent.','haet_mail'); ?>
				</p>
			</div>
		</div>
	</div>
<?php endif; ?>

		



