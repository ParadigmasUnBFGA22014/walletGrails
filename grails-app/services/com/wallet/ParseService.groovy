package com.wallet

class ParseService {

    def upload(Stock stockInstance, def table) {
        if (!table) {
            return
        }
        new File('tabelas').mkdirs()
        def tablePath = 'tabelas/'+stockInstance.codeName+'.csv'
        
        if (!table.empty) {
            table.transferTo(new File(tablePath))
            return
        }
        return
    }

    def populatePrice(Long stockId) {
        boolean first = true
        Stock stock = Stock.get(stockId)
        new File('tabelas/'+stock.codeName+'.csv').eachCsvLine { tokens ->
            if(!first){
                Price price = new Price()

                price.date = Date.parse('yyyy-MM-dd', tokens[0])
                price.open = Double.parseDouble(tokens[1])
                price.high = Double.parseDouble(tokens[2])
                price.low = Double.parseDouble(tokens[3])
                price.close = Double.parseDouble(tokens[4])
                price.volume = Long.parseLong(tokens[5])
                price.stock = stock

                price.save()
            }
            first = false
        }
    }

    def getCloses(Stock stock){

        def prices = Price.getAll()
        List<Double> pricesStock = new ArrayList<Double>()

        for(int i = 0; i < prices.size(); i++){
            if(prices[i].stock == stock){
                pricesStock.add(prices[i].close)
            }
        }
        Double[] closes = new double[pricesStock.size()]

        for(int i = 0; i < closes.length; i++){
            closes[i] = prices[i].close
        }

        return closes
    }
}
