import Control.Monad (mapM_)

import Text.Hakyll 
import Text.Hakyll.File (directory)
import Text.Hakyll.Render (css, static, renderChain)
import Text.Hakyll.CreateContext (createPage)
import Text.Hakyll.HakyllMonad

myConfig :: HakyllConfiguration
myConfig = (defaultHakyllConfiguration "http://foss.ntua.gr/~yiannist")
    { enableIndexUrl = True
    }

main = hakyllWithConfiguration myConfig $ do
    static "favicon.ico"
    directory css "css"
    directory static "images"
    directory static "files"

    
    -- Render pages
    mapM_ render [ "index.html"
                 , "cv.rst"
                 , "contact.rst" 
                 , "links.rst"
                 , "404.html"
                 ]
  where
    render = renderChain ["templates/default.html"]
           . createPage
