{-# OPTIONS_GHC -fno-warn-orphans #-}

module Test.Massiv.Core.Computation where

import Import

import Test.QuickCheck

import Data.Massiv.Core

instance GenUnchecked Comp where
    genUnchecked = oneof [ParOn <$> genUnchecked, pure Seq]
    shrinkUnchecked = const []

instance GenValid Comp where
    genValid = oneof [ParOn <$> genValid, pure Seq]
