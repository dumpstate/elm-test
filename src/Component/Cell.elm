module Cell where

import Html exposing (..)


-- MODEL

type alias Model =
    { content: String
    }


-- VIEW

view : Model -> Html
view model =
    td []
      [ text model.content ]
