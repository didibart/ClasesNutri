library(telegram.bot)
updater <- Updater(token = bot_token("malonerobot"))
echo <- function(bot, update){
  texto <- update$message$text
  nro <- grep("Peron",texto)
  if (!is.null(nro))
  {if (length(nro) != 0)
  {bot$sendMessage(chat_id = update$message$chat_id, text = "Viva Peron")}
  }
}
updater <- updater + MessageHandler(echo, MessageFilters$text)
updater$start_polling()

