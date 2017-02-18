module View.AudioPlayer exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)
import Json.Decode as Json
import Dict


view : Model -> Html Msg
view model =
    case model.currentPlay of
        Nothing ->
            text ""

        Just index ->
            audio
                [ autoplay True
                , on "ended" (Json.succeed PlayNext)
                , getSource index model
                , id "audio-player"
                ]
                []


getSource : Int -> Model -> Attribute Msg
getSource index model =
    case Dict.get index model.songs of
        Nothing ->
            src ""

        Just song ->
            src song.source
