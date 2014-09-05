package com.wallet

class StaticalService {

    double calculeAvarange(double[] values)
	{
		double avarange = 0.0;
		
		for(int i = 0; i < values.length; i++)
		{
			avarange += values[i] / values.length;
		}
		
		avarange;
	}
	
	double calculeVariance(double[] values)
	{
		double variance = 0.0;
		double avarange = Statistical.calculeAvarange(values);
		
		for(int i = 0; i < values.length; i++)
		{
			variance += Math.pow((values[i] - avarange), 2)/(values.length-1);
		}
		
		variance;
		
	}
	double calculeStandardDeviation(double[] values)
	{	
		Math.sqrt(Statistical.calculeVariance(values));
	}
}
