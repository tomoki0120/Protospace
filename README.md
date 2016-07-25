# Users_table
=========================
## association
* has_many :prototypes
* has_many :likes
* has_many :comments
=========================
## column/type
* name
* email
* password
* avatar
* profile
* position
* occupation

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
* title
* catch_copy
* concept
* user_id

------------------------------------------------

# images_table
=========================
## asociation
* belongs_to :proto
=========================
## column/type
* images
* proto_id

-------------------------------------------------

# likes_table
=========================
## association
* belongs_to :user
* belongs_to :proto
=========================
## column/type
* user_id
* proto_id

-------------------------------------------------

# comments_tables
==========================
## association
* belongs_to :user
* belongs_to :proto
==========================
## column/type
* comments
* user_id
* proto_id































