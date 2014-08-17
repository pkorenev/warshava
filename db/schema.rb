# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140813155928) do

  create_table "_article_versions_old_20131014", force: true do |t|
    t.integer  "original_record_id"
    t.integer  "version"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "_articles_old_20131014", force: true do |t|
    t.integer  "version"
    t.integer  "lock_version",  default: 0
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "published",     default: false
    t.boolean  "deleted",       default: false
    t.boolean  "archived",      default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "_rooms_old_20120727", force: true do |t|
    t.integer  "version"
    t.integer  "lock_version",     default: 0
    t.string   "name"
    t.text     "full_description"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "published",        default: false
    t.boolean  "deleted",          default: false
    t.boolean  "archived",         default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "_service_versions_old_20120727", force: true do |t|
    t.integer  "original_record_id"
    t.integer  "version"
    t.boolean  "display_home"
    t.string   "name"
    t.text     "short_description"
    t.text     "full_description"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "_services_old_20120727", force: true do |t|
    t.integer  "version"
    t.integer  "lock_version",      default: 0
    t.boolean  "display_home"
    t.string   "name"
    t.text     "short_description"
    t.text     "full_description"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.boolean  "published",         default: false
    t.boolean  "deleted",           default: false
    t.boolean  "archived",          default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "about_page_gallery_images", force: true do |t|
    t.string   "image"
    t.string   "name"
    t.string   "alt"
    t.string   "title"
    t.integer  "about_page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "about_pages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "text_under_slider"
    t.text     "quote"
    t.text     "text"
  end

  create_table "article_translations", force: true do |t|
    t.integer  "article_id",  null: false
    t.string   "locale",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "short_descr"
    t.text     "description"
  end

  add_index "article_translations", ["article_id"], name: "index_article_translations_on_article_id"
  add_index "article_translations", ["locale"], name: "index_article_translations_on_locale"

  create_table "article_versions", force: true do |t|
    t.integer  "original_record_id"
    t.integer  "version"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.string   "short_descr"
  end

  create_table "articles", force: true do |t|
    t.integer  "version"
    t.integer  "lock_version",  default: 0
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "published",     default: false
    t.boolean  "deleted",       default: false
    t.boolean  "archived",      default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.string   "short_descr"
    t.string   "avatar"
  end

  create_table "banner_images", force: true do |t|
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "banner_id"
  end

  create_table "banner_versions", force: true do |t|
    t.integer  "original_record_id"
    t.integer  "version"
    t.string   "name"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "banners", force: true do |t|
    t.integer  "version"
    t.integer  "lock_version",  default: 0
    t.string   "name"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "published",     default: false
    t.boolean  "deleted",       default: false
    t.boolean  "archived",      default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "bcms_page_comments_page_comment_versions", force: true do |t|
    t.integer  "original_record_id"
    t.integer  "version"
    t.integer  "page_id"
    t.string   "name"
    t.string   "email"
    t.string   "url"
    t.text     "body"
    t.string   "ip"
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "bcms_page_comments_page_comments", force: true do |t|
    t.integer  "version"
    t.integer  "lock_version",  default: 0
    t.integer  "page_id"
    t.string   "name"
    t.string   "email"
    t.string   "url"
    t.text     "body"
    t.string   "ip"
    t.boolean  "published",     default: false
    t.boolean  "deleted",       default: false
    t.boolean  "archived",      default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "categories", force: true do |t|
    t.integer  "category_type_id"
    t.integer  "parent_id"
    t.string   "name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "category_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "cms_attachment_versions", force: true do |t|
    t.integer  "original_record_id"
    t.integer  "version"
    t.string   "data_file_path"
    t.string   "file_location"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "data_file_name"
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.string   "data_fingerprint"
    t.string   "attachable_type"
    t.string   "attachment_name"
    t.integer  "attachable_id"
    t.integer  "attachable_version"
    t.string   "cardinality"
  end

  add_index "cms_attachment_versions", ["original_record_id"], name: "index_attachment_versions_on_original_record_id"

  create_table "cms_attachments", force: true do |t|
    t.integer  "version"
    t.integer  "lock_version",       default: 0
    t.string   "data_file_path"
    t.string   "file_location"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "data_file_name"
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.string   "data_fingerprint"
    t.string   "attachable_type"
    t.string   "attachment_name"
    t.integer  "attachable_id"
    t.integer  "attachable_version"
    t.string   "cardinality"
  end

  create_table "connectors", force: true do |t|
    t.integer  "page_id"
    t.integer  "page_version"
    t.integer  "connectable_id"
    t.string   "connectable_type"
    t.integer  "connectable_version"
    t.string   "container"
    t.integer  "position"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "connectors", ["connectable_type"], name: "index_connectors_on_connectable_type"
  add_index "connectors", ["connectable_version"], name: "index_connectors_on_connectable_version"
  add_index "connectors", ["page_id"], name: "index_connectors_on_page_id"
  add_index "connectors", ["page_version"], name: "index_connectors_on_page_version"

  create_table "content_type_groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "content_types", force: true do |t|
    t.string   "name"
    t.integer  "content_type_group_id"
    t.integer  "priority",              default: 2
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "content_types", ["content_type_group_id"], name: "index_content_types_on_content_type_group_id"
  add_index "content_types", ["name"], name: "index_content_types_on_name"

  create_table "dynamic_view_versions", force: true do |t|
    t.integer  "original_record_id"
    t.integer  "version"
    t.string   "type"
    t.string   "name"
    t.string   "format"
    t.string   "handler"
    t.text     "body"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "dynamic_views", force: true do |t|
    t.integer  "version"
    t.integer  "lock_version",  default: 0
    t.string   "type"
    t.string   "name"
    t.string   "format"
    t.string   "handler"
    t.text     "body"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "published",     default: false
    t.boolean  "deleted",       default: false
    t.boolean  "archived",      default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "email_messages", force: true do |t|
    t.string   "sender"
    t.text     "recipients"
    t.text     "subject"
    t.text     "cc"
    t.text     "bcc"
    t.text     "body"
    t.string   "content_type"
    t.datetime "delivered_at"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "user_name",    limit: nil
    t.string   "user_phone",   limit: nil
    t.string   "user_mail",    limit: nil
    t.text     "user_msg"
  end

  create_table "file_block_versions", force: true do |t|
    t.integer  "original_record_id"
    t.integer  "version"
    t.string   "type"
    t.string   "name"
    t.integer  "attachment_id"
    t.integer  "attachment_version"
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "file_block_versions", ["original_record_id"], name: "index_file_block_versions_on_original_record_id"
  add_index "file_block_versions", ["version"], name: "index_file_block_versions_on_version"

  create_table "file_blocks", force: true do |t|
    t.integer  "version"
    t.integer  "lock_version",       default: 0
    t.string   "type"
    t.string   "name"
    t.integer  "attachment_id"
    t.integer  "attachment_version"
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "file_blocks", ["deleted"], name: "index_file_blocks_on_deleted"
  add_index "file_blocks", ["type"], name: "index_file_blocks_on_type"

  create_table "galleries", force: true do |t|
    t.integer  "version"
    t.integer  "lock_version",  default: 0
    t.string   "name"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "published",     default: false
    t.boolean  "deleted",       default: false
    t.boolean  "archived",      default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "gallery_versions", force: true do |t|
    t.integer  "original_record_id"
    t.integer  "version"
    t.string   "name"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "group_permissions", force: true do |t|
    t.integer "group_id"
    t.integer "permission_id"
  end

  add_index "group_permissions", ["group_id", "permission_id"], name: "index_group_permissions_on_group_id_and_permission_id"
  add_index "group_permissions", ["group_id"], name: "index_group_permissions_on_group_id"
  add_index "group_permissions", ["permission_id"], name: "index_group_permissions_on_permission_id"

  create_table "group_sections", force: true do |t|
    t.integer "group_id"
    t.integer "section_id"
  end

  add_index "group_sections", ["group_id"], name: "index_group_sections_on_group_id"
  add_index "group_sections", ["section_id"], name: "index_group_sections_on_section_id"

  create_table "group_type_permissions", force: true do |t|
    t.integer "group_type_id"
    t.integer "permission_id"
  end

  create_table "group_types", force: true do |t|
    t.string   "name"
    t.boolean  "guest",      default: false
    t.boolean  "cms_access", default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "group_types", ["cms_access"], name: "index_group_types_on_cms_access"

  create_table "groups", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "group_type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "groups", ["code"], name: "index_groups_on_code"
  add_index "groups", ["group_type_id"], name: "index_groups_on_group_type_id"

  create_table "home_gallery_images", force: true do |t|
    t.string   "image"
    t.string   "name"
    t.string   "alt"
    t.string   "title"
    t.integer  "home_page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_name"
  end

  create_table "home_pages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "welcome_html"
  end

  create_table "html_block_translations", force: true do |t|
    t.integer  "html_block_id", null: false
    t.string   "locale",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "content"
  end

  add_index "html_block_translations", ["html_block_id"], name: "index_html_block_translations_on_html_block_id"
  add_index "html_block_translations", ["locale"], name: "index_html_block_translations_on_locale"

  create_table "html_block_versions", force: true do |t|
    t.integer  "original_record_id"
    t.integer  "version"
    t.string   "name",               limit: nil
    t.string   "content",            limit: nil
    t.boolean  "published"
    t.boolean  "deleted"
    t.boolean  "archived"
    t.string   "version_comment",    limit: nil
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "content_eng",        limit: nil
  end

  add_index "html_block_versions", ["original_record_id"], name: "index_html_block_versions_on_o"
  add_index "html_block_versions", ["version"], name: "index_html_block_versions_on_v"

  create_table "html_blocks", force: true do |t|
    t.integer  "version"
    t.integer  "lock_version"
    t.string   "name",          limit: nil
    t.string   "content",       limit: nil
    t.boolean  "published"
    t.boolean  "deleted"
    t.boolean  "archived"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "content_eng",   limit: nil
    t.integer  "page_id"
    t.string   "page_type"
  end

  add_index "html_blocks", ["deleted"], name: "index_html_blocks_on_deleted"

  create_table "link_versions", force: true do |t|
    t.integer  "original_record_id"
    t.integer  "version"
    t.string   "name"
    t.string   "url"
    t.boolean  "new_window",         default: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "links", force: true do |t|
    t.integer  "version"
    t.integer  "lock_version",   default: 0
    t.string   "name"
    t.string   "url"
    t.boolean  "new_window",     default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "published",      default: false
    t.boolean  "deleted",        default: false
    t.boolean  "archived",       default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.integer  "latest_version"
  end

  create_table "menu_item_translations", force: true do |t|
    t.integer  "menu_item_id", null: false
    t.string   "locale",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "link"
  end

  add_index "menu_item_translations", ["locale"], name: "index_menu_item_translations_on_locale"
  add_index "menu_item_translations", ["menu_item_id"], name: "index_menu_item_translations_on_menu_item_id"

  create_table "menu_items", force: true do |t|
    t.string   "name"
    t.string   "link"
    t.boolean  "linked_to_page"
    t.integer  "page_id"
    t.integer  "menu_id"
    t.string   "ancestry"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", force: true do |t|
    t.string "name"
  end

  create_table "page_route_options", force: true do |t|
    t.integer  "page_route_id"
    t.string   "type"
    t.string   "name"
    t.string   "value"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "page_routes", force: true do |t|
    t.string   "name"
    t.string   "pattern"
    t.integer  "page_id"
    t.text     "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "page_versions", force: true do |t|
    t.integer  "original_record_id"
    t.integer  "version"
    t.string   "name",               limit: nil
    t.string   "title",              limit: nil
    t.string   "path",               limit: nil
    t.string   "template_file_name", limit: nil
    t.text     "description"
    t.text     "keywords"
    t.string   "language",           limit: nil
    t.boolean  "cacheable"
    t.boolean  "hidden"
    t.boolean  "published"
    t.boolean  "deleted"
    t.boolean  "archived"
    t.string   "version_comment",    limit: nil
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "title_eng",          limit: nil
  end

  add_index "page_versions", ["original_record_id"], name: "index_page_versions_on_origina"

  create_table "pages", force: true do |t|
    t.integer  "version"
    t.integer  "lock_version"
    t.string   "name",               limit: nil
    t.string   "title",              limit: nil
    t.string   "path",               limit: nil
    t.string   "template_file_name", limit: nil
    t.text     "description"
    t.text     "keywords"
    t.string   "language",           limit: nil
    t.boolean  "cacheable"
    t.boolean  "hidden"
    t.boolean  "published"
    t.boolean  "deleted"
    t.boolean  "archived"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "latest_version"
    t.string   "title_eng",          limit: nil
  end

  add_index "pages", ["deleted"], name: "index_pages_on_deleted"
  add_index "pages", ["path"], name: "index_pages_on_path"
  add_index "pages", ["version"], name: "index_pages_on_version"

  create_table "permissions", force: true do |t|
    t.string   "name"
    t.string   "full_name"
    t.string   "description"
    t.string   "for_module"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "portlet_attributes", force: true do |t|
    t.integer "portlet_id"
    t.string  "name"
    t.text    "value"
  end

  add_index "portlet_attributes", ["portlet_id"], name: "index_portlet_attributes_on_portlet_id"

  create_table "portlets", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.boolean  "archived",      default: false
    t.boolean  "deleted",       default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "portlets", ["name"], name: "index_portlets_on_name"

  create_table "redirects", force: true do |t|
    t.string   "from_path"
    t.string   "to_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "redirects", ["from_path"], name: "index_redirects_on_from_path"

  create_table "restaurant_page", force: true do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurant_page_translations", force: true do |t|
    t.integer  "restaurant_page_id", null: false
    t.string   "locale",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "content"
  end

  add_index "restaurant_page_translations", ["locale"], name: "index_restaurant_page_translations_on_locale"
  add_index "restaurant_page_translations", ["restaurant_page_id"], name: "index_restaurant_page_translations_on_restaurant_page_id"

  create_table "room_gallery_images", force: true do |t|
    t.string   "image"
    t.string   "name"
    t.string   "alt"
    t.string   "title"
    t.integer  "room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "room_translations", force: true do |t|
    t.integer  "room_id",                      null: false
    t.string   "locale",                       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "name",             limit: 255
    t.text     "full_description", limit: 255
  end

  add_index "room_translations", ["locale"], name: "index_room_translations_on_locale"
  add_index "room_translations", ["room_id"], name: "index_room_translations_on_room_id"

  create_table "room_versions", force: true do |t|
    t.integer  "original_record_id"
    t.integer  "version"
    t.string   "name"
    t.text     "full_description"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "rooms", force: true do |t|
    t.integer  "version"
    t.integer  "lock_version"
    t.text     "name",             limit: 255
    t.text     "full_description", limit: 65000
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "published"
    t.boolean  "deleted"
    t.boolean  "archived"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.string   "avatar"
  end

  create_table "rooms_list_page", force: true do |t|
    t.text     "intro_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms_list_page_translations", force: true do |t|
    t.integer  "rooms_list_page_id", null: false
    t.string   "locale",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "intro_text"
  end

  add_index "rooms_list_page_translations", ["locale"], name: "index_rooms_list_page_translations_on_locale"
  add_index "rooms_list_page_translations", ["rooms_list_page_id"], name: "index_rooms_list_page_translations_on_rooms_list_page_id"

  create_table "section_nodes", force: true do |t|
    t.string   "node_type"
    t.integer  "node_id"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "ancestry"
  end

  add_index "section_nodes", ["ancestry"], name: "index_section_nodes_on_ancestry"
  add_index "section_nodes", ["node_type"], name: "index_section_nodes_on_node_type"

  create_table "sections", force: true do |t|
    t.string   "name"
    t.string   "path"
    t.boolean  "root",       default: false
    t.boolean  "hidden",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "sections", ["path"], name: "index_sections_on_path"

  create_table "service_gallery_images", force: true do |t|
    t.string   "image"
    t.string   "name"
    t.string   "alt"
    t.string   "title"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_translations", force: true do |t|
    t.integer  "service_id",        null: false
    t.string   "locale",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "short_description"
    t.text     "full_description"
  end

  add_index "service_translations", ["locale"], name: "index_service_translations_on_locale"
  add_index "service_translations", ["service_id"], name: "index_service_translations_on_service_id"

  create_table "service_versions", force: true do |t|
    t.integer  "original_record_id"
    t.integer  "version"
    t.boolean  "display_home"
    t.string   "name",                 limit: nil
    t.text     "short_description"
    t.text     "full_description"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "published"
    t.boolean  "deleted"
    t.boolean  "archived"
    t.string   "version_comment",      limit: nil
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.text     "short_description_en"
    t.text     "full_description_en"
  end

  create_table "services", force: true do |t|
    t.integer  "version"
    t.integer  "lock_version"
    t.boolean  "display_home"
    t.string   "name",                 limit: nil
    t.text     "short_description"
    t.text     "full_description"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "published"
    t.boolean  "deleted"
    t.boolean  "archived"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.text     "short_description_en"
    t.text     "full_description_en"
    t.string   "avatar"
  end

  create_table "sitemap_records", force: true do |t|
    t.integer  "page_id"
    t.boolean  "displayed_on_sitemap"
    t.string   "location"
    t.string   "path"
    t.datetime "last_modified"
    t.string   "change_frequency"
    t.float    "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sitemap_records", ["page_id"], name: "index_sitemap_records_on_page_id"

  create_table "sites", force: true do |t|
    t.string   "name"
    t.string   "domain"
    t.boolean  "the_default"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "taggable_version"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: true do |t|
    t.integer  "assigned_by_id"
    t.integer  "assigned_to_id"
    t.integer  "page_id"
    t.text     "comment"
    t.date     "due_date"
    t.datetime "completed_at"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "tasks", ["assigned_to_id"], name: "index_tasks_on_assigned_to_id"
  add_index "tasks", ["completed_at"], name: "index_tasks_on_completed_at"
  add_index "tasks", ["page_id"], name: "index_tasks_on_page_id"

  create_table "user_group_memberships", force: true do |t|
    t.integer "user_id"
    t.integer "group_id"
  end

  add_index "user_group_memberships", ["group_id"], name: "index_user_group_memberships_on_group_id"
  add_index "user_group_memberships", ["user_id"], name: "index_user_group_memberships_on_user_id"

  create_table "users", force: true do |t|
    t.string   "login",                     limit: 40
    t.string   "first_name",                limit: 40
    t.string   "last_name",                 limit: 40
    t.string   "email",                     limit: 40
    t.string   "crypted_password",          limit: 40
    t.string   "salt",                      limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "expires_at"
    t.string   "remember_token",            limit: 40
    t.datetime "remember_token_expires_at"
    t.string   "reset_token"
  end

  add_index "users", ["expires_at"], name: "index_users_on_expires_at"
  add_index "users", ["login"], name: "index_users_on_login", unique: true

  create_table "vacancies", force: true do |t|
    t.integer  "version"
    t.integer  "lock_version",     default: 0
    t.string   "name"
    t.text     "full_description"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "published",        default: false
    t.boolean  "deleted",          default: false
    t.boolean  "archived",         default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "vacancy_translations", force: true do |t|
    t.integer  "vacancy_id",       null: false
    t.string   "locale",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "full_description"
  end

  add_index "vacancy_translations", ["locale"], name: "index_vacancy_translations_on_locale"
  add_index "vacancy_translations", ["vacancy_id"], name: "index_vacancy_translations_on_vacancy_id"

  create_table "vacancy_versions", force: true do |t|
    t.integer  "original_record_id"
    t.integer  "version"
    t.string   "name"
    t.text     "full_description"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "vs_page_translations", force: true do |t|
    t.integer  "vs_page_id",       null: false
    t.string   "locale",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "path"
    t.text     "meta_description"
    t.text     "meta_keywords"
    t.string   "head_title"
  end

  add_index "vs_page_translations", ["locale"], name: "index_vs_page_translations_on_locale"
  add_index "vs_page_translations", ["vs_page_id"], name: "index_vs_page_translations_on_vs_page_id"

  create_table "vs_pages", force: true do |t|
    t.string   "name"
    t.string   "path"
    t.text     "meta_description"
    t.text     "meta_keywords"
    t.string   "head_title"
    t.string   "controller"
    t.string   "action"
    t.integer  "custom_page_id"
    t.string   "custom_page_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vs_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "vs_users", ["email"], name: "index_vs_users_on_email", unique: true
  add_index "vs_users", ["reset_password_token"], name: "index_vs_users_on_reset_password_token", unique: true

end
