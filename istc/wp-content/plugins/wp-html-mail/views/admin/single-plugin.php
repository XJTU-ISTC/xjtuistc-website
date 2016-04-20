<?php
$is_installed = is_plugin_active($plugin['file']);
$is_bridge_installed = class_exists($plugin['class']);
?>
<li class="haet-mail-plugin <?php echo ($is_installed?'installed':'not-installed'); ?>">
    <div class="haet-mail-plugin-left">
        <img src="https://ps.w.org/<?php echo $plugin_name; ?>/assets/icon-128x128.png" width="128" height="128">
    </div>
    <div class="haet-mail-plugin-right">
        <h3><?php echo $plugin['display_name']; ?></h3>
        <?php if( $is_bridge_installed && $is_installed): ?>
            <input type="hidden" name="haet_mail_plugins[<?php echo $plugin_name; ?>][template]" value="0">
            <input type="checkbox" id="haet_mail_plugins_<?php echo $plugin_name; ?>_template" name="haet_mail_plugins[<?php echo $plugin_name; ?>][template]" value="1" <?php echo (isset($plugin_options[$plugin_name]['template']) && $plugin_options[$plugin_name]['template']==1 || !isset($plugin_options[$plugin_name])?'checked':''); ?>>
            <label for="haet_mail_plugins_<?php echo $plugin_name; ?>_template"><?php _e('Use template','haet_mail'); ?></label><br>

            <input type="hidden" name="haet_mail_plugins[<?php echo $plugin_name; ?>][sender]" value="0">
            <input type="checkbox" id="haet_mail_plugins_<?php echo $plugin_name; ?>_sender" name="haet_mail_plugins[<?php echo $plugin_name; ?>][sender]" value="1" <?php echo (isset($plugin_options[$plugin_name]['sender']) && $plugin_options[$plugin_name]['sender']==1 || !isset($plugin_options[$plugin_name])?'checked':''); ?>>
            <label for="haet_mail_plugins_<?php echo $plugin_name; ?>_template"><?php _e('Overwrite sender','haet_mail'); ?></label>
        <?php elseif( !$is_bridge_installed ): ?>
            <p style="text-align:right;">
                <?php _e('Install WP HTML Mail for','haet_mail'); ?><br>
                <a class="button-secondary" href="http://etzelstorfer.com/en/downloads/wp-html-mail-<?php echo $plugin_name; ?>" target="_blank">
                    <?php echo $plugin['display_name']; ?> &gt;
                </a>
            </p>
        <?php elseif( $is_bridge_installed && !$is_installed ): ?>
            <?php echo $plugin['display_name'].' '.__('is currently not installed.','haet_mail'); ?>
            <a href="<?php echo wp_nonce_url( network_admin_url( 'update.php?action=install-plugin&plugin='.$plugin_name ), 'install-plugin_'.$plugin_name ); ?>">
                <?php echo __('install','haet_mail').' '.$plugin['display_name']; ?>
            </a>
        <?php endif; ?>
    </div>
</li>