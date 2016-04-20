<?php

if ( ! defined( 'ABSPATH' ) ) exit;


function ewic_put_compare_style() {
	if ( is_admin() && isset( $_GET['page'] ) && $_GET['page'] == 'ewic-comparison' ){
		wp_enqueue_style( 'ewic-pricing-css' );
		}
}
add_action( 'admin_enqueue_scripts', 'ewic_put_compare_style' );


function ewic_pricing_table() {

?>
<!-- DC Pricing Tables:3 Start -->

    <script>
        jQuery(document).ready(function ($){
            $(".column_1, .column_3, .column_2, .column_4").click(function (){
                $('html, body').animate({
                    scrollTop: $(".ewicscrollto").offset().top
                }, 1500);
            });
        });
    </script>

    <div class="wrap">
        <div id="icon-edit" class="icon32 icon32-posts-easymedia"><br /></div>
        <h2><?php _e('Comparison', 'image-slider-widget'); ?></h2>   
  <div class="tsc_pricingtable03 tsc_pt3_style1" style="margin-bottom:110px; height:940px;">
    <div class="caption_column">
      <ul>
        <li class="header_row_1 align_center radius5_topleft"><?php ewic_share(); ?></li>
        <li class="header_row_2">
          <h2 class="caption"><?php echo EWIC_NAME; ?></h2>
        </li> 
        <li class="row_style_2"><span>License</span></li>
        <li class="row_style_4"><span>Unlimited Slider</span></li>
        <li class="row_style_2"><span>Slider on Post, Page or Widget</span></li>       
        <li class="row_style_4"><span style="font-weight:bold; color:#1064EF">Slider with Bottom Thumbnails</span><a target="_blank" href="http://demo.ghozylab.com/plugins/easy-image-slider-plugin/image-slider-with-thumbnails-at-the-bottom/" style="text-decoration:underline !important; color: #F77448;">DEMO</a></li>
        <li class="row_style_2"><span style="font-weight:bold; color:#1064EF">Slider with Right Navigation</span><a target="_blank" href="http://demo.ghozylab.com/plugins/easy-image-slider-plugin/image-slider-with-thumbnails-on-right/" style="text-decoration:underline !important; color: #F77448;">DEMO</a></li>
        <li class="row_style_4"><span style="font-weight:bold; color:#1064EF">Slider with Left Thumbnails</span><a target="_blank" href="http://demo.ghozylab.com/plugins/easy-image-slider-plugin/image-slider-with-thumbnails-on-left/" style="text-decoration:underline !important; color: #F77448;">DEMO</a></li>
        <li class="row_style_2"><span style="font-weight:bold; color:#1064EF">Slider with Bullet Navigation</span><a target="_blank" href="http://demo.ghozylab.com/plugins/easy-image-slider-plugin/image-slider-with-bullet-navigation/" style="text-decoration:underline !important; color: #F77448;">DEMO</a></li>
        <li class="row_style_4"><span>Redirect Image to Specific Link</span></li>
        <li class="row_style_2"><span>360+ Slideshow Effects/Transitions</span></li>
        <li class="row_style_4"><span>390+ Title Effects/Transitions</span></li>
        <li class="row_style_2"><span>Custom CSS & Custom JS</span></li>
        <li class="row_style_4"><span>Open Slider on Lightbox</span></li>
        <li class="row_style_2"><span>Custom Transitions for Slider and Title</span></li>
        <li class="row_style_4"><span>Unlimited colors and layout</span></li>
        <li class="row_style_2"><span>Powerful Control Panel</span><a target="_blank" href="http://demo.ghozylab.com/content/ewicpro.html" style="text-decoration:underline !important;"> Click for Sample</a></li>
        <li class="row_style_4"><span>Social Share Buttons</span></li>
        <li class="row_style_2"><span>WP Multisite</span></li>
        <li class="row_style_4"><span>Support</span></li>
        <li class="row_style_2"><span>Update</span></li>
        <li class="row_style_4"><span>License</span></li>
        <li class="row_style_2"><span>Price</span></li>
        <li class="footer_row ewicscrollto"></li>
      </ul>
    </div>
    <div class="column_1">
      <ul>
        <li class="header_row_1 align_center">
          <h2 class="col1">Lite</h2>
        </li>
        <li class="header_row_2 align_center">
          <h1 class="col1">Free</h1>
        </li>
        <li class="row_style_3 align_center">None</li>
        <li class="row_style_1 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_3 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_1 align_center"><span class="pricing_no"></span></li>  
        <li class="row_style_3 align_center"><span class="pricing_no"></span></li>
        <li class="row_style_1 align_center"><span class="pricing_no"></span></li>
        <li class="row_style_3 align_center"><span class="pricing_no"></span></li>
        <li class="row_style_1 align_center"><span class="pricing_no"></span></li>  
        <li class="row_style_3 align_center"><span class="pricing_no"></span></li>      
        <li class="row_style_1 align_center"><span class="pricing_no"></span></li>
        <li class="row_style_3 align_center"><span class="pricing_no"></span></li>
        <li class="row_style_1 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_3 align_center"><span class="pricing_no"></span></li>        
        <li class="row_style_1 align_center"><span class="pricing_no"></span></li>        
        <li class="row_style_3 align_center"><span class="pricing_no"></span></li>
        <li class="row_style_1 align_center"><span class="pricing_no"></span></li>
        <li class="row_style_3 align_center"><span class="pricing_no"></span></li>            
        <li class="row_style_1 align_center"><span class="pricing_no"></span></li>
        <li class="row_style_3 align_center"><span class="pricing_no"></span></li>        
        <li class="row_style_1 align_center">None</li>
        <li class="row_style_3 align_center"><span style="font-weight: bold; color: #666; font-size:18px;">Free</span></li>
        <li class="footer_row"></li>
      </ul>
    </div>
    
    <div class="column_2">
      <ul>
        <li class="header_row_1 align_center">
          <h2 class="col2">Pro</h2>
        </li>
        <li class="header_row_2 align_center">
          <h1 class="col2">$<span><?php echo EWIC_PRO; ?></span></h1>
        </li>
        <li class="row_style_4 align_center"><span style="font-weight: bold; color:#F77448; font-size:14px;">1 Site</span></li>
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>        
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li> 
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li> 
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li> 
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li>  
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_no"></span></li>
        <li class="row_style_2 align_center"><span>1 Month</span></li>
        <li class="row_style_4 align_center"><span>1 Year</span></li>
        <li class="row_style_2 align_center"><span style="font-weight: bold; color:#F77448; font-size:14px;">1 Site</span></li>
        <li class="row_style_4 align_center"><span style="font-weight: bold; color: #666; font-size:18px;">$<?php echo EWIC_PRO; ?></span></li>
        <li class="footer_row"><a target="_blank" href="https://ghozylab.com/plugins/ordernow.php?order=eispro&utm_source=imageslider&utm_medium=pricingpage&utm_campaign=orderfromcomparepage" class="tsc_buttons2 green">Upgrade Now</a></li>
      </ul>
    </div>    
    
    <div class="column_2 featured">
    <span class="bestbuy"></span>
      <ul>
        <li class="header_row_1 align_center">
          <h2 class="col2">Pro+</h2>
        </li>
        <li class="header_row_2 align_center">
          <h1 class="col2">$<span><?php echo EWIC_PROPLUS; ?></span></h1>
        </li>
        <li class="row_style_4 align_center"><span style="font-weight: bold; color:#F77448; font-size:14px;">3 Sites</span></li>
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>        
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li> 
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li> 
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li> 
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li>  
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_no"></span></li>
        <li class="row_style_2 align_center"><span>1 Month</span></li>
        <li class="row_style_4 align_center"><span>1 Year</span></li>
        <li class="row_style_2 align_center"><span style="font-weight: bold; color:#F77448; font-size:14px;">3 Sites</span></li>
        <li class="row_style_4 align_center"><span style="font-weight: bold; color: #666; font-size:18px;">$<?php echo EWIC_PROPLUS; ?></span></li>
        <li class="footer_row"><a target="_blank" href="https://ghozylab.com/plugins/ordernow.php?order=eisproplus&utm_source=imageslider&utm_medium=pricingpage&utm_campaign=orderfromcomparepage" class="tsc_buttons2 blue">Upgrade Now</a></li>
      </ul>
    </div>
    <div class="column_2">
      <ul>
        <li class="header_row_1 align_center">
          <h2 class="col2">Pro++</h2>
        </li>
        <li class="header_row_2 align_center">
          <h1 class="col2">$<span><?php echo EWIC_PROPLUSPLUS; ?></span></h1>
        </li>
        <li class="row_style_4 align_center"><span style="font-weight: bold; color:#F77448; font-size:14px;">5 Sites</span></li>
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>        
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li> 
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li> 
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li> 
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_yes"></span></li>  
        <li class="row_style_2 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_4 align_center"><span class="pricing_no"></span></li>
        <li class="row_style_2 align_center"><span>6 Month</span></li>
        <li class="row_style_4 align_center"><span>1 Year</span></li>
        <li class="row_style_2 align_center"><span style="font-weight: bold; color:#F77448; font-size:14px;">5 Sites</span></li>
        <li class="row_style_4 align_center"><span style="font-weight: bold; color: #666; font-size:18px;">$<?php echo EWIC_PROPLUSPLUS; ?></span></li>
        <li class="footer_row"><a target="_blank" href="https://ghozylab.com/plugins/ordernow.php?order=eisplusplus&utm_source=imageslider&utm_medium=pricingpage&utm_campaign=orderfromcomparepage" class="tsc_buttons2 orange">Upgrade Now</a></li>
      </ul>
    </div>    
     <div class="column_4">
      <ul>
        <li class="header_row_1 align_center">
          <h2 class="col2">Developer</h2>
        </li>
        <li class="header_row_2 align_center">
          <h1 class="col2">$<span><?php echo EWIC_DEV; ?></span></h1>
        </li>
        <li class="row_style_3 align_center"><span style="font-weight: bold; color: #F77448; font-size:14px;">15 Sites</span></li>
        <li class="row_style_1 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_3 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_1 align_center"><span class="pricing_yes"></span></li>        
        <li class="row_style_3 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_1 align_center"><span class="pricing_yes"></span></li>        
        <li class="row_style_3 align_center"><span class="pricing_yes"></span></li> 
        <li class="row_style_1 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_3 align_center"><span class="pricing_yes"></span></li>  
        <li class="row_style_1 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_3 align_center"><span class="pricing_yes"></span></li> 
        <li class="row_style_1 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_3 align_center"><span class="pricing_yes"></span></li>  
        <li class="row_style_1 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_3 align_center"><span class="pricing_yes"></span></li> 
        <li class="row_style_1 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_3 align_center"><span class="pricing_yes"></span></li>
        <li class="row_style_1 align_center"><span>1 year</span></li>
        <li class="row_style_3 align_center"><span>1 year</span></li>
        <li class="row_style_1 align_center"><span style="font-weight: bold; color: #F77448; font-size:14px;">15 Sites</span></li>
        <li class="row_style_3 align_center"><span style="font-weight: bold; color: #666; font-size:18px;">$<?php echo EWIC_DEV; ?></span></li>
        <li class="footer_row"><a target="_blank" href="https://ghozylab.com/plugins/ordernow.php?order=eisdev&utm_source=imageslider&utm_medium=pricingpage&utm_campaign=orderfromcomparepage" class="tsc_buttons2 red">Upgrade Now</a></li>
      </ul>
    </div>   
    
    
    </div>
  </div>
<!-- DC Pricing Tables:3 End -->
<div class="tsc_clear"></div> <!-- line break/clear line -->
<?php


}