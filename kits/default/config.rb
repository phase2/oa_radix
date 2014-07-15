# Require any additional compass plugins here.
require "compass_twitter_bootstrap";
require "compass_radix";

# Remember to switch this to :production when deployed to a live site.
environment = :development

http_path = "/"
css_dir = "assets/stylesheets"
sass_dir = "assets/sass"
images_dir = "assets/images"
fonts_dir = "assets/fonts"
javascripts_dir = "assets/javascripts"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = (environment == :development) ? :expanded : :expanded

# To enable relative paths to assets via compass helper functions. Uncomment:
relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = (environment == :development) ? true : false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass

#Custom paths for parent-child theming

#Relative path to sass files in the oa_radix theme. May need updating on each site implementation
add_import_path "../oa_radix/assets/sass"

# the following ADDS a path to the sprite_load_path ARRAY
sprite_load_path << "assets/images/sprites"

#render sprites to the sub-theme
generated_images_dir = 'assets/images'