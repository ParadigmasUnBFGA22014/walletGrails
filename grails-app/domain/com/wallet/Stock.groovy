package com.wallet

class Stock {

	String codeName
	Double percent

	static belongsTo=[company:Company]
	static hasmanyTo=[prices:Price]
	
    static constraints = {

    	codeName(nullable:false,unique:true)
    	percent(nullable:false)
    }
}
