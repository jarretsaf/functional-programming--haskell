{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_NewPkg (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/ubuntu/github/functional-programming--haskell/.stack-work/install/x86_64-linux/08b62aba6784fd88914b709d0e5e504fce62109c0a1c1156e0c3956f7417b275/8.8.3/bin"
libdir     = "/home/ubuntu/github/functional-programming--haskell/.stack-work/install/x86_64-linux/08b62aba6784fd88914b709d0e5e504fce62109c0a1c1156e0c3956f7417b275/8.8.3/lib/x86_64-linux-ghc-8.8.3/NewPkg-0.1.0.0-H526T6swGb8BTwtlcA6IF9"
dynlibdir  = "/home/ubuntu/github/functional-programming--haskell/.stack-work/install/x86_64-linux/08b62aba6784fd88914b709d0e5e504fce62109c0a1c1156e0c3956f7417b275/8.8.3/lib/x86_64-linux-ghc-8.8.3"
datadir    = "/home/ubuntu/github/functional-programming--haskell/.stack-work/install/x86_64-linux/08b62aba6784fd88914b709d0e5e504fce62109c0a1c1156e0c3956f7417b275/8.8.3/share/x86_64-linux-ghc-8.8.3/NewPkg-0.1.0.0"
libexecdir = "/home/ubuntu/github/functional-programming--haskell/.stack-work/install/x86_64-linux/08b62aba6784fd88914b709d0e5e504fce62109c0a1c1156e0c3956f7417b275/8.8.3/libexec/x86_64-linux-ghc-8.8.3/NewPkg-0.1.0.0"
sysconfdir = "/home/ubuntu/github/functional-programming--haskell/.stack-work/install/x86_64-linux/08b62aba6784fd88914b709d0e5e504fce62109c0a1c1156e0c3956f7417b275/8.8.3/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "NewPkg_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "NewPkg_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "NewPkg_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "NewPkg_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "NewPkg_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "NewPkg_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
