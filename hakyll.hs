{-# LANGUAGE OverloadedStrings #-}
import Control.Arrow ((>>>))
import Control.Monad (forM_)

import Hakyll

-- | Entry point
--
main :: IO ()
main = hakyll $ do
  -- Compress CSS
  route "css/*" idRoute
  compile "css/*" compressCssCompiler
  
  -- Copy images
  route "images/*" idRoute
  compile "images/*" copyFileCompiler
  
  route "favicon.ico" idRoute
  compile "favicon.ico" copyFileCompiler
  
  -- Copy files (deep)
  route   "files/**" idRoute
  compile "files/**" copyFileCompiler
  
  {-
  -- Copy Javascript
  route "js/*" idRoute
  compile "js/*" copyFileCompiler
  -}

  -- Read templates
  compile "templates/*" templateCompiler
  
  -- Render some static pages
  forM_ ["index.markdown", "cv.markdown", "contact.rst", "links.rst", "404.html"] $ 
    \page -> do
      route page $ setExtension "html"
      compile page $ pageCompiler
        >>> applyTemplateCompiler "templates/default.html"
        >>> relativizeUrlsCompiler
