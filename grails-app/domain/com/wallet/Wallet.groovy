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
    	standardDeviation(nullable:true)
    	varianceCoeffient(nullable:true)
    	varience(nullable:true,minSize:0)
    	averageReturn(nullable:true)
    	value(nullable:false,minSize:0)
    	


    }

    String toString() 
    {
    	walletName
    }
}
