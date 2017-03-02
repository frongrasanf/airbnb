* Database creation

#usersテーブル

| column                 | type         | option                    |
|:---------------------- |:------------ |:--------------------------|
| name                   | string       | NOT NULL                  |
| email                  | string       | NOT NULL & unique true    |
| password               | string       | NOT NULL                  |
| password_confirmation  | string       | NOT NULL                  |
| super_guest            | boolean      | NOT NULL & DEFAULT FALSE  |

#roomsテーブル

| column                 | type         | option                          |
|:---------------------- |:------------ |:--------------------------------|
| title                  | string       | NOT NULL                        |
| city                   | string       | NOT NULL                        |
| room_type              | string       | NOT NULL                        |
| image                  | text         | NOT NULL                        |
| user_id                | integer      | NOT NULL & t.references :users  |
| latitude               | float        |                                 |
| longitude              | float        |                                 |

#bookingsテーブル

| column                 | type         | option                          |
|:-----------------------|:------------ |:--------------------------------|
| user_id                | integer      | NOT NULL & t.references :users  |
| room_id                | integer      | NOT NULL & t.references :rooms  |
| stay_days              | integer      | NOT NULL                        |
| check_in_date          | date         | NOT NULL                        |
| check_out_date         | date         | NOT NULL                        |

#reviewsテーブル

| column                 | type         | option                             |
|:-----------------------|:------------ |:-----------------------------------|
| body                   | text         | NOT NULL                           |
| user_id                | integer      | NOT NULL & t.references :users     |
| booking_id             | integer      | NOT NULL & t.references :bookings  |


#アソシエーション

##user

has_many :bookings
has_many :rooms
has_many :reviews

##room

belongs_to :user
has_many   :bookings
has_many   :reviews, through: :bookings

##booking

belongs_to :room
belongs_to :user
has_many   :reviews

##review

belongs_to :user
belongs_to :booking
