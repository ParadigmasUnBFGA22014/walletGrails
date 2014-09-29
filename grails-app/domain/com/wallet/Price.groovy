package com.wallet

class Price {
	Date date
	Double open
	Double high
	Double low
	Double close
	long volume

	static belongsTo = [stock:Stock]

    static constraints = {

  
    }
}
