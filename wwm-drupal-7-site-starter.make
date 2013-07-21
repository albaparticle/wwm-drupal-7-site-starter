; ----------------
; Generated makefile from http://drushmake.me
; Permanent URL: http://drushmake.me/file.php?token=50be0cec17bd
; ----------------
;
; This is a working makefile - try it! Any line starting with a `;` is a comment.
  
; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.
  
core = 7.x
  
; API version
; ------------
; Every makefile needs to declare its Drush Make API version. This version of
; drush make uses API version `2`.
  
api = 2
  
; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. This is usually Drupal core, but you can also specify
; alternative core projects like Pressflow. Note that makefiles included with
; install profiles *should not* include a core project.
  
; Use Pressflow instead of Drupal core:
projects[pressflow][type] = "core"
projects[pressflow][download][type] = "git"
projects[pressflow][download][url] = "git://github.com/pressflow/7.git"

; Patch Pressflow to run on BOA
; and use robotstxt module_builder
projects[pressflow][patch][] = "file:///data/disk/wwmhosting-admin/static/custom/platform-make-files/wwm-drupal-7-site-starter/boa-pressflow-patch.patch"

  
; Add Modules that are automatically included by BOA hosting system
; to override them with the latest versions
; --------
projects[] = admin							
projects[] = agrcache
projects[] = backup_migrate
projects[] = backup_migrate_files
projects[] = blockcache_alter
projects[] = boost
projects[] = config_perms
projects[] = core_library
projects[] = css_emimage
projects[] = entitycache
projects[] = filefield_nginx_progress
projects[] = flood_control
projects[] = fpa
projects[] = httprl
projects[] = readonlymode
; projects[] = robotstxt
projects[robotstxt][version] = 1.x-dev
projects[robotstxt][type] = "module"
projects[] = seckit
projects[] = site_verify
; projects[] = textile
projects[] = variable_clean
projects[] = vars

; Modules Added for Wickwood Marketing Drupal 7 Site Starter
; --------
; The following item needs to have WWM Patch applied
projects[] = addressfield
projects[] = advanced_help
projects[] = amazon
projects[] = amazon_store
projects[] = archive
projects[] = auto_nodetitle
projects[] = better_formats
projects[] = boxes
projects[] = captcha
projects[] = cck
projects[] = ckeditor_swf
projects[] = clean_module_list
projects[] = chart 
projects[] = colorbox
projects[] = colors
projects[] = comment_notify
projects[] = computed_field
projects[] = conditional_styles
; The following item needs to have WWM Patch applied
projects[] = content_access 
projects[] = content_taxonomy
projects[] = context
projects[] = ctools
projects[] = custom_breadcrumbs
projects[] = custom_formatters
projects[] = customfilter
projects[] = date
projects[] = date_ical
projects[] = devel
projects[] = diff
projects[] = ds
projects[] = elements
projects[] = email
projects[] = enabled_modules
projects[] = entity
projects[] = entity_autocomplete
; The following item needs to have WWM Patch applied
;projects[] = entityreference
projects[entityreference][version] = 1.x-dev
projects[entityreference][type] = "module"
projects[] = entityreference_prepopulate
projects[] = entityreference_view_widget
projects[] = easy_breadcrumb
projects[] = exclude_node_title
projects[] = extlink
projects[] = features
; The following item needs to have WWM Patch applied
projects[] = feeds
projects[] = feeds_tamper
projects[] = fences
projects[] = field_group
projects[] = field_slideshow
projects[] = file_entity
projects[] = filefield_paths
projects[] = filefield_sources
projects[] = fp
projects[] = front
projects[] = fullcalendar
projects[] = fullcalendar_templates
projects[] = ga_tokenizer
projects[] = getid3
projects[getresponse][type] = "module"
projects[getresponse][download][type] = "git"
projects[getresponse][download][url] = "http://git.drupal.org/project/GetResponse.git"
projects[getresponse][download][branch] = "7.x-1.x"
projects[] = globalredirect
projects[] = google_analytics
projects[] = google_analytics_reports
projects[] = googleanalytics_perpage
projects[] = html5_base
projects[image_effects_text][type] = "module"
projects[image_effects_text][download][type] = "git"
projects[image_effects_text][download][url] = "http://git.drupal.org/sandbox/fietserwin/1435964.git"
projects[] = image_resize_filter
projects[] = imagecache_actions
projects[] = imagecache_profiles
; projects[] = imagecache_scale9actions
projects[] = imagecache_proportions
; projects[] = imagecrop
projects[imagecrop][version] = 1.x-dev
projects[imagecrop][type] = "module"
projects[] = inline_entity_form
projects[] = invite
projects[] = jcarousel
projects[] = job_scheduler
projects[] = jquery_plugin
; projects[] = jquery_ui
projects[] = jquery_update
projects[] = libraries
projects[] = link
projects[] = location
projects[] = mailchimp
projects[] = mailsystem
projects[media][version] = 1.2
; projects[] = media_archive
projects[] = media_bliptv
; The following line pulled the dev version of the module and this caused a fatal error
; projects[] = media_browser_plus
projects[media_browser_plus][version] = 1.0-beta3
projects[media_browser_plus][type] = "module"
; The media_derivatives modules are not ready for production environments
; projects[] = media_derivatives
; projects[] = media_derivatives_html5
projects[] = media_feeds
; projects[] = media_ffmpeg_simple
projects[] = media_flickr
;projects[] = media_gallery
projects[media_gallery][version] = 1.0-beta8
projects[] = media_node
projects[] = media_update
projects[] = media_vimeo
projects[] = media_youtube
projects[] = mediafront
projects[] = menu_block
projects[] = menu_expanded
projects[] = menu_position
projects[] = mimemail
projects[] = module_filter
projects[] = module_instructions
projects[] = mollom
; projects[] = multiform
projects[multiform][version] = 1.0
projects[] = nocurrent_pass
projects[] = node_clone
projects[] = nodereference_url
; The following line pulled the 7.x-2.0-beta1 version of the nodequeue module 
; and this caused a fatal error because it conflicts with latest version of MariaDB 
; projects[] = nodequeue
projects[nodequeue][version] = 2.x-dev
projects[nodequeue][type] = "module"
projects[] = nodesquirrel
projects[] = noggin
; commented out notifications because it requires PHP 5.3 which is not currently supported by BOA
; projects[] = notifications	
projects[] = oauth
projects[] = options_element				
projects[] = page_title
projects[] = panels
projects[] = password-reset
projects[] = pathauto
projects[] = pathologic
projects[] = plupload
projects[] = popup
projects[] = print
projects[] = profiler
projects[] = projekktor
projects[] = publish_button
projects[] = purl
projects[] = quicktabs
projects[] = realname
projects[] = recaptcha
; The following item needs to have WWM Patch applied
projects[] = redirect
projects[] = rules
projects[] = scheduler
; The following item needs to have WWM Patch applied
projects[] = simpleads
projects[] = smartcrop
projects[] = smtp
projects[] = socialmedia
projects[] = stringoverrides
projects[] = strongarm
projects[] = system_stream_wrapper
projects[] = taxonomy_manager
projects[] = taxonomy_menu
projects[] = taxonomy_tools
projects[] = title_field_ui
projects[] = token
projects[] = token_filter
projects[] = transliteration
projects[] = unique_field
; The following item needs to have WWM Patch applied
projects[] = views
projects[] = views_bulk_operations
projects[] = views_slideshow
projects[] = webform
projects[] = widgets
projects[] = workbench
projects[] = workbench_access
projects[] = workbench_media
; The following item needs to have WWM Patch applied
projects[] = workbench_moderation
projects[] = wp_blog
projects[] = wysiwyg
projects[] = xmlsitemap


; Themes
; --------
; Themes Added for Wickwood Marketing Drupal 7 Site Starter
; projects[] = adaptivetheme
projects[adaptivetheme][version] = 3.x-dev
projects[adaptivetheme][type] = "theme"
projects[] = corolla
projects[] = fbg
projects[] = pixture_reloaded
projects[] = rubik
projects[] = sky
projects[] = tao


; Libraries Added for Wickwood Marketing Drupal 7 Site Starter
; ---------

libraries[ckeditor][download][type] = "file"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.tar.gz"
libraries[colorbox][download][type] = "file"
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/master.zip"
libraries[cycle][download][type] = "file"
libraries[cycle][download][url] = "http://malsup.github.com/jquery.cycle.all.js"
libraries[fullcalendar][download][type] = "file"
libraries[fullcalendar][download][url] = "http://arshaw.com/fullcalendar/downloads/fullcalendar-1.5.3.zip"
libraries[getid3][download][type] = "file"
libraries[getid3][download][url] = "http://downloads.sourceforge.net/project/getid3/getID3%28%29%201.x/1.9.3/getid3-1.9.3-20111213.zip"
libraries[html5bp][download][type] = "file"
libraries[html5bp][download][url] = "http://github.com/paulirish/html5-boilerplate/zipball/v1.0stripped"
libraries[jcarousel][download][type] = "file"
libraries[jcarousel][download][url] = "http://sorgalla.com/projects/download.php?jcarousel"
libraries[jquery][download][type] = "file"
libraries[jquery][download][url] = "https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"
; libraries[jquery.ui][download][type] = "file"
; libraries[jquery.ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery-ui-1.8.17.zip"
; libraries[jquery.ui][download][sha1] = "a3d1119d7b5a4a0b4eb50929ffd05cc7e7cd3eb2"
; libraries[jquery.ui][destination] = "sites/all/modules/jquery_ui"
libraries[simplepie][download][type] = "file"
libraries[simplepie][download][url] = "https://github.com/simplepie/simplepie/archive/master.zip"
libraries[jquery.ui][download][type] = "file"
libraries[jquery.ui][download][url] = "http://jqueryui.com/resources/download/jquery-ui-1.10.2.zip"
libraries[mailchimp][download][type] = "file"
libraries[mailchimp][download][url] = "http://apidocs.mailchimp.com/api/downloads/mailchimp-api-class.zip"
libraries[plupload][download][type] = "file"
libraries[plupload][download][url] = "https://github.com/downloads/moxiecode/plupload/plupload_1_5_1_1.zip"
libraries[simplepie][download][type] = "file"
libraries[simplepie][download][url] = "http://simplepie.org/downloads/simplepie_1.3.1.mini.php"
libraries[superfish][download][type] = "file"
libraries[superfish][download][url] = "http://dl.dropbox.com/u/22795799/superfish-library-for-drupal-v1.1.zip"
libraries[tinymce][download][type] = "file"
libraries[tinymce][download][url] = "http://download.moxiecode.com/tinymce/tinymce_4.0b3.zip"
libraries[spellchecker-new][download][type] = "file"
libraries[spellchecker-new][download][url] = "http://github.com/downloads/tinymce/tinymce/tinymce_spellchecker_php_2_0_6.zip"
libraries[spellchecker-new][directory_name] = "spellchecker-new"
libraries[spellchecker-new][destination] = "libraries/tinymce/jscripts/tiny_mce/plugins"
libraries[wkhtmltopdf][download][type] = "file"
libraries[wkhtmltopdf][download][url] = "http://wkhtmltopdf.googlecode.com/files/wkhtmltopdf-0.11.0_rc1-static-amd64.tar.bz2"










