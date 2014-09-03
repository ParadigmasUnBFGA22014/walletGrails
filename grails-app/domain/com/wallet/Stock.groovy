package com.wallet

class Stock {

	String codeName
	String company
	String sector
	Price price

	static belongsTo=[wallet:Wallet]
	
    static constraints = {
    }
}
