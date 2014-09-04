package com.wallet

class Statistical {

	static double calculeAvarange(double[] values)
	{
		double avarange = 0.f;
		
		for(int i = 0; i < values.length; i++)
		{
			avarange += values[i]/values.length;
		}
		
		return avarange;
	}
	
	static double calculeVariance(double[] values)
	{
		double variance = 0.f;
		double avarange = Statistical.calculeAvarange(values);
		
		for(int i = 0; i < values.length; i++)
		{
			variance += Math.pow((values[i]-avarange), 2)/(values.length-1);
		}
		
		return variance;
		
	}
	static double calculeStandardDeviation(double[] values)
	{	
		return Math.sqrt(Statistical.calculeVariance(values));
	}
	

    static constraints = {
    }
}
