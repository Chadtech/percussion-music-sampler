module Types exposing (..)

import Dict exposing (Dict)


type Msg
    = Play Int
    | PlayNext


type alias Model =
    { songs : Dict Int Song
    , currentPlay : Maybe Int
    }


type alias Song =
    { title : String
    , description : String
    , artist : String
    , source : String
    }
