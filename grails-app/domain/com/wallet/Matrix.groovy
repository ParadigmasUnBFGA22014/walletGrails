package com.wallet

class Matrix {

    def parseService

    int nCol;
    int nLin;
    double [][] content;

    Matrix(int nLin,int nCol) {
        this.nCol=nCol;
        this.nLin=nLin;
        content=new double[nLin][nCol];
    }


    double getContent(int nLin,int nCol ) {
        return content[nLin][nCol];
    }

    void setContent (int nLin,int nCol, double value) {
        content[nLin][nCol]=value;
    }

    static  Matrix product(Matrix a,Matrix b) {
        Matrix result = new  Matrix(a.getnLin(),b.getnCol());
        double[][] aux = new double[a.getnLin()][b.getnCol()]; 

        if(a.getnCol()==b.getnLin()) {
            for(int i = 0; i<a.getnLin(); i++) {

                for(int j= 0; j<b.getnCol(); j++) {
                    aux[i][j] = 0;

                    for(int x = 0; x<b.getnLin(); x++) {
                        aux[i][j]+=( a.getContent(i, x)) * (b.getContent(x, j));
                    }
                }
            }

            for (int i=0;i<result.getnLin();i++) {
                for (int j=0;j<result.getnCol();j++) {
                    result.setContent(i, j, aux[i][j]);
                }
            }
        }
        return result;
    }

    static Matrix transposed(Matrix a) {
        Matrix result=new Matrix(a.getnCol(), a.getnLin());
        for(int i=0;i<a.nLin;i++) {
            for (int j=0;j<a.nCol;j++) {
                result.setContent(j, i, a.getContent(i, j));
            }
        }
        return result;
    }

    static constraints = {

    }
}
