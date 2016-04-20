var haet_mail = haet_mail || {};

haet_mail.previewMail = function(template_code){
	var $=jQuery;
	$("#mailtemplatepreview").contents().find("html").html(template_code); 
	
	var iframe = document.getElementById('mailtemplatepreview');
	iframe = (iframe.contentWindow) ? iframe.contentWindow : (iframe.contentDocument.document) ? iframe.contentDocument.document : iframe.contentDocument;
	iframe.document.open();
	iframe.document.write(template_code);
	iframe.document.close();
}

haet_mail.ajaxSave = function(){
	var $ = jQuery;
	$.post(
		$('#haet_mail_form').attr('action'), 
		$('#haet_mail_form').serialize(),
		function(data){
			haet_mail.previewMail( $('#haet_mailtemplate',data).val() );
		}
	);
}

haet_mail.createCustomTemplate = function(){
	var $ = jQuery;
	$('input[name="haet_mail_create_template"]').val(1);
	haet_mail.ajaxSave();
	
	$( "#haet_mail_template_created" ).dialog({
		dialogClass: "no-close",
		modal: true,
		buttons: [
			{
				text: "OK",
				click: function() {
					$( this ).dialog( "close" );
				}
			}
		]
	});
}

jQuery(document).ready(function($) {
	$('input,textarea,select').change(function(){
		haet_mail.ajaxSave();
	});

	var self = this;
	$('input.color').wpColorPicker({
        change: function (event) {
        	window.setTimeout(function(){
        		haet_mail.ajaxSave();	
        	},50);
        	
        }
    });

	// Uploading files
	var file_frame;
	$('.upload_image_button').live('click', function( event ){
		event.preventDefault();
		// If the media frame already exists, reopen it.
		if ( file_frame ) {
			file_frame.open();
			return;
		}
		// Create the media frame.
		file_frame = wp.media.frames.file_frame = wp.media({
			title: jQuery( this ).data( 'uploader_title' ),
			button: {
				text: jQuery( this ).data( 'uploader_button_text' ),
			},
			multiple: false // Set to true to allow multiple files to be selected
		});
		// When an image is selected, run a callback.
		file_frame.on( 'select', function() {
			// We set multiple to false so only get one image from the uploader
			attachment = file_frame.state().get('selection').first().toJSON();
			// Do something with attachment.id and/or attachment.url here
			$('#haet_mailheaderimg').val(attachment.url);
			$('#haet_mailheaderimg_width').val(attachment.width);
			$('#haet_mailheaderimg_height').val(attachment.height);
			haet_mail.ajaxSave();
		});
		// Finally, open the modal
		file_frame.open();
	});

	$('#haet_mail_test_submit').click(function(){
		var email = $('#haet_mail_test_address').val();
		$.post(ajaxurl, { 'action':'haet_mail_send_test', 'email':email} , function(response) {
			$( "#haet_mail_test_sent" ).dialog({
				dialogClass: "no-close",
				modal: true,
				buttons: [
					{
						text: "OK",
						click: function() {
							$( this ).dialog( "close" );
						}
					}
				]
			});
		});
	});

	$('#haet_mail_create_template_button').click(function(){
		if(!$(this).hasClass('button-disabled'))
			haet_mail.createCustomTemplate();
	});
	haet_mail.previewMail($("#haet_mailtemplate").val());
}); 


