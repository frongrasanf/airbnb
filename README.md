* Database creation

#usersテーブル

| column                 | type         | option                 |
|:---------------------- |:------------ |:-----------------------|
| name                   | string       | NOT NULL               |
| email                  | string       | NOT NULL & unique true |
| password               | string       | NOT NULL               |
| password_confirmation  | string       | NOT NULL               |

#roomsテーブル

| column                 | type         | option                          |
|:---------------------- |:------------ |:--------------------------------|
| title                  | string       | NOT NULL                        |
| city                   | string       | NOT NULL                        |
| room_type              | string       | NOT NULL                        |
| image                  | text         |                                 |
| user_id                | integer      | NOT NULL & t.references :users  |
| latitude               | float        |                                 |
| longitude              | float        |                                 |

### *実装開始時は都道府県で登録・検索
### *latitude, longitudeについてはGoogle API導入時にカラム追加

#bookingsテーブル

| column                 | type         | option                          |
|:-----------------------|:------------ |:--------------------------------|
| user_id                | integer      | NOT NULL & t.references :users  |
| room_id                | integer      | NOT NULL & t.references :rooms  |
| stay_days              | integer      | NOT NULL                        |
| check_in_date          | date         | NOT NULL                        |
| check_out_date         | date         | NOT NULL                        |


#アソシエーション

##user

has_many :bookings
has_many :rooms

##room

belongs_to :user
has_many   :bookings

##booking

belongs_to :room
belongs_to :user




