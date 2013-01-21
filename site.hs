{-# LANGUAGE OverloadedStrings #-}

import Hakyll

main :: IO ()
main = hakyll $ do
  -- Compress CSS
  match "css/*" $ do
    route idRoute
    compile compressCssCompiler

  -- Copy images
  match "images/*" $ do
    route idRoute
    compile copyFileCompiler

  match "favicon.ico" $ do
    route idRoute
    compile copyFileCompiler

  -- Copy files (deep)
  match "files/**" $ do
    route idRoute
    compile copyFileCompiler

  -- Copy JavaScript
  match "js/*" $ do
    route idRoute
    compile copyFileCompiler

  -- Read templates
  match "templates/*" $ compile templateCompiler

  -- Render some static pages
  match (fromList pages) $ do              
    route $ setExtension "html"
    compile $ pandocCompiler
      >>= loadAndApplyTemplate "templates/default.html" defaultContext
      >>= relativizeUrls
  where pages = [ "index.md"
                , "cv.md"
                , "pubs.md"
                , "contact.md"
                , "links.md"
                , "404.md"
                ]