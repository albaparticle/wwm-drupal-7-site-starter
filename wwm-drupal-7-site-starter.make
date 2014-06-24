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

; Reviewed on 2014-06-23
; Use Omega8.cc enhanced Drupal core instead of Drupal core:
; See https://omega8.cc/how-to-add-custom-platform-properly-140 for latest download URL
projects[drupal][type] = "core"
projects[drupal][download][type] = "get"
projects[drupal][download][url] = "http://files.aegir.cc/core/drupal-7.28.1.tar.gz"
  
; Reviewed on 2014-06-23
; Add Modules that are automatically included by BOA hosting system
; to override them with the latest versions
; See https://omega8.cc/supported-enabled-disabled-a-complete-list-150
; --------
; Contrib [S]upported:	
projects[] = ais
projects[] = backup_migrate
projects[] = ckeditor
; projects[] = fbconnect
projects[] = imagecache
projects[] = imagecache_external
projects[] = responsive_images
projects[] = tinybrowser
projects[] = wysiwyg_spellcheck
	
; Contrib [S]upported and [B]undled:	
projects[] = advagg
projects[] = blockcache_alter
projects[] = boost
projects[] = cdn
projects[] = config_perms
projects[] = css_emimage
projects[] = display_cache
projects[] = esi
projects[] = expire
projects[] = filefield_nginx_progress
projects[] = flood_control
projects[] = force_password_change
projects[] = fpa
projects[] = httprl
projects[] = login_security
projects[] = nocurrent_pass
projects[] = panels_content_cache
projects[] = purge
; Print module is now included in BOA and patched to use BOA wkhtmltopdf library for security
; projects[] = print
projects[] = readonlymode
projects[] = reroute_email
projects[] = securesite
projects[] = site_verify
projects[] = speedy
projects[] = taxonomy_edge
projects[] = textile
projects[] = variable_clean
projects[] = vars
projects[] = views_cache_bully
projects[] = views_content_cache
projects[] = views404
	
; Contrib [F]orce[E]nabled	
projects[] = entitycache
; The following module needs to use the dev version because stable release is too old
; projects[] = robotstxt
projects[robotstxt][version] = 1.x-dev
projects[robotstxt][type] = "module"
	
; Contrib [F]orce[D]isabled	
; Commented out modules never used anyway
; projects[] = background_process
; projects[] = coder
projects[] = devel
; projects[] = l10n_update
; projects[] = performance
; projects[] = ultimate_cron

; Contrib [NA]:	
; Commented out modules never used anyway
; projects[] = cache_backport
; projects[] = redis
	
; Contrib [S]oft[E]nabled:		
projects[] = admin
projects[] = rubik

; Modules Added for Wickwood Marketing Drupal 7 Site Starter
; --------
projects[] = addressfield
projects[] = anchors_panels_navigation
projects[] = admin_views
projects[] = administerusersbyrole
projects[] = advanced_help
projects[] = amazon
projects[] = amazon_store
projects[] = archive
projects[] = autoassignrole
projects[] = auto_entitylabel
projects[] = auto_nodetitle
projects[] = backup_migrate_files
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
projects[] = ctools
projects[] = custom_breadcrumbs
projects[] = custom_formatters
projects[] = customfilter
projects[] = date
projects[] = date_ical
projects[] = devel_themer
projects[] = delta
projects[] = diff
projects[] = ds
projects[] = elements
projects[] = email
projects[] = enabled_modules

; Reviewed on 2014-05-26
; Must pull patched module from WWM GitHub repo to
; allow for tokens to be created for date fields that have both starting and end dates.
; https://drupal.org/node/1621084
; projects[] = entity
projects[entity][type] = "module"
projects[entity][download][type] = "git"
projects[entity][download][url] = "https://github.com/wickwood/entity.git"
projects[entity][download][branch] = 7.x-1.1-dev-wwm

projects[] = entity_autocomplete

; Reviewed on 2014-06-23
; The following module needs to be patched to allow skipping entity access check when rendering field
; as described in https://drupal.org/node/1967180
; projects[] = entityreference
projects[entityreference][version] = 1.x-dev
projects[entityreference][patch][] = "https://drupal.org/files/1967180-7.patch"

projects[] = entityreference_prepopulate
projects[] = entityreference_view_widget
projects[] = entity_view_mode
projects[] = easy_breadcrumb
projects[] = exclude_node_title

; Reviewed on 2014-05-18
; extlink Module needs to be patched to fix 
; Images linking to an external link ALWAYS have the "external link" icon displayed
; see issue: https://drupal.org/node/2257023
;projects[] = extlink
projects[extlink][type] = "module"
projects[extlink][version] = 1.x-dev
projects[extlink][patch][] = "https://drupal.org/files/issues/extlink-always-on-images-2257023-8.patch"

projects[] = features

; Reviewed on 2014-06-23
; The following module needs to have Patch applied to support import of encrypted passwords from (Dosn't look like anythign has changed)
; https://drupal.org/files/1611554-3-support-for-encrypted-passwords.patch
; If this feature is not nessary than the stable version can be used.
projects[] = feeds
; projects[feeds][type] = "module"
; projects[feeds][download][type] = "git"
; projects[feeds][download][url] = "https://github.com/wickwood/feeds.git"
; projects[feeds][download][branch] = wwm-7.x-2.x-with-support-for-encrypted-passwords-4

projects[] = feeds_tamper
projects[] = fences
projects[] = field_group
projects[] = field_permissions
projects[] = field_slideshow
projects[] = field_tools

; Reviewed on 2014-06-23
; The following item needs to have a patch applied to
; hide "manage display" tab when permissions are revoked
; from https://drupal.org/comment/6766880#comment-6766880
; projects[] = field_ui_permissions
projects[field_ui_permissions][type] = "module"
; projects[field_ui_permissions][version] = 1.0-beta1
projects[field_ui_permissions][version] = 1.x-dev
projects[field_ui_permissions][patch][] = "https://drupal.org/files/i1837156-1.patch"

; Reviewed on 2014-06-23
; The following module is only needed if the Media 7.x-2.x module is used (There doesn't seem to be a URL here...)
; projects[] = file_entity
; projects[file_entity][version] = 2.x-dev
; projects[file_entity][type] = "module"

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

; Reviewed on 2014-04-22
; The following module needs to use the dev version 
; because nothing else exists
projects[] = getresponse
; projects[getresponse][type] = "module"
; projects[getresponse][download][branch] = "7.x-1.x"

projects[] = globalredirect
projects[] = google_analytics
projects[] = google_analytics_reports
projects[] = googleanalytics_perpage
projects[] = html5_base

; Reviewed on 2014-04-30
; This sandbox project has been integrated into the 7.x-1.0 version of the imagecache_actions project.
; projects[image_effects_text][type] = "module"
; projects[image_effects_text][download][type] = "git"
; projects[image_effects_text][download][url] = "http://git.drupal.org/sandbox/fietserwin/1435964.git"

projects[] = image_resize_filter
projects[] = imagecache_actions
projects[] = imagecache_profiles
projects[] = imagecache_proportions

; Reviewed on 2014-04-30
; The following module needs to use the dev version 
; because "stable" release candidate is very old 
; As of this commit the latest dev release was 2013-Dec-23
; projects[] = imagecrop
projects[imagecrop][type] = "module"
projects[imagecrop][version] = 1.x-dev

projects[] = inline_entity_form
projects[] = invite
projects[] = javascript_libraries
projects[] = jcarousel
projects[] = job_scheduler
projects[] = jquery_plugin
projects[] = jquery_update
projects[] = jquerymenu
projects[] = konamicode
projects[] = libraries
projects[] = lightbox2
projects[] = link
projects[] = location
projects[] = location_feeds

; Reviewed on 2014-04-30
; The mailchimp_lists submodule of mailchimp needs to have WWM Patch applied
; only if you need to filter out users with invalid emails designated with nomail.invalid
; during the sync with Mailchimp
projects[] = mailchimp
; projects[mailchimp][type] = "module"
; projects[mailchimp][download][type] = "git"
; projects[mailchimp][download][url] = "https://github.com/wickwood/mailchimp.git"
; projects[mailchimp][download][branch] = 7.x-2.x-skip-noemail-on-sync

projects[] = mailsystem

; Reviewed on 2014-04-30
; The following module needs to use the 1.x-dev version 
; because version 2 is not ready for production and 
; only bug fixes are being applied to 1.x-dev
; Also need to apply patch from 
: https://drupal.org/node/1995030 to add support for media in WYSIWYG summary 
; projects[] = media
projects[media][type] = "module"
projects[media][version] = 1.4
projects[media][patch][] = "https://drupal.org/files/wysiwyg_summary-1995030-3.patch"
; projects[media][version] = 2.x-dev
; projects[media][patch][] = "https://drupal.org/files/issues/media-7.x-2.x-wysiwyg-summary-support-1995030-6.patch"

; The following item needs to a patch applied from
; https://drupal.org/comment/7421208#comment-7421208 to support WYSIWYG editors to exposed summary fields, 
; which is created by patching WYSIWYG module with patch from https://drupal.org/comment/7404872#comment-7404872
; We pull patched module from WWM GitHub
; projects[media][type] = "module"
; projects[media][download][type] = "git"
; projects[media][download][url] = "https://github.com/wickwood/media.git"
; projects[media][download][branch] = 7.x-1.x-wwm

projects[] = media_archive
projects[] = media_bliptv

; Reviewed on 2014-04-30
; Use the following guidelines depending on which version of Media module is being used:
; MBP 7.x-1.x is for Media 7.x-1.x - requires explicitly stating which version to pull
; MBP 7.x-3.x is for Media 7.x-2.x
; projects[] = media_browser_plus
; projects[media_browser_plus][type] = "module"
; projects[media_browser_plus][version] = 1.x-dev
projects[media_browser_plus][download][type] = "get"
projects[media_browser_plus][download][url] = "http://ftp.drupal.org/files/projects/media_browser_plus-7.x-1.x-dev.tar.gz"


; Reviewed on 2014-04-30
; The media_derivatives modules are not ready for production environments
; projects[] = media_derivatives
; projects[] = media_derivatives_html5

projects[] = media_feeds

; Reviewed on 2014-04-30
; The following module is commented out because
; it depends on the media_derivatives module
; projects[] = media_ffmpeg_simple

projects[] = media_flickr

; Reviewed on 2014-04-30
; The following module uses the beta8 release because
; that is the most stable version
; 7.x-1.x - requires explicitly stating which version to pull
; projects[] = media_gallery
projects[media_gallery][version] = 1.0-beta8

projects[] = media_node
projects[] = media_update

; Reviewed on 2014-04-30
; The following module needs to use the sandbox version
; from https://drupal.org/sandbox/DevinCarlson/1823634
; because nothing else exists yet but it may soon be added to media module
; according to https://drupal.org/node/2062659 and https://drupal.org/node/1792738
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
projects[] = navbar
projects[] = node_clone
projects[] = node_limit
projects[] = node_recur
projects[] = nodereference_url

; Reviewed on 2014-04-30
; The following line pulled the 7.x-2.0-beta1 version of the nodequeue module 
; and this caused a fatal error because it conflicts with latest version of MariaDB 
; presumably because the latest stable release is 7.x-2.0-beta1 version on 2011-Sep-20
; projects[] = nodequeue
projects[nodequeue][version] = 2.x-dev
projects[nodequeue][type] = "module"

projects[] = nodesquirrel
projects[] = noggin

; Reviewed on 2014-04-30
; Notifications was orginially commented out because it requires PHP 5.3 which was not supported by BOA
; BOA now does support PHP 5.3, but there is not a stable release of the module yet and we do not have
; a clear need for it at this time to make it worth adding and testing
; projects[] = notifications	

projects[] = oauth
projects[] = options_element	
projects[] = overlay_paths
projects[] = override_node_options			
projects[] = page_title
projects[] = panels
projects[] = password-reset
projects[] = pathauto
projects[] = pathologic

; Reviewed on 2014-04-30
; Phone 1.0-beta1 released 2014-Jan-14
projects[phone][type] = "module"
projects[phone][version] = 1.0-beta1


projects[] = plupload
projects[] = popup

; Reviewed on 2014-04-30
; The following item requires a custom WWM patch to be applied
; in order to allow prepopulation from links created with Views.
; projects[] = prepopulate
projects[prepopulate][download][type] = "git"
projects[prepopulate][download][url] = "https://github.com/wickwood/prepopulate.git"
projects[prepopulate][download][branch] = 7.x-2.x-wwm

projects[] = profiler
projects[] = projekktor

; Reviewed on 2014-04-30
; The publication_date module must be pulled from the WWM GitHub Repo
; to apply custimizations to work with custom Date Navigation module
projects[publication_date][download][type] = "git"
projects[publication_date][download][url] = "https://github.com/wickwood/publication_date.git"
projects[publication_date][download][branch] = 7.x-1.x-wwm

projects[] = publish_button
projects[] = publishcontent
projects[] = purl

; Reviewed on 2014-05-10
; Must still pull the dev version of the module to fix the issues reported 
; in https://drupal.org/node/2104643 and https://drupal.org/node/2108935
; however, we do not need to patch
; projects[] = quicktabs
projects[quicktabs][version] = 3.x-dev

projects[] = queue_ui

; Reviewed on 2014-04-30
; The following item needs to have patch applied from
; from https://drupal.org/node/1239478#comment-6439934 
; to allow Views to show actual Username instead of Real Name.
; For now we will use WWM fork of this module pulled from GitHub
; projects[] = realname
projects[realname][type] = "module"
projects[realname][version] = 1.x-dev
projects[realname][patch][] = "https://drupal.org/files/issues/realname-views-username-field-1239478-79.patch"
; The following can be removed if the issues stated above have are fixed by the above patch.
;projects[realname][download][type] = "git"
;projects[realname][download][url] = "https://github.com/wickwood/realname.git"
;projects[realname][download][branch] = 7.x-1.x-wwm

projects[] = recaptcha

; Reviewed on 2014-04-30
; The following item needs to have patch applied from
; from https://drupal.org/comment/8506117#comment-8506117 to prevent redirect loops.
; projects[] = redirect
projects[redirect][version] = 1.x-dev
projects[redirect][patch][] = "https://drupal.org/files/issues/redirect.circular-loops.1796596-146.patch"

projects[] = role_delegation
projects[] = rules
projects[] = rules_link
projects[] = rules_linkevent
projects[] = scheduler
projects[] = search_config

; Reviewed on 2014-04-30
; The following item needs to have a patch applied
; from http://drupal.org/node/1928156#comment-7145266 to allow Image style select in simpleads block configuration. 
; and a cutom WWM patch applied to provide an added extra text field for image ads.
; projects[] = simpleads
projects[simpleads][download][type] = "git"
projects[simpleads][download][url] = "https://github.com/wickwood/simpleads.git"
projects[simpleads][download][branch] = 7.x-1.x-wwm

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

; Reviewed on 2014-04-30
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

; Reviewed on 2014-04-30
; The following item needs to have the patch applied from
; https://drupal.org/node/1967702#comment-7289190 
; to allow view arguments be passed as parameters to rule set.
; projects[] = views_bulk_operations
projects[views_bulk_operations][type] = "module"
projects[views_bulk_operations][download][type] = "git"
projects[views_bulk_operations][download][url] = "https://github.com/wickwood/views_bulk_operations.git"
projects[views_bulk_operations][download][branch] = 7.x-3.x-wwm

projects[] = views_data_export
projects[] = views_export_xls
projects[] = views_megarow
projects[] = views_php

; Reviewed on 2014-04-30
; Must dev version of this views_slideshow to remove the dependency on views >=3.0
; projects[] = views_slideshow
projects[views_slideshow][version] = 3.x-dev

projects[] = views_system
projects[] = webform
projects[] = webform_ajax
projects[] = widgets
projects[] = workbench
projects[] = workbench_access
projects[] = workbench_media

; Reviewed on 2014-04-30
; The following item requires a custom WWM patch that is created from patching this module with a patch from
; https://drupal.org/node/1447886#comment-7570151 to limit viewing of unpubished nodes by content type.
; and the patch from https://drupal.org/node/1361210#comment-6052334 to fix issue with 
; 'Workbench moderation: current' views filter does not list all content 
; when a draft or needs review revision exists after a published revision.
; projects[] = workbench_moderation
projects[workbench_moderation][type] = "module"
projects[workbench_moderation][download][type] = "git"
projects[workbench_moderation][download][url] = "https://github.com/wickwood/workbench_moderation.git"
projects[workbench_moderation][download][branch] = 7.x-1.x-wwm

; Reviewed on 2014-04-30
; The following item needs to a patch applied from
; https://drupal.org/comment/7404872#comment-7404872 to WYSIWYG editors to exposed summary fields.
; Note this version of the patch also requires patching Media module
; from https://drupal.org/comment/7421208#comment-7421208
; projects[] = wysiwyg
projects[wysiwyg][type] = "module"
projects[wysiwyg][download][type] = "git"
projects[wysiwyg][download][url] = "https://github.com/wickwood/wysiwyg.git"
projects[wysiwyg][download][branch] = 7.x-2.x-wwm

projects[] = xmlsitemap


; WWM Custom Modules and Features to pull from a GitHub
; Reviewed on 2014-04-30
; projects[] = date_navigation
projects[date_navigation][type] = "module"
projects[date_navigation][download][type] = "git"
projects[date_navigation][download][url] = "https://github.com/wickwood/date_navigation.git"
projects[date_navigation][download][branch] = 7.x-1.x-wwm

; Reviewed on 2014-04-30
; Current state of custom account tabs requires that this module be installed 
; and used at the site module level not the platform level
; This is module is currently customized only for the ICCA website.
; projects[] = user_account_tabs
; projects[user_account_tabs][type] = "module"
; projects[user_account_tabs][download][type] = "git"
; projects[user_account_tabs][download][url] = "https://github.com/wickwood/user_account_tabs.git"
; projects[user_account_tabs][download][branch] = 7.x-1.x-wwm


; Themes
; --------
; Themes Added for Wickwood Marketing Drupal 7 Site Starter
; Reviewed on 2014-04-30
projects[] = adaptivetheme
projects[] = corolla

; Reviewed on 2014-02-24
; projects[] = ember
projects[ember][version] = 2.x-dev
projects[ember][type] = "theme"

projects[] = fbg
projects[] = omega
projects[] = pixture_reloaded
projects[] = sky
projects[] = tao

; For some reason zen would not dowload with just the following line
; projects[] = zen
projects[zen][version] = 5.5
projects[zen][type] = "theme"

; Reviewed on 2014-05-18
; Libraries Added for Wickwood Marketing Drupal 7 Site Starter
; ---------
libraries[ckeditor][download][type] = "file"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.tar.gz"
libraries[colorbox][download][type] = "file"
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/master.zip"
libraries[fullcalendar][download][type] = "file"
libraries[fullcalendar][download][url] = "https://github.com/arshaw/fullcalendar/releases/download/v1.6.4/fullcalendar-1.6.4.zip"
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
libraries[iCalcreator][download][type] = "file"
libraries[iCalcreator][download][url] = "http://kigkonsult.se/downloads/dl.php?f=iCalcreatorusing-2.18"
libraries[mailchimp][download][type] = "get"
libraries[mailchimp][download][url] = "https://bitbucket.org/mailchimp/mailchimp-api-php/get/2.0.4.zip"
libraries[simplepie][download][type] = "file"
libraries[simplepie][download][url] = "https://github.com/simplepie/simplepie/archive/master.zip"
libraries[plupload][download][type] = "file"
libraries[plupload][download][url] = "https://github.com/downloads/moxiecode/plupload/plupload_1_5_1_1.zip"
libraries[simplepie][download][type] = "file"
libraries[simplepie][download][url] = "http://simplepie.org/downloads/simplepie_1.3.1.mini.php"
libraries[superfish][download][type] = "file"
libraries[superfish][download][url] = "http://dl.dropbox.com/u/22795799/superfish-library-for-drupal-v1.1.zip"
libraries[tinymce][download][type] = "file"
libraries[tinymce][download][url] = "http://download.moxiecode.com/tinymce/tinymce_4.0b3.zip"

; Sub-library plugins
libraries[aspell][download][type] = "file"
libraries[aspell][download][url] = "http://s1.ckeditor.com/sites/default/files/uploads/aspell.7z"
libraries[aspell][destination] = "libraries/ckeditor/plugins"
libraries[spellchecker][download][type] = "file"
libraries[spellchecker][download][url] = "http://download.moxiecode.com/spellcheckers/tinymce_spellchecker_php_4.0.zip"
libraries[spellchecker][directory_name] = "spellchecker"
libraries[spellchecker][destination] = "libraries/tinymce/jscripts/tiny_mce/plugins"\











