module Main where

import Html exposing (..)
import StartApp.Simple as App

import Component.Table as Table

-- MODEL

type alias Model =
    { tableData : Table.Model
    }

-- ACTION

type Action = NoAction

update : Action -> Model -> Model
update action model =
    model

-- VIEW

view : Signal.Address Action -> Model -> Html
view address model =
    div [] [ Table.view model.tableData ]

-- MAIN

headerData = [ "jeden", "dwa", "trzy" ]
content = [
    [ "taka", "dziwna", "sytuacja" ]
  , [ "jeszcze", "bardziej", "dziwna" ]
  ]

init : Model
init = Model (Table.Model headerData content)

main =
    App.start
        { model = init
        , update = update
        , view = view
        }
