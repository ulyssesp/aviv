{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE ViewPatterns      #-}
module Foundation where

import Yesod.Core
import Yesod.Static

staticFiles "static"

data App = App

mkYesodData "App" $(parseRoutesFile "routes")

instance Yesod App
