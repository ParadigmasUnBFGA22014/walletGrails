package com.wallet

class Statistical {

	static double calculeAvarange(List<Double> values) {
		double avarange=0.f;

		for(int i=0;i<values.size();i++) {
			avarange+=values[i]/values.size();
		}
		return avarange;
	}

	static double calculeVariance(List<Double> values) {
		double variance=0.f;
		double avarange=Statistical.calculeAvarange(values);

		for(int i=0;i<values.size();i++) {
			variance+=Math.pow((values[i]-avarange), 2)/(values.size()-1);
		}
		return variance;
	}

	static double calculeStandardDeviation(List<Double> values) {
		return Math.sqrt(Statistical.calculeVariance(values));
	}

    static constraints = {

    }
}
