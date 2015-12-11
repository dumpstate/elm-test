module Row where

import Html exposing (..)

import Cell


-- MODEL

type alias Model =
    { content: List String
    }


-- VIEW

view : Model -> Html
view model =
    tr []
      (List.map
        (\content -> Cell.view (Cell.Model content))
        model.content)
