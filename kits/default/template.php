<?php
/**
 * @file
 * Theme functions
 */

// require_once dirname(__FILE__) . '/includes/structure.inc';
// require_once dirname(__FILE__) . '/includes/form.inc';
// require_once dirname(__FILE__) . '/includes/menu.inc';
// require_once dirname(__FILE__) . '/includes/comment.inc';
// require_once dirname(__FILE__) . '/includes/node.inc';

/**
 * Implements hook_css_alter().
 */
function {{machine_name}}_css_alter(&$css) {
  $oa_radix_path = drupal_get_path('theme', 'oa_radix');

  // Radix now includes compiled stylesheets for demo purposes.
  // We remove these from our subtheme since they are already included
  // in compass_radix.
  unset($css[$oa_radix_path . '/assets/stylesheets/oa_radix-style.css']);
  unset($css[$oa_radix_path . '/assets/stylesheets/oa_radix-print.css']);
}

/**
 * Implements template_preprocess_page().
 */
function {{machine_name}}_preprocess_page(&$variables) {
  // Add copyright to theme.
  if ($copyright = theme_get_setting('copyright')) {
    $variables['copyright'] = check_markup($copyright['value'], $copyright['format']);
  }
}
