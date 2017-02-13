* Database creation

#usersテーブル

| column                 | type         | option                 |
|:---------------------- |:------------ |:-----------------------|
| name                   | string       | NOT NULL               |
| email                  | string       | NOT NULL & unique true |
| password               | string       | NOT NULL               |
| password_confirmation  | string       | NOT NULL               |

#hostsテーブル

| column                 | type         | option                          |
|:---------------------- |:------------ |:--------------------------------|
| name                   | string       | NOT NULL                        |
| user_id                | integer      | NOT NULL & t.references :users  |

### *roomを投稿する際にcurrent_userの情報がhostsテーブルに登録される仕様にする。

#roomsテーブル

| column                 | type         | option                          |
|:---------------------- |:------------ |:--------------------------------|
| title                  | string       | NOT NULL                        |
| prefecture             | string       | NOT NULL                        |
| room_type              | string       | NOT NULL                        |
| host_id                | integer      | NOT NULL & t.references :hosts  |

### *実装開始時は都道府県で登録・検索
### *latitude, longitudeについてはGoogle API導入時にカラム追加

#bookingsテーブル

| column                 | type         | option                          |
|:-----------------------|:------------ |:--------------------------------|
| user_id                | integer      | NOT NULL & t.references :users  |
| room_id                | string       | NOT NULL & t.references :rooms  |
| stay_days              | integer      | NOT NULL                        |
| check_in_date          | date         | NOT NULL                        |
| check_out_date         | date         | NOT NULL                        |


#アソシエーション

##user

has_many :bookings
has_many :rooms, through :bookings

##room

belongs_to :hosts
has_many   :bookings

##host

has_many :rooms
has_many :bookings, through :rooms

##booking

belong_to :rooms
belong_to :users




