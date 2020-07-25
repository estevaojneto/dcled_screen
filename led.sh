#!/bin/bash
	dcled --message="Hello, $(whoami)! :3"
	while :
	do
		date=$(date +'%A%d/%m/%Y')
		dcled --message=$date
		dcled --clock24
		usd_brl_exchange=$(curl https://free.currencyconverterapi.com/api/v6/convert?q=USD_BRL&compact=ultra)
		readable_usdbrl=$(echo $usd_brl_exchange | jq '.results.USD_BRL.val')
		dcled --message=BRL_USD:$readable_usdbrl

		btc_usd_exchange=$(curl https://free.currencyconverterapi.com/api/v6/convert?q=BTC_USD&compact=ultra)
		readable_btcusd=$(echo $btc_usd_exchange | jq '.results.BTC_USD.val')
		dcled --message=BTC_USD:$readable_btcusd

	done
