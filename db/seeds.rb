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

Song.create(
  title: "No More Dream",
  slug: "no-more-dream",
  album_id: 1,
  album_type_id: 1,
  track_number: 4,
  translator: 'Color Coded Lyrics',
  translator_url: 'https://colorcodedlyrics.com/2013/06/bts-bangtansonyeondan-no-more-dream',
  music_url: 'https://open.spotify.com/track/7L2RWLRNKZuZmQCAqG83Vq',
  youtube_url: 'https://www.youtube.com/watch?v=rBG5L7UsUxA',
  is_duplicate: false,
  duplicate_song_id: 0,
  lyrics: '얌마 니 꿈은 뭐니
얌마 니 꿈은 뭐니
얌마 니 꿈은 뭐니
니 꿈은 겨우 그거니
I wanna big house, big cars & big rings
But 사실은 I dun have any big dreams
하하 난 참 편하게 살어
꿈 따위 안 꿔도 아무도 뭐라 안 하잖어
전부 다다다 똑가같이
나처럼 생각하고 있어
새까까까맣게 까먹은
꿈 많던 어린 시절
대학은 걱정 마
멀리라도 갈 거니까
알았어 엄마 지금 독서실 간다니까

니가 꿈꿔온 니 모습이 뭐여
지금 니 거울 속엔 누가 보여, I gotta say
너의 길을 가라고
단 하루를 살아도
뭐라도 하라고
나약함은 담아둬

왜 말 못하고 있어?
공부는 하기 싫다면서
학교 때려 치기는 겁나지?
이거 봐 등교할 준비하네 벌써
철 좀 들어 제발 좀, 너 입만 살아가지고
임마 유리멘탈 boy
(Stop!) 자신에게 물어봐 언
제 니가 열심히 노력했냐고

얌마 니 꿈은 뭐니
얌마 니 꿈은 뭐니
얌마 니 꿈은 뭐니
니 꿈은 겨우 그거니

거짓말이야 you such a liar
See me see me ya 넌 위선자야
왜 자꾸 딴 길을 가래 야 너나 잘해
제발 강요하진 말아줘
(La la la la la)
니 꿈이 뭐니 니 꿈이 뭐니 뭐니
(La la la la la)
고작 이거니 고작 이거니 거니

지겨운 same day, 반복되는 매일에
어른들과 부모님은
틀에 박힌 꿈을 주입해
장래희망 넘버원.. 공무원?
강요된 꿈은 아냐, 9회말 구원투수
시간낭비인 야자에 돌직구를 날려
지옥 같은 사회에 반항해,
꿈을 특별사면
자신에게 물어봐 니 꿈의 profile
억압만 받던 인생
니 삶의 주어가 되어봐

니가 꿈꿔온 니 모습이 뭐여
지금 니 거울 속엔 누가 보여, I gotta say
너의 길을 가라고
단 하루를 살아도
뭐라도 하라고
나약함은 담아둬

얌마 니 꿈은 뭐니
얌마 니 꿈은 뭐니
얌마 니 꿈은 뭐니
니 꿈은 겨우 그거니

거짓말이야 you such a liar
See me see me ya 넌 위선자야
왜 자꾸 딴 길을 가래 야 너나 잘해
제발 강요하진 말아줘
(La la la la la)
니 꿈이 뭐니 니 꿈이 뭐니 뭐니
(La la la la la)
고작 이거니 고작 이거니 거니

살아가는 법을 몰라
날아가는 법을 몰라
결정하는 법을 몰라
이젠 꿈꾸는 법도 몰라

눈을 눈을 눈을 떠라 다 이제
춤을 춤을 춤을 춰봐 자 다시
꿈을 꿈을 꿈을 꿔봐 다
너 꾸물대지마 우물쭈물 대지마 wussup!

거짓말이야 you such a liar
See me see me ya 넌 위선자야
왜 자꾸 딴 길을 가래 야 너나 잘해
제발 강요하진 말아줘
(La la la la la)
니 꿈이 뭐니 니 꿈이 뭐니 뭐니
(La la la la la)
고작 이거니 고작 이거니 거니

To all the youngsters without dreams',
  translation: 'Hey you, what’s your dream?
Hey you, what’s your dream?
Hey you, what’s your dream?
Is that all your dream is?
I wanna big house, big cars & big rings
But actually, I don’t have any big dreams
Haha, I live quite comfortably
Even if I don’t dream, no one says anything
Everyone is thinking
the same way as me
I completely forgot about my childhood
when I had a lot of dreams
Don’t worry about college,
I’ll at least go to a school that’s far away
Ok mom, I’m going to the library right now

What is the you that you’ve dreamed of?
Who do you see in the mirror? I gotta say
Go on your path
Even if you live for a day
Do something
Put away your weakness

Why aren’t you saying anything?
You don’t wanna study
but you’re scared to quit school?
See, you’re already getting ready for school
Please grow up, you’re all talk dude,
you have a glass mentality, boy
(Stop) Ask yourself if you’ve ever
worked hard for anything

Hey you, what’s your dream?
Hey you, what’s your dream?
Hey you, what’s your dream?
Is that all your dream is?

That’s a lie, you such a liar
See me, see me, ya you’re a hypocrite
Why’re you telling to go a different path? Take care of yourself
Please don’t force me
(Lalalalala)
What’s your dream, what’s your dream?
(Lalalalala)
Is that it? Is that it?

Sick of the same day, the repeating days
Grown-ups and my parents
keep instilling confined dreams to me
Number one future career is a government worker?
It’s not a forced dream, a ninth inning relief pitcher
Throw a fast ball at the waste of time that is night study sessions
Rebel against the hellish society,
dreams are a special pardon
Ask yourself about your dream profile
Become the main subject of your life
that has always been suppressed

What is the you that you’ve dreamed of?
Who do you see in the mirror? I gotta say
Go on your path
Even if you live for a day
Do something
Put away your weakness

Hey you, what’s your dream?
Hey you, what’s your dream?
Hey you, what’s your dream?
Is that all your dream is?

That’s a lie, you such a liar
See me, see me, ya you’re a hypocrite
Why’re you telling to go a different path? Take care of yourself
Please don’t force me
(Lalalalala)
What’s your dream, what’s your dream?
(Lalalalala)
Is that it? Is that it?

Don’t know how to live
Don’t know how to fly
Don’t know how to decide
Don’t know how to dream now

Open your eyes now
Dance a dance now
Dream a dream now
Stop hesitating, stop being indecisive, wussup!

That’s a lie, you such a liar
See me, see me, ya you’re a hypocrite
Why’re you telling to go a different path? Take care of yourself
Please don’t force me
(Lalalalala)
What’s your dream, what’s your dream?
(Lalalalala)
Is that it? Is that it?

To all the youngsters without dreams'
)

Song.create(
  title: "We Are Bulletproof Pt.2",
  slug: "we-are-bulletproof-pt-2",
  album_id: 1,
  album_type_id: 1,
  track_number: 2,
  translator: 'Color Coded Lyrics',
  translator_url: 'https://colorcodedlyrics.com/2013/07/bts-bangtansonyeondan-we-are-bulletproof-pt-2',
  music_url: 'https://open.spotify.com/track/1bB8idvcjJPUf1QBISrETz',
  youtube_url: 'https://www.youtube.com/watch?v=lE9lkSdtZeQ',
  is_duplicate: false,
  duplicate_song_id: 0,
  lyrics: '(What) 이리 내놔
(What) 긴장해 다
(What) 끝판대장
(What) We are bulletproof
We are bulletproof
Bulletproof
이름은 Jung Kook, 스케일은 전국
학교 대신 연습실에서 밤새
춤을 추고 노래 불렀네
너희가 놀 때, 난 꿈을
집도하며 잠을 참아가며
매일 밤새 볼펜을 잡네
아침 해가 뜬 뒤에 나 눈을 감네
이중잣대와 수많은 반대 속에서
깨부숴버린 나의 한계
그에 반해 재수 좋게 회사에 컨택된 속칭
노래 못 해 랩퍼를 당한
너희에게 랩퍼라는 타이틀은 사치

Everywhere I go, everything I do
나 보여줄게 칼을 갈아왔던 만큼
날 무시하던 많은 사람들 이젠
(Oh oh oh oh oh oh) hey shout it out

Oh! 나만치 해봤다면 돌을 던져
We go hard 우린 겁이 없어
(Click click, bang bang) we juss sing it like
(Click click, bang bang) we juss sing it like
Oh! 나만치 해봤다면 돌을 던져
We go hard 우린 겁이 없어
(Click click, bang bang) we juss sing it like
(Click click, bang bang) we juss sing it like

(What) 이리 내놔
(What) 긴장해 다
(What) 끝판대장
(What) We are bulletproof
We are bulletproof
Bulletproof

Look at my profile, 아직 아무것도 없지
Still 연습생 and 랩퍼맨,
yeah I do know that’s nuthin
고민도 했지만 이제 필요 없어졌지
넌 아직도 아마추어,
난 메이저, 쭉 그렇게 썩길
랩몬스터, 말처럼 괴물같이
무슨 비트든 간에 난 싹 집어삼켜
충실한 이름값 얘들아 이리와
미리 봐 한낱 아이돌의 반전
하하 힙부심뿐인 형들은
불가능하다 했지 but
똑똑히 봐 이걸 impossible에 마침표
찍어 I’m possible 자 이제 됐니 boy

Everywhere I go, everything I do
나 보여줄게 칼을 갈아왔던 만큼
날 무시하던 많은 사람들 이젠
(Oh oh oh oh oh oh) hey shout it out

Oh! 나만치 해봤다면 돌을 던져
We go hard 우린 겁이 없어
(Click click, bang bang) We juss sing it like
(Click click, bang bang) We juss sing it like
Oh! 나만치 해봤다면 돌을 던져
We go hard 우린 겁이 없어
(Click click, bang bang) We juss sing it like
(Click click, bang bang) We juss sing it like

(What) 이리 내놔
(What) 긴장해 다
(What) 끝판대장
(What) We are bulletproof
We are bulletproof
Bulletproof

Bulletproof',
  translation: '(What) Give it to me
(What) Be nervous
(What) The one to end it all
(What) We are bulletproof
We are bulletproof
Bulletproof
The name is Jung Kook, my scale is nationwide
I pulled all-nighters at practice rooms
instead of school, dancing and singing
When you guys partied,
I gave up sleep for my dreams
I spent all night holding a pen,
closing my eyes only after the morning sun rises
My limit was broken in the
double standards and many oppositions
But I got lucky and was contacted by an agency
All you who are called rappers because you can’t sing,
the rapper title is an extravagance for you

Everywhere I go, everything I do
I will show you, as much as I sharpened my sword
To all the people who looked down on me
(Oh oh oh oh oh oh) hey shout it out

Oh! Throw a stone at me if you’ve done as much as I did
We go hard, we have no fear
(Click click, bang bang) we juss sing it like
(Click click, bang bang) we juss sing it like
Oh! Throw a stone at me if you’ve done as much as I did
We go hard, we have no fear
(Click click, bang bang) we juss sing it like
(Click click, bang bang) we juss sing it like

(What) Give it to me
(What) Be nervous
(What) The one to end it all
(What) We are bulletproof
We are bulletproof
Bulletproof

Look at my profile, there’s nothing there yet
Still a trainee and rapper man,
yeah I do know that’s nothing
I contemplated a lot but now I don’t need anything
You’re still an amateur,
I’m in the majors, hope you’ll rot like that
Rap Monster, like my name,
I can eat up any kind of beat like a monster
I’m loyal to my name, guys come here, take a preview,
I put a twist to being an idol
Haha, hyungs who only had hip-hop pride
told me it’d be impossible but
Look carefully, I place a period after impossible
I’m possible, now are we all set, boy?

Everywhere I go, everything I do
I will show you, as much as I sharpened my sword
To all the people who looked down on me
(Oh oh oh oh oh oh) hey shout it out

Oh! Throw a stone at me if you’ve done as much as I did
We go hard, we have no fear
(Click click, bang bang) we juss sing it like
(Click click, bang bang) we juss sing it like
Oh! Throw a stone at me if you’ve done as much as I did
We go hard, we have no fear
(Click click, bang bang) we juss sing it like
(Click click, bang bang) we juss sing it like

(What) Give it to me
(What) Be nervous
(What) The one to end it all
(What) We are bulletproof
We are bulletproof
Bulletproof

Bulletproof'
)
