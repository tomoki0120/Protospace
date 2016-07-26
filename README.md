# users_table
=========================
## association
* has_many :protos
* has_many :likes
* has_many :comments
=========================
## column
* name
* email
* password
* avatar
* profile
* position
* occupation

----------------------------------------------

# protos_table
========================
## association
* has_many :images
* has_many :comments
* has_many :likes
* belongs_to :user
========================
## column/type
* title/string
* catch_copy/text
* concept/text
* user_id/references

------------------------------------------------

#images_table
=========================
## asociation
* belongs_to :proto
=========================
## column/type
* image_url/text
* status/integer
* proto_id/references

-------------------------------------------------

# likes_table
=========================
## association
* belongs_to :user
* belongs_to :proto
=========================
## column/type
* user_id/references
* proto_id/references

-------------------------------------------------

# comments_tables
==========================
## association
* belongs_to :user
* belongs_to :proto
==========================
## column/type
* comment_text/text
* user_id/references
* proto_id/references
