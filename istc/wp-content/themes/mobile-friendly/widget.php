<?php
/**
 * Mobile-Friendly widgets
 *
 * @package mobile-friendly
 */

if (class_exists('WP_Widget'))
{
    class MobileFriendlyProfileWidget extends WP_Widget
    {
        function MobileFriendlyProfileWidget()
        {
            global $themename;
            parent::__construct(false, $name = $themename . __('Mobile Friendly Profile Widget', 'mobile-friendly'));
        }
        
        function widget($args, $instance) {
        global $post, $facebook_link, $twitter_link, $google_plus_link, $rss_link;
        extract( $args );
        $title = apply_filters('widget_title', $instance['title']);
	$facebook_link = "http://www.facebook.com";
	$twitter_link = "http://www.twitter.com";
	$google_plus_link = "http://plus.google.com/";
	$rss_link = "http://www.rss.com";
        echo $before_widget;
        ?>
             
                <?php echo $before_title.$title.$after_title;?>
            <div class="media_body">
            <?php
                global $current_user;
                get_currentuserinfo();
                echo get_avatar($current_user->ID);
            ?>
            </div>
            <div class="social-icons">
            <ul class="social-media">
             
		<li class="facebook social-icon">
                   <a href="<?php echo esc_url( $facebook_link );?>">
                      <span class="icon-facebook"></span>
                   </a>
               </li>
              
               <li class="twitter social-icon">
                    <a href="<?php echo esc_url( $twitter_link );?>">
                       <span class="icon-twitter"></span>
                    </a>
               </li>
               <li class="googleplus social-icon">
                     <a href="<?php echo esc_url( $google_plus_link );?>">
                       <span class="icon-googleplus"></span>
                     </a>
               </li>
               <li class="rss social-icon">
                     <a href="<?php echo esc_url( $rss_link );?>">
                       <span class="icon-rss"></span>
                     </a>
               </li>
            </ul>
            </div>
        <?php
         echo $after_widget;
        }
        
        function update($new_instance, $old_instance) {                 
            $instance = $old_instance;
            $instance['title'] = strip_tags($new_instance['title']);
            return $instance;
        }
         
    function form($instance) {
        if(isset($instance['title']))
        {
            $title = esc_attr($instance['title'], 'mobile-friendly');
        }
        else
        {
            $title="";
        }
                
        ?>
        <p><label for="<?php echo esc_attr($this->get_field_id('title')); ?>"><?php esc_attr(_e('Title:','mobile-friendly')); ?> <input class="widefat" id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo esc_attr($this->get_field_name('title')); ?>" type="text" value="<?php echo esc_attr( $title ); ?>" /></label></p>
        <?php 
    }
}
}
    
add_action( 'widgets_init', 'mobile_friendly_profile_widget_register' );
function mobile_friendly_profile_widget_register() {
	register_widget( 'MobileFriendlyProfileWidget' );
}
