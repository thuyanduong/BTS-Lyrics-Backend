# Song.create(
#   title: "",
#   slug: "",
#   album_id: 1,
#   track_number: 0,
#   translator: '',
#   translator_url: '',
#   music_url: '',
#   youtube_url: '',
#   is_duplicate: false,
#   duplicate_song_id: 0,
#   lyrics: '',
#   translation: ''
# )

AlbumType.create(
  category: 'Studio Albums'
)
AlbumType.create(
  category: 'Mixed Tapes'
)
AlbumType.create(
  category: 'Sound Cloud'
)
AlbumType.create(
  category: 'Collaborations'
)
AlbumType.create(
  category: 'Other'
)

Album.create(
  title: '2 Cool 4 Skool',
  slug: '2-cool-4-skool',
  album_type_id: 1,
  image_url: "https://upload.wikimedia.org/wikipedia/en/7/78/2cool4skoolalbumcover.jpg",
  release_date: '2013-06-13',
  music_url: 'https://open.spotify.com/album/3L4l2jfFtydU9Mo9vjnxgN'
)

Album.create(
  title: 'O!RUL8,2?',
  slug: 'orul82',
  album_type_id: 1,
  image_url: "https://upload.wikimedia.org/wikipedia/en/8/82/BTS_O%21RUL8%2C_2%3F_album_cover.jpg",
  release_date: '2013-09-11',
  music_url: 'https://open.spotify.com/album/4e4Is56C3ph1sevY1I9Mq6'
)

Album.create(
  title: 'Skool Luv Affair',
  slug: 'skool-luv-affair',
  album_type_id: 1,
  image_url: "https://upload.wikimedia.org/wikipedia/en/e/ea/BTS_Skool_Luv_Affair.jpg",
  release_date: '2014-02-12',
  music_url: 'https://open.spotify.com/album/5DIb84mvBHZnYFpIsdt2tL'
)

Album.create(
  title: 'Skool Luv Affair (Special Addition)',
  slug: 'skool-luv-affair-special-edition',
  album_type_id: 1,
  image_url: "https://upload.wikimedia.org/wikipedia/en/b/b7/BTS_Skool_Luv_Affair_Repackaged_version.jpg",
  release_date: '2014-05-14',
  music_url: 'https://open.spotify.com/album/74mP0wS6SgwNWipY1nKUB9'
)

Album.create(
  title: 'Dark & Wild',
  slug: 'dark-and-wild',
  album_type_id: 1,
  image_url: "https://upload.wikimedia.org/wikipedia/en/5/5d/BTS_Dark_and_Wild.jpg",
  release_date: '2014-08-19',
  music_url: 'https://open.spotify.com/album/7FxxU3EP37uMsZf8FilkDR'
)

Album.create(
  title: 'The Most Beautiful Moment in Life, Pt. 1',
  slug: 'the-most-beautiful-moment-in-life-pt-1',
  album_type_id: 1,
  image_url: "https://upload.wikimedia.org/wikipedia/en/7/78/BTS_The_Most_Beautiful_Moment_in_Life_Part_1_pink.jpg",
  release_date: '2015-04-29',
  music_url: 'https://open.spotify.com/album/0Gv6nwfgk6Cy62j0GGITQc'
)

Album.create(
  title: 'The Most Beautiful Moment in Life, Pt. 2',
  slug: 'the-most-beautiful-moment-in-life-pt-2',
  album_type_id: 1,
  image_url: "https://upload.wikimedia.org/wikipedia/en/0/0b/BTS_The_Most_Beautiful_Moment_In_Life%2C_Part_2_album_cover.jpg",
  release_date: '2015-11-30',
  music_url: 'https://open.spotify.com/album/4frjaGAtuBmm8CPuYPY4oG'
)

Album.create(
  title: 'The Most Beautiful Moment in Life: Young Forever',
  slug: 'the-most-beautiful-moment-in-life-young-forever',
  album_type_id: 1,
  image_url: "https://upload.wikimedia.org/wikipedia/en/b/b4/The_Most_Beautiful_Moment_In_Life%2C_Young_Forever.jpeg",
  release_date: '2016-05-02',
  music_url: 'https://open.spotify.com/album/7qvA0kf1dkmR1As2gOnBPn'
)

Album.create(
  title: 'Wings',
  slug: 'wings',
  album_type_id: 1,
  image_url: "https://upload.wikimedia.org/wikipedia/en/3/3f/BTS%2C_Wings.jpg",
  release_date: '2016-10-10',
  music_url: 'https://open.spotify.com/album/17FnTn4P3Bkyf6mbNQDhhy'
)

Album.create(
  title: "Love Yourself 承 'Her'",
  slug: 'love-yourself-her',
  album_type_id: 1,
  image_url: "https://upload.wikimedia.org/wikipedia/en/6/62/Ly-her.jpg",
  release_date: '2017-09-18',
  music_url: 'https://open.spotify.com/album/2FTS6a6DLXMNp8flyA0HGO'
)

Album.create(
  title: "Love Yourself 轉 'Tear'",
  slug: 'love-yourelf-tear',
  album_type_id: 1,
  image_url: "https://upload.wikimedia.org/wikipedia/en/8/88/Love_Yourself_Tear_Cover.jpeg",
  release_date: '2018-05-18',
  music_url: 'https://open.spotify.com/album/2jJfnAZE6IG3oYnUv2eCj4'
)

Album.create(
  title: "Love Yourself 結 'Answer'",
  slug: 'love-yourself-answer',
  album_type_id: 1,
  image_url: "https://upload.wikimedia.org/wikipedia/en/e/e2/BTS%2C_Love_Yourself_Answer%2C_album_cover.jpg",
  release_date: '2018-08-24',
  music_url: 'https://open.spotify.com/album/2lATw9ZAVp7ILQcOKPCPqp'
)
