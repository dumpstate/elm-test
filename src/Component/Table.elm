module Component.Table where

import Html exposing (..)

import Row


-- MODEL

type alias Model =
    { header : List String
    , body : List (List String)
    }


-- VIEW

view : Model -> Html
view model =
    table []
      [ header model.header
      , body model.body
      ]

header : List String -> Html
header model =
    thead []
      [ Row.view <| Row.Model model ]

body : List (List String) -> Html
body model =
    tbody []
      (List.map
        (\content -> (Row.view (Row.Model content)))
        model)
