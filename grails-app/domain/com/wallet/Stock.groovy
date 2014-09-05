package com.wallet

class Stock {

	String codeName
	Price price
	Double percent

	static belongsTo=[wallet:Wallet, company:Company]
	
    static constraints = {

    	codeName(nullable:false,unique:true)
    	percent(nullable:false)
    }
}
