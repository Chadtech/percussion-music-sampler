module Init exposing (..)

import Types exposing (..)
import Dict exposing (Dict)


init : Model
init =
    Model
        (Dict.fromList (List.indexedMap makeSong sampler0Songs))
        Nothing


makeSong : Int -> Song -> ( Int, Song )
makeSong index song =
    ( index, song )


root : String -> String
root str =
    "./assets/songs/" ++ str


sampler0Songs : List Song
sampler0Songs =
    [ Song
        "Homage to Pacifica, Prelude"
        "Gamelan"
        "Lou Harrison"
        (root "homage-to-pacifica-prelude.m4a")
    , Song
        "Homage To Pacifica, In Honor of the Divine Mr. Handel"
        "Gamelan"
        "Lou Harrison"
        (root "homage-to-pacifica-in-honor-of-the-divine-mr-handel.m4a")
    , Song
        "Lancaran Orde Baru, Laras Pelog, Patet Barang"
        "Gamelan"
        "KRT Wasitodiningrat"
        (root "lancaran-penghijauan-laras-slendro-patet-manyura.mp3")
    , Song
        "Viking I"
        "Celesta, Percussion"
        "Moondog"
        (root "viking-1.mp3")
    , Song
        "Lancaran Penghijauan, Laras Slendro, Patet Manyura"
        "Gamelan"
        "KRT Wasitodiningrat"
        (root "lancaran-orde-baru-laras-pelog-patet-barong.mp3")
    , Song
        "Even Wild Horses Act 1 Scene 3: Happy Birthday"
        "Wood bars"
        "Harry Partch"
        (root "even-wild-horses-act-1-scene-3-happy-birthday.m4a")
    , Song
        "Castor and Pollux Part 3: Incubation"
        "Wood bars"
        "Harry Partch"
        (root "castor-and-pollux-part-3-incubation.m4a")
    , Song
        "Bubaran Robert"
        "Gamelan, Trumpet"
        "Lou Harrison"
        (root "bubaran-robert.m4a")
    ]
