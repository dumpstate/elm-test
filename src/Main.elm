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

headerData = [ "first", "second", "third" ]
content = [
    [ "one", "two", "three" ]
  , [ "four", "five", "six" ]
  , [ "seven", "eight", "nine" ]
  ]

init : Model
init = Model (Table.Model headerData content)

main =
    App.start
        { model = init
        , update = update
        , view = view
        }
