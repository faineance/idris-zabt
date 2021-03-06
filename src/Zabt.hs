{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE PatternSynonyms #-}

-- | Abstract binding trees with a nameless internal representation.
module Zabt ( 

  -- * Abstract binding tree terms
  -- $intro

    Term

  -- * Constructing terms with 'View' patterns
  -- $patterns

  , pattern Var
  , pattern Abs
  , pattern Pat

  -- * Working with free variables
  -- $frees

  , subst
  , substMap
  , subst1
  , freeVars

  -- * Freshen class

  , Freshen (..)

  -- * 'View' in detail

  , View (..)
  , fold
  , unfold

) where

import Zabt.Freshen
import Zabt.Internal.Term
import Zabt.View

{- $intro

  Abstract binding trees take the form @'Term' v f a@, or, more commonly, @'Flat' v f@. These 
  types are abstract—you will never construct or analyze them directly.
 
 -}

{- $patterns

  To construct or analyze a 'Term', the 'Var', 'Abs', and 'Pat' pattern synonyms are useful. 
  These synonyms let you essentially treat 'Term' as if it weren't abstract and both construct 
  new terms and @case@ analyze them.
 
 -}

{- $frees

  Abstract binding trees take the form @'Term' v f a@, or, more commonly, @'Flat' v f@. These 
  types are abstract---you will never construct or analyze them directly.
 
 -}
