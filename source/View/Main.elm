module View.Main exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Types exposing (..)
import View.Sampler as Sampler
import Dict


-- VIEW


view : Model -> Html Msg
view model =
    div
        []
        [ Sampler.view
            "Percussion Music Sampler Part 0 : Melodic"
            (split 0 8 model)
        , Sampler.view
            "Percussion Music Sampler Part 1 : Semi-Melodic"
            (split 8 17 model)
        ]


split : Int -> Int -> Model -> Model
split first last { songs, currentPlay } =
    let
        splitSongs =
            Dict.toList songs
                |> List.drop first
                |> List.take (last - first)
                |> Dict.fromList
    in
        Model splitSongs currentPlay
