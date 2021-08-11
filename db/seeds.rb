# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all
Anime.destroy_all

animes = [
    {
        name: "Katekyo Hitman Reborn!",
        img_url: "https://static.wikia.nocookie.net/reborn/images/e/e1/KHR_DVD_Cover..jpg/revision/latest?cb=20170121172039",
        description: "The overall plot of the series centers around the primary protagonist, a teenage boy named Tsunayoshi Sawada, constantly known for being a loser meets an infant hitman known as Reborn, who acts as his home tutor in order to train him to become the Tenth Boss of a Mafia Famiglia known as Vongola Famiglia.",
        author: "Akira Amano"
    },
    {
        name: "Psycho-Pass",
        img_url: "https://static.wikia.nocookie.net/psychopass/images/d/dd/Psycho_Pass_Season_3_Header.jpg/revision/latest?cb=20191014163229",
        description: "A world where a human's state of mind and the criminal potential of their personality can be quantified. While all sorts of inclinations are recorded and policed, these measured numbers used to judge people's souls are commonly called one's... PSYCHO-PASS.",
        author: "Gen Urobuchi",
    },
    {
        name: "Code Geass",
        img_url: "https://cdn.myanimelist.net/images/anime/6/5856.webp",
        description: "Lelouch Lamperouge, a Britannian student, unfortunately finds himself caught in a crossfire between the Britannian and the Area 11 rebel armed forces. He is able to escape, however, thanks to the timely appearance of a mysterious girl named C.C., who bestows upon him Geass, the 'Power of Kings.'",
        author: "Goro Taniguchi",
    },
    {
        name: "The Millionaire Detective Balance: Unlimited",
        img_url: "https://upload.wikimedia.org/wikipedia/en/0/04/FugoKeijiBalanceUnlimited_poster.jpg",
        description: "Daisuke Kambe, a detective with an extreme amount of personal wealth, is assigned to the Modern Crime Prevention Headquarters, a place where officers who have caused problems for the Metropolitan Police Department are sent. There, Daisuke is partnered with Haru Katou, who is repulsed by Daisuke's bribery. ",
        author: "Taku Kishimoto",
    }
]

Anime.create(animes)

users = [
    {
    name: "Lindsay",
    username: "NoyuLa",
    password: "Mementomori"
}
]

User.create(users)

comments = [
    {
        content: "Wow!",
        user_id: User.ids.sample,
        anime_id: Anime.ids.sample
    }
]

Comment.create(comments)

watch_later_lists = [
    {
        user_id: User.ids.sample,
        anime_id: Anime.ids.sample
    },
    {
        user_id: User.ids.sample,
        anime_id: Anime.ids.sample
    },
    {
        user_id: User.ids.sample,
        anime_id: Anime.ids.sample
    },
    {
        user_id: User.ids.sample,
        anime_id: Anime.ids.sample
    },
    {
        user_id: User.ids.sample,
        anime_id: Anime.ids.sample
    }
]

WatchLaterList.create(watch_later_lists)
