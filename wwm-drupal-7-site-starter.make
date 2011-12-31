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

  
; Modules automatically included by BOA hosting system
; --------
; commented out admin because WWM prefers admin_menu
; projects[] = admin							
projects[] = agrcache
projects[] = backup_migrate
projects[] = blockcache_alter
projects[] = boost
projects[] = config_perms
projects[] = core_library
projects[] = css_emimage
projects[] = elysia_cron
projects[] = filefield_nginx_progress
projects[] = flood_control
projects[] = fpa
projects[] = httprl
projects[] = readonlymode
projects[] = robotstxt
projects[] = seckit
projects[] = site_verify
projects[] = textile
projects[] = variable_clean
projects[] = vars

; Modules for Wickwood Marketing Drupal 7 Site Starter
; --------
projects[] = addtoany
projects[] = admin_menu
projects[] = advanced_help
projects[] = auto_nodetitle
projects[] = better_formats
projects[] = boxes
projects[] = calendar
projects[] = captcha
projects[] = cck
; commented out ckeditor modules because they probably won't be used
; projects[] = ckeditor
; projects[] = ckeditor_link
; projects[] = ckeditor_swf
projects[] = colorbox
projects[] = comment_notify
projects[] = computed_field
projects[] = content_access 
projects[] = content_taxonomy
projects[] = context
projects[] = ctools
projects[] = custom_breadcrumbs
projects[] = date
projects[] = devel
projects[] = diff
projects[] = ds
projects[] = elements
projects[] = email
projects[] = entity
projects[] = entity_autocomplete
projects[] = exif
projects[] = extlink
projects[] = facebook_pull
projects[] = faq
projects[] = features
projects[] = feeds
projects[] = field_group
projects[] = filefield_paths
projects[] = filefield_sources
projects[] = fivestar
projects[] = flag
projects[] = forward
projects[] = front
projects[] = getid3
projects[] = globalredirect
projects[] = gmap
projects[] = google_analytics
projects[] = html5_base
projects[] = html5_tools
projects[] = i18n
; commented out imce modules because they probably won't be used
; projects[] = imce
; projects[] = imce_crop
; projects[] = imce_mkdir
; projects[] = imce_rename
; projects[] = imce_tools
; projects[] = imce_wysiwyg
projects[] = insert
projects[] = invite
projects[] = jcarousel
projects[] = job_scheduler
projects[] = jquery_plugin
projects[] = jquery_ui
projects[] = jquery_update
projects[] = libraries
projects[] = link
projects[] = location
projects[] = login_destination
projects[] = logintoboggan
projects[] = lightbox2
projects[] = linkit
projects[] = linkit_panel_pages
projects[] = linkit_views
projects[] = linkit_picker
projects[] = mailsystem
projects[] = media
projects[] = media_archive
projects[] = media_bliptv
projects[] = media_browser_plus
projects[] = media_embedded
projects[] = media_derivatives
projects[] = media_derivatives_html5
projects[] = media_feeds
projects[] = media_ffmpeg_simple
projects[] = media_flickr
projects[] = media_gallery
projects[] = media_node
projects[] = media_update
projects[] = media_vimeo
projects[] = media_youtube
projects[] = menu_block
projects[] = menu_breadcrumb
projects[] = messaging
projects[] = migrate
projects[] = mimemail
projects[] = modernizr
projects[] = module_builder
projects[] = mollom
projects[] = multiform
projects[] = node_clone
projects[] = nodequeue
; commented out notifications because it requires PHP 5.3 which is not currently supported by BOA
; projects[] = notifications							
projects[] = page_title
projects[] = panels
projects[] = pathauto
projects[] = pathologic
projects[] = persistent_login
projects[] = plupload
projects[] = print
projects[] = profiler
projects[] = purl
projects[] = quicktabs
projects[] = recaptcha
projects[] = redirect
projects[] = remote_stream_wrapper
projects[] = relation
projects[] = responder
projects[] = responsive_images
projects[] = rules
projects[] = scheduler
; commented out search404 because itcan cause performance issues with BOA
; projects[] = search404									
projects[] = securepages
projects[] = services
projects[] = service_links
projects[] = shadowbox
projects[] = site_map
projects[] = skinr
projects[] = smtp
projects[] = spaces
projects[] = stringoverrides
projects[] = strongarm
projects[] = styles
projects[] = taxonomy_manager
projects[] = taxonomy_menu
projects[] = token
projects[] = transliteration
projects[] = twitter_pull
projects[] = variable
projects[] = views
projects[] = views_bulk_operations
projects[] = views_slideshow
projects[] = votingapi
projects[] = webform
projects[] = workbench
projects[] = workbench_access
projects[] = workbench_files
projects[] = workbench_media
projects[] = workbench_moderation
projects[] = wp_blog
projects[] = wysiwyg
projects[] = wysiwyg_imagefield
projects[] = xmlsitemap




; Themes
; --------
; Themes automatically included by BOA hosting system
projects[] = tao
projects[] = rubik


; Libraries
; ---------
libraries[html5bp][download][type] = "file"
libraries[html5bp][download][url] = "http://github.com/paulirish/html5-boilerplate/zipball/v1.0stripped"
libraries[jquery][download][type] = "file"
libraries[jquery][download][url] = "https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"
libraries[jquery.ui][download][type] = "file"
libraries[jquery.ui][download][url] = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/jquery-ui.min.js"
libraries[simplepie][download][type] = "git"
libraries[simplepie][download][url] = "https://github.com/simplepie/simplepie.git"
; Commented out textile library because it caused problems with admin/reports/status
; presumably because of a link on the page to it from an error being generated.
; libraries[textile][download][type] = "file"
; libraries[textile][download][url] = "http://code.google.com/p/textpattern/source/browse/releases/4.4.1/source/textpattern/lib/classTextile.php"
libraries[getid3][download][type] = "file"
libraries[getid3][download][url] = "http://sourceforge.net/projects/getid3/files/latest/download?source=files"
libraries[dompdf][download][type] = "file"
libraries[dompdf][download][url] = "http://code.google.com/p/dompdf/downloads/detail?name=dompdf_0-6-0_beta2.zip&can=2&q="

