module Main where

import Html exposing (..)

import Component.Table as Table

headerData = [ "jeden", "dwa", "trzy" ]
content = [
    [ "taka", "dziwna", "sytuacja" ]
  , [ "jeszcze", "bardziej", "dziwna" ]
  ]

sample = Table.Model headerData content

main =
    div []
      [Table.view sample]
