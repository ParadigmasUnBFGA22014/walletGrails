package com.wallet

class Company {

	String name
	String sector

	static hasMany=[stocks:Stock]
	static belongsTo=[wallet:Wallet]

    static constraints = {

    	name(nullable:false ,blank:false)
    	sector(nullable:false,blank:false)

    }
}
