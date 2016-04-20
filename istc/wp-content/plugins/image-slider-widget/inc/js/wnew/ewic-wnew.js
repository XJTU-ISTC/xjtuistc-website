jQuery(document).ready(function($) {
	
	jQuery('#ewic-aff').bind('click', function () {
		
		var email = jQuery('#ewic_aff_email').val();
		var sec = jQuery(this).data('nonce');
		var cmd = jQuery(this).data('cmd');
		var elmt = jQuery(this);
		
		if ( email != '' ) {
	
			get_aff_ajax( cmd, email, sec, elmt );
		
			} else {
			
				alert('Please input your Account Email or Payment Email!');
			
				return false;
			
				}
		
		return false;
		
		});

		
	function get_aff_ajax( cmd, email, sec, elmt ) {
	
		jQuery('#loader').addClass('button_loading');
		jQuery(elmt).attr('disabled','disabled');
	
		dat = {};
		dat['eml'] = email;
		dat['security'] = sec;
		dat['command'] = cmd;
		dat['action'] = 'ewic_get_aff_data';

		jQuery.ajax({
			url: ajaxurl,
			type: 'POST',
			dataType: 'json',
			data: dat,
		
			success: function(response) {
				
				if (response.status == true ) {
					
					restore_registered(elmt, response.aff_name, email);
					
					}
					
					else if (response.status == 'disconnected' ) {	
					
						jQuery('#ewic_aff_email').val('');
						restore_not_reg(elmt);
					
						} else {
						
							restore_not_reg(elmt);
							alert('Oops. You are not registered yet to our Affiliate program!');
					
							}
			
			// end success-		
			}
			
		// end ajax
	});
	
}


	function restore_registered(elmt, affname, affemail ) {
	
		jQuery(elmt).removeAttr('disabled');
		jQuery('#loader').removeClass('button_loading');
		jQuery('#is-status').text('Connected');
		jQuery(elmt).data('cmd', 'ewic_affiliate_dis').val('Disconnect');
		jQuery('#ewic-not-yet').hide();
		jQuery('#ewic-aff-registered').fadeIn(1000);
		jQuery('#ewic-aff-holder').text('Hi, '+affname+' ( '+affemail+' )');
		
	
	}

	function restore_not_reg(elmt) {
	
		jQuery(elmt).removeAttr('disabled');
		jQuery('#loader').removeClass('button_loading');
		jQuery('#is-status').text('');
		jQuery(elmt).data('cmd', 'ewic_affiliate_con').val('Connect');	
		jQuery('#ewic-not-yet').show();
		jQuery('#ewic-aff-holder').text('');
		jQuery('#ewic-aff-registered').hide();
	
	}

		
	
});