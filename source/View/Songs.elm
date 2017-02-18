module View.Songs exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Types exposing (..)
import Dict exposing (Dict)


view : Model -> Html Msg
view model =
    div
        [ class "songs" ]
        (header :: songList model)


songList : Model -> List (Html Msg)
songList model =
    List.map
        (songItem model)
        (Dict.toList model.songs)


header : Html Msg
header =
    div
        [ class "song first-row" ]
        [ div
            [ class "title" ]
            [ songText "title" ]
        , div
            [ class "description" ]
            [ songText "description" ]
        , div
            [ class "artist" ]
            [ songText "artist" ]
        ]


songItem : Model -> ( Int, Song ) -> Html Msg
songItem { songs, currentPlay } ( index, song ) =
    div
        [ songClass currentPlay index
        , onClick (Play index)
        ]
        [ div
            [ class "title" ]
            [ songText song.title ]
        , div
            [ class "description" ]
            [ songText song.description ]
        , div
            [ class "artist" ]
            [ songText song.artist ]
        ]


songText : String -> Html Msg
songText str =
    p
        [ class "song-text" ]
        [ text str ]


songClass : Maybe Int -> Int -> Attribute Msg
songClass currentPlay thisSongIndex =
    case currentPlay of
        Nothing ->
            class "song"

        Just currentPlay_ ->
            if currentPlay_ == thisSongIndex then
                class "song playing"
            else
                class "song"
