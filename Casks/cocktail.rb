class Cocktail < Cask
  version :latest
  sha256 :no_check

  url 'http://usa.maintain.se/CocktailYE.dmg'
  appcast 'http://www.maintain.se/downloads/sparkle/yosemite/yosemite.xml'
  homepage 'http://maintain.se/cocktail'
  license :unknown

  app 'Cocktail.app'

  # todo replace this with a conditional
  caveats <<-EOS.undent
    This version of Cocktail is for OS X Yosemite only. If you are using other versions of
    OS X, please run 'brew tap caskroom/versions' and install cocktail-mountainlion /
    cocktail-lion / cocktail-snowleopard / cocktail-mavericks
  EOS
end
