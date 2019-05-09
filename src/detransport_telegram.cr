require "json"
require "telegram_bot"
require "dotenv"
require "haversine"
require "crest"
require "jaro_winkler"
require "i18n"
require "./detransport_telegram/*"

I18n::Backend::Yaml.embed(["#{__DIR__}/locales"])
I18n.init

I18n.default_locale = "uk"

module DetransportTelegram
  VERSION = "0.1.0"

  def self.run
    Dotenv.load

    bot = DetransportTelegram::Bot.new
    bot.polling
  end
end

DetransportTelegram.run
