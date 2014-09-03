package com.wallet

class Wallet {

    String walletName 
	Double standardDeviation
	Double covarience
	Double varience
	Double averageReturn
	
	
	static hasMany = [stock: Stock ]
	
    static constraints = {
    }

    String toString() 
    {
    	walletName
    }
}
