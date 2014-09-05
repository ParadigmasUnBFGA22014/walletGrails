package com.wallet

class Wallet {

    String walletName 
	Double standardDeviation
	Double varianceCoeffient
	Double varience
	Double averageReturn
	Double value 
	
	
	static hasMany = [company: Company]
	
    static constraints = {
    	walletName(nullable:false)
    	standardDeviation(nullable:false)
    	varianceCoeffient(nullable:false)
    	varience(nullable:false,minSize:0)
    	averageReturn(nullable:false)
    	value(nullable:false,minSize:0)
    	


    }

    String toString() 
    {
    	walletName
    }
}
