#!/bin/sh
set -eu
gleam format src test
gleam build --warnings-as-errors
gleam run
