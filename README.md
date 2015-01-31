### [csv parser for baseball data](http://howistart.org/posts/haskell/1)

This Haskell program sums the total amount of "atBats" in batting.csv (the integers in the fourth/last column). We use utilize the Data.Csv.Streaming module to stream data from the .csv file incrementally and fold our result without loading the entire dataset at once.

### Getting Started

Create a Cabal sandbox so that our dependencies are isolated to this project, install dependencies, and build. 

    $ cabal sandbox init
    $ cabal install --only-dependencies
    $ cabal build

Run the parser with

    $ ./dist/build/csvParser/csvParser

### Tests

Install test dependencies with

    $ cabal install --enable-tests

Run tests with 

    $ cabal test