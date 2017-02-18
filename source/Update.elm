module Update exposing (update)

import Types exposing (Model, Song, Msg(..))
import Dict
import Ports exposing (triggerPlay)


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        Play songIndex ->
            ( setCurrentSong songIndex model, Cmd.none )

        PlayNext ->
            case model.currentPlay of
                Nothing ->
                    ( model, Cmd.none )

                Just songIndex ->
                    ( incrementCurrentPlay songIndex model, Cmd.none )


incrementCurrentPlay : Int -> Model -> Model
incrementCurrentPlay index model =
    { model
        | currentPlay = Just ((index + 1) % (Dict.size model.songs))
    }


setCurrentSong : Int -> Model -> Model
setCurrentSong index model =
    { model
        | currentPlay = Just index
    }
