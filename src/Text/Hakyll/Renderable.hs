module Text.Hakyll.Renderable
    ( Renderable(toContext, getDependencies, getUrl)
    ) where

import Text.Hakyll.Hakyll (Hakyll)
import Text.Hakyll.Context (Context)

-- | A class for datatypes that can be rendered to pages.
class Renderable a where
    -- | Get a context to do substitutions with.
    toContext :: a -> Hakyll Context

    -- | Get the dependencies for the renderable. This is used for cache
    --   invalidation.
    getDependencies :: a -> [FilePath]

    -- | Get the destination for the renderable.
    getUrl :: a -> Hakyll FilePath
