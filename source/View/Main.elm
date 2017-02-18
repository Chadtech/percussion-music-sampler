module View.Main exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Types exposing (..)
import View.AudioPlayer as AudioPlayer
import View.Songs as Songs


-- VIEW


view : Model -> Html Msg
view model =
    div
        [ class "main" ]
        [ div
            [ class "blue-bar" ]
            [ p
                [ class "point" ]
                [ text "Percussion Music Sampler Part 0 : Melodic Percussion" ]
            ]
        , Songs.view model
        , AudioPlayer.view model
        ]
