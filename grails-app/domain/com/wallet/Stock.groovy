package com.wallet

class Stock {

	String codeName
	Price price

	static belongsTo=[wallet:Wallet, company:Company]
	
    static constraints = {

    	codeName(nullable:false,unique:true)
    }
}
