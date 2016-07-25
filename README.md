# Users_table
=========================
## association
* has_many :prototypes
* has_many :likes
* has_many :comments
=========================
## column/type
* name/string
* email/text
* password/string
* avatar
* profile/text
* position/text
* occupation/text

----------------------------------------------

# Protos_table
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
* user_id/integer

------------------------------------------------

# images_table
=========================
## asociation
* belongs_to :proto
=========================
## column/type
* images/text
* proto_id/integer

-------------------------------------------------

# likes_table
=========================
## association
* belongs_to :user
* belongs_to :proto
=========================
## column/type
* user_id/integer
* proto_id/integer

-------------------------------------------------

# comments_tables
==========================
## association
* belongs_to :user
* belongs_to :proto
==========================
## column/type
* comments/text
* user_id/integer
* proto_id/integer































