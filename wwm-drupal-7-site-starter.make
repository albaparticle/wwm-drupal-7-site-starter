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
projects[pressflow][patch][type] = "git"
projects[pressflow][patch][url] = "file:///home/wwmhosting-admin.ftp/git-repos/boa-pressflow7-patches.git"
projects[pressflow][patch][branch] = "master"

  
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
projects[] = ckeditor
projects[] = ckeditor_link
projects[] = ckeditor_swf
projects[] = comment_notify
projects[] = computed_field
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
projects[] = front
projects[] = getid3
projects[] = globalredirect
projects[] = gmap
projects[] = google_analytics
projects[] = html5_base
projects[] = html5_tools
projects[] = i18n
projects[] = imce
projects[] = imce_crop
projects[] = imce_mkdir
projects[] = imce_rename
projects[] = imce_tools
projects[] = imce_wysiwyg
projects[] = insert
projects[] = invite
projects[] = jcarousel
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
projects[] = mimemail
projects[] = modernizr
projects[] = module_builder
projects[] = mollom
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
; No Libraries were included

