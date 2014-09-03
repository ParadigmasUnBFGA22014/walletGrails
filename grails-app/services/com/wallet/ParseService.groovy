package com.wallet

class ParseService {

    def populatePrice() {
    	boolean first = true

    	new File("table.csv").eachCsvLine { tokens ->
    		if(!first){
	    		Price price = new Price()

	    		price.date = Date.parse('yyyy-MM-dd', tokens[0])
	    		price.open = Double.parseDouble(tokens[1])
	    		price.high = Double.parseDouble(tokens[2])
	    		price.low = Double.parseDouble(tokens[3])
	    		price.close = Double.parseDouble(tokens[4])
	    		price.volume = Long.parseLong(tokens[5])

	    		price.save()
			}
			first = false
    	}
    }
}
