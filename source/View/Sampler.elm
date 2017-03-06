module View.Sampler exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Types exposing (..)
import View.AudioPlayer as AudioPlayer
import View.Songs as Songs


-- VIEW


view : String -> Model -> Html Msg
view title model =
    div
        [ class "main" ]
        [ div
            [ class "blue-bar" ]
            [ p
                [ class "point" ]
                [ text title ]
            ]
        , Songs.view model
        , AudioPlayer.view model
        ]
