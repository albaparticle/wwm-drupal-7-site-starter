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
  
; Use Omega8.cc enhanced Drupal core instead of Drupal core:
projects[drupal][type] = "core"
projects[drupal][download][type] = "get"
projects[drupal][download][url] = "http://files.aegir.cc/core/drupal-7.24.1.tar.gz"

; Patch Pressflow to run on BOA
; and use robotstxt module_builder
; projects[pressflow][patch][] = "file:///data/disk/wwmhosting-admin/static/custom/platform-make-files/wwm-drupal-7-site-starter/boa-pressflow-patch.patch"

  
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

; The following module needs to use the dev version to fix issue described in
; {enter URL for Drupal Issue Here}
; projects[] = entitycache
projects[entitycache][version] = 1.x-dev
projects[entitycache][type] = "module"

projects[] = filefield_nginx_progress
projects[] = flood_control
projects[] = fpa
projects[] = httprl
projects[] = readonlymode

; The following module needs to use the dev version to fix issue described in
; {enter URL for Drupal Issue Here}
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
projects[] = addressfield
projects[] = admin_views
projects[] = administerusersbyrole
projects[] = advanced_help
projects[] = amazon
projects[] = amazon_store
projects[] = archive
projects[] = autoassignrole
projects[] = auto_entitylabel
projects[] = better_formats
projects[] = better_exposed_filters
projects[] = boxes
projects[] = breakpoints
projects[] = captcha
projects[] = cck
projects[] = ckeditor_swf
projects[] = clean_module_list
projects[] = chart 
projects[] = colorbox
projects[] = colorbox_node
projects[] = colors
projects[] = comment_notify
projects[] = computed_field
projects[] = conditional_styles
projects[] = content_access 
projects[] = content_taxonomy
projects[] = context
projects[] = cron_debug

; The following module needs to use the dev version to fix issue described in
; {enter URL for Drupal Issue Here}
; projects[] = ctools
projects[ctools][version] = 1.x-dev
projects[ctools][type] = "module"

projects[] = custom_breadcrumbs
projects[] = custom_formatters
projects[] = customfilter
projects[] = date
projects[] = date_ical
projects[] = devel
projects[] = devel_themer
projects[] = delta
projects[] = diff
projects[] = ds
projects[] = elements
projects[] = email
projects[] = enabled_modules

; The following module needs to use the dev version to fix issue described in
; https://drupal.org/node/1440928
; projects[] = entity
projects[entity][version] = 1.3
projects[entity][type] = "module"
projects[entity][patch][] = "https://drupal.org/files/1440928_fix_fatal_error_for_entity_tokens-44.patch"

projects[] = entity_autocomplete

; The following module needs to be patched to fix issue described in
; https://drupal.org/node/1967180
; projects[] = entityreference
projects[entityreference][version] = 1.x-dev
projects[entityreference][patch][] = "https://drupal.org/files/1967180-7.patch"

projects[] = entityreference_prepopulate
projects[] = entityreference_view_widget
projects[] = entity_view_mode
projects[] = easy_breadcrumb
projects[] = exclude_node_title
projects[] = extlink
projects[] = features
; The following item needs to have WWM Patch applied
projects[] = feeds

projects[] = feeds_tamper
projects[] = fences
projects[] = field_group
projects[] = field_permissions
projects[] = field_slideshow
projects[] = field_tools

; The following item needs to have Patch applied from
; https://drupal.org/node/1837156#comment-6766880
; projects[] = field_ui_permissions
projects[field_ui_permissions][type] = "module"
projects[field_ui_permissions][download][branch] = "7.x-1.x"
projects[field_ui_permissions][patch][] = "https://drupal.org/files/i1837156-1.patch"

; The following module is only needed if the Media 7.x-2.x module is used
;projects[] = file_entity
;projects[file_entity][version] = 2.x-dev
;projects[file_entity][type] = "module"

projects[] = floating_block
projects[] = exposed_filter_data
projects[] = filefield_paths
projects[] = filefield_sources
projects[] = fp
projects[] = front
projects[] = fullcalendar
projects[] = fullcalendar_templates
projects[] = ga_tokenizer
projects[] = gdoc_field
projects[] = getid3

; The following module needs to use the dev version 
; because nothing else exists
; projects[] = getresponse
projects[getresponse][type] = "module"
projects[getresponse][download][branch] = "7.x-1.x"

projects[] = globalredirect
projects[] = google_analytics
projects[] = google_analytics_reports
projects[] = googleanalytics_perpage
projects[] = html5_base

; The following module needs to use the sandbox version
; because nothing else exists
projects[image_effects_text][type] = "module"
projects[image_effects_text][download][type] = "git"
projects[image_effects_text][download][url] = "http://git.drupal.org/sandbox/fietserwin/1435964.git"

projects[] = image_resize_filter
projects[] = imagecache_actions
projects[] = imagecache_profiles

; The following module is commented out because
;
; projects[] = imagecache_scale9actions

projects[] = imagecache_proportions

; The following module needs to use the dev version 
; because "stable" release candidate is very old
; projects[] = imagecrop
projects[imagecrop][type] = "module"
projects[imagecrop][version] = 1.x-dev

projects[] = inline_entity_form
projects[] = invite
projects[] = javascript_libraries
projects[] = jcarousel
projects[] = job_scheduler
projects[] = jquery_plugin
projects[] = jquery_ui
projects[] = jquery_update
projects[] = jquerymenu
projects[] = konamicode
projects[] = libraries
projects[] = lightbox2
projects[] = link
projects[] = location
projects[] = location_feeds
projects[] = mailchimp

; The following submodule of mailchimp needs to have WWM Patch applied
; only if you need to filter out users with invalid emails designated with nomail.invalid
; during the sync with Mailchimp
; projects[] = mailchimp_lists
; projects[mailchimp_lists][patch][] = "path/to/local/patch"

projects[] = mailsystem

; The following module needs to use the dev version 
; because version 2 is not ready for production and 
; only bug fixes are being applied to 1.x-dev
; projects[] = media
projects[media][type] = "module"
projects[media][version] = 1.4
projects[media][patch][] = "https://drupal.org/files/issues/media-7.x-2.x-wysiwyg-summary-support-1995030-6.patch"

; The following item needs to a patch applied from
; https://drupal.org/comment/7421208#comment-7421208 to support WYSIWYG editors to exposed summary fields, 
; which is created by patching WYSIWYG module with patch from https://drupal.org/comment/7404872#comment-7404872
; We pull patched module from WWM GitHub
; projects[media][type] = "module"
; projects[media][download][type] = "git"
; projects[media][download][url] = "https://github.com/wickwood/media.git"
; projects[media][download][branch] = 7.x-1.x-wwm

; The following module is commented out because
;
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

; The following module is commented out because
;
; projects[] = media_ffmpeg_simple

projects[] = media_flickr

; The following module uses the beta8 release because
; that is the most stable version
;projects[] = media_gallery
projects[media_gallery][version] = 1.0-beta8

projects[] = media_node
projects[] = media_update

; The following module needs to use the sandbox version
; from https://drupal.org/sandbox/DevinCarlson/1823634
; because nothing else exists but it may soon be added to media module
; according to https://drupal.org/node/2062659
projects[media_wysiwyg_view_mode][type] = "module"
projects[media_wysiwyg_view_mode][download][type] = "git"
projects[media_wysiwyg_view_mode][download][url] = "http://git.drupal.org/sandbox/DevinCarlson/1823634.git"

projects[] = media_vimeo
projects[] = media_youtube
projects[] = mediafront
projects[] = menu_attributes
projects[] = menu_block
projects[] = menu_expanded
projects[] = menu_item_visibility
projects[] = menu_position
projects[] = mimemail
projects[] = module_filter
projects[] = module_instructions
projects[] = mollom

projects[] = multiform
;projects[multiform][version] = 1.0

projects[] = navbar
projects[] = nocurrent_pass
projects[] = node_clone
projects[] = node_limit
projects[] = node_recur
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
projects[] = omega_tools
projects[] = options_element	
projects[] = overlay_paths
projects[] = override_node_options			
projects[] = page_title
projects[] = panels
projects[] = password-reset
projects[] = pathauto
projects[] = pathologic

; The following module needs to use the dev version
; because nothing else exists
projects[phone][version] = 1.x-dev
projects[phone][type] = "module"

projects[] = plupload
projects[] = popup

; The following item requires a custom WWM patch to be applied
; in order to allow prepopulation from links created with Views.
projects[] = prepopulate
; projects[mailchimp_lists][patch][] = "path/to/local/patch"

projects[] = print
projects[] = profiler
projects[] = projekktor

; The following module may need to be patched if Publication date not accessible at node creation
; https://drupal.org/node/1864946
projects[publication_date][version] = 1.x-dev
projects[publication_date][type] = "module"
; projects[publication_date][download][type] = "git"
; projects[publication_date][download][url] = "https://github.com/wickwood/publication_date.git"
; projects[publication_date][download][branch] = 7.x-1.x-wwm


projects[] = publish_button
projects[] = publishcontent
projects[] = purl

; The following item needs to have WWM Patch applied
; WWM applied patch from https://drupal.org/node/2104643#comment-7947547 to fix rendering of tabs when tabs are hidden.
; projects[] = quicktabs
projects[quicktabs][version] = 3.x-dev
projects[quicktabs][patch][] = "https://drupal.org/files/2104643-revert-qt-487518-5.patch"

projects[] = queue_ui

; The following item needs to have patch applied from
; from https://drupal.org/node/1239478#comment-6439934 
; to allow Views to show actual Username instead of Real Name.
; For now we will use WWM fork of this module pulled from GitHub
; projects[] = realname
projects[realname][type] = "module"
projects[realname][version] = 1.x-dev
projects[realname][patch][] = "https://drupal.org/files/issues/realname-views-username-field-1239478-79.patch"

;projects[realname][download][type] = "git"
;projects[realname][download][url] = "https://github.com/wickwood/realname.git"
;projects[realname][download][branch] = 7.x-1.x-wwm


projects[] = recaptcha

; The following item needs to have patch applied from
; from https://drupal.org/comment/8220853#comment-8220853 to prevent redirect loops.
; projects[] = redirect
projects[redirect][version] = 1.x-dev
projects[redirect][patch][] = "https://drupal.org/files/issues/redirect.circular-loops.1796596-124.patch"

projects[] = reroute_email
projects[] = role_delegation
projects[] = rules
projects[] = rules_link
projects[] = rules_linkevent
projects[] = scheduler
projects[] = search_config

; The following item needs to have a patch applied
; from http://drupal.org/node/1928156#comment-7145266 to allow Image style select in simpleads block configuration. 
; and a cutom WWM patch applied to provide an added extra text field for image ads.
projects[] = simpleads
; projects[simpleads][patch][] = "path/to/local/patch"

projects[] = simplehtmldom
projects[] = site_disclaimer
projects[] = smartcrop
projects[] = smtp
projects[] = socialmedia
projects[] = stringoverrides
projects[] = strongarm
projects[] = system_stream_wrapper
projects[] = tabtamer
projects[] = taxonomy_manager
projects[] = taxonomy_menu
projects[] = taxonomy_tools
projects[] = title_field_ui
projects[] = token
projects[] = token_filter
projects[] = transliteration
projects[] = unique_field
projects[] = upload_default_avatar

; The following item needs to have a patch applied
; from https://drupal.org/node/1249684#comment-6355236 to prevent exposed filter on Roles to stop dissappearing when  
; "Only has 'authenticated user' role" or "Has roles in addition to 'authenticated user' ".
; projects[] = views
; projects[views][version] = 3.x-dev
; projects[views][patch][] = "https://drupal.org/files/views-1249684-dependency-exposed-filter.patch"
; Patch did not apply so pulling from WWM Github Repo
projects[views][type] = "module"
projects[views][download][type] = "git"
projects[views][download][url] = "https://github.com/wickwood/views.git"
projects[views][download][branch] = 7.x-3.x-wwm

; The following item needs to have the patch applied from
; https://drupal.org/node/1967702#comment-7289190 
; to allow view arguments be passed as parameters to rule set.
projects[] = views_bulk_operations

projects[] = views_data_export
projects[] = views_export_xls
projects[] = views_megarow
projects[] = views_php
projects[] = views_slideshow
projects[] = views_system
projects[] = webform
projects[] = widgets
projects[] = workbench
projects[] = workbench_access
projects[] = workbench_media

; The following item requires a custom WWM patch that is created from patching this module with a patch from
; https://drupal.org/node/1447886#comment-7570151 to limit viewing of unpubished nodes by content type.
; and the patch from https://drupal.org/node/1361210#comment-6052334 to fix issue with 
; 'Workbench moderation: current' views filter does not list all content 
; when a draft or needs review revision exists after a published revision.
projects[] = workbench_moderation
; projects[simpleads][patch][] = "path/to/local/patch"

; The following item is commented out because 
; it has to many thing hardcoded that should be configurabale
; and it does not uninstall well
; projects[] = wp_blog

; The following item needs to a patch applied from
; https://drupal.org/comment/7404872#comment-7404872 to WYSIWYG editors to exposed summary fields.
; Note this version of the patch also requires patching Media module
; from https://drupal.org/comment/7421208#comment-7421208)
; projects[] = wysiwyg
; projects[wysiwyg][version] = 2.x-dev
; projects[wysiwyg][patch][] = "https://drupal.org/files/wysiwyg-741606.45.patch"
; Since patch did not apply, we pull patched module from WWM GitHub
projects[wysiwyg][type] = "module"
projects[wysiwyg][download][type] = "git"
projects[wysiwyg][download][url] = "https://github.com/wickwood/wysiwyg.git"
projects[wysiwyg][download][branch] = 7.x-2.x-wwm

projects[] = xmlsitemap


; WWM Custom Modules and Features to pull from a GitHub
; projects[] = date_navigation
; projects[] = user_account_tabs

projects[date_navigation][type] = "module"
projects[date_navigation][download][type] = "git"
projects[date_navigation][download][url] = "https://github.com/wickwood/date_navigation.git"
projects[date_navigation][download][branch] = 7.x-1.x-wwm

; Current state of custom account tabs requires that this module be installed 
; and used at the site module level not the platform level
; projects[user_account_tabs][type] = "module"
; projects[user_account_tabs][download][type] = "git"
; projects[user_account_tabs][download][url] = "https://github.com/wickwood/user_account_tabs.git"
; projects[user_account_tabs][download][branch] = 7.x-1.x-wwm


; Themes
; --------
; Themes Added for Wickwood Marketing Drupal 7 Site Starter
; The following theme uses the dev version because
; stable releases are over a year old.
; projects[] = adaptivetheme
projects[adaptivetheme][version] = 3.x-dev
projects[adaptivetheme][type] = "theme"

; The following theme uses the dev version because
; stable releases are over a year old.
; projects[] = corolla
projects[corolla][version] = 3.x-dev
projects[corolla][type] = "theme"

projects[] = fbg
projects[omega][type] = "theme"

; The following theme uses the dev version because
; stable releases are over a year old.
; projects[] = pixture_reloaded
projects[pixture_reloaded][version] = 3.x-dev
projects[pixture_reloaded][type] = "theme"

projects[] = rubik

; The following theme uses the dev version because
; stable releases are over a year old.
; projects[] = sky
projects[sky][version] = 3.x-dev
projects[sky][type] = "theme"

projects[tao][type] = "theme"

; For some reason zen would not dowload with just the following line
; projects[] = zen
projects[zen][version] = 5.4
projects[zen][type] = "theme"


; Libraries Added for Wickwood Marketing Drupal 7 Site Starter
; ---------
libraries[ckeditor][download][type] = "file"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.tar.gz"
libraries[colorbox][download][type] = "file"
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/master.zip"
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
libraries[jquery.cycle][download][type] = "file"
libraries[jquery.cycle][download][url] = "http://malsup.github.com/jquery.cycle.all.js"
; libraries[jquery.ui][download][type] = "file"
; libraries[jquery.ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery-ui-1.8.17.zip"
; libraries[jquery.ui][download][sha1] = "a3d1119d7b5a4a0b4eb50929ffd05cc7e7cd3eb2"
; libraries[jquery.ui][destination] = "sites/all/modules/jquery_ui"
libraries[iCalcreator][download][type] = "file"
libraries[iCalcreator][download][url] = "http://kigkonsult.se/downloads/dl.php?f=iCalcreatorusing-2.18"
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










