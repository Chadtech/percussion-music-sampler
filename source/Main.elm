module Main exposing (..)

import Html
import Types exposing (Model, Song, Msg(..))
import Init exposing (init)
import View.Main exposing (view)
import Update exposing (update)


main =
    Html.program
        { view = view
        , init = ( init, Cmd.none )
        , subscriptions = always Sub.none
        , update = update
        }
