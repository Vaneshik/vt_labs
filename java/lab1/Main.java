// Variant -> 2522

public class Main {
    public static void main(String[] args) {
        // create c with required numbers
        long[] c = { 15, 13, 11, 9, 7, 5, 3 };

        // create x
        double[] x = new double[13];

        // fill x with required random doubles
        double min = -5.0d, max = 2.0d;
        for (int i = 0; i < x.length; i++) {
            x[i] = Math.random() * (max - min) + min;
        }

        double[][] arr = new double[7][13];

        // calc values in array
        for (int i = 0; i < 7; i++) {
            for (int j = 0; j < 13; j++) {
                if (c[i] == 9) {
                    arr[i][j] = Math.log(Math.pow((2d * (Math.PI / (2d + Math.sqrt(Math.abs(x[j]))))), 2d));
                } else if ((c[i] == 5) | (c[i] == 11) | (c[i] == 13)) {
                    arr[i][j] = Math.log(Math.pow(Math.sin(Math.sin(Math.pow((x[j] + 0.5d), 2d))), 2d));
                } else {
                    arr[i][j] = Math.atan(0.25d * Math.cos(Math.log(Math.abs(x[j]) / 2d)));
                }
            }
        }

        // Print calculated array
        for (double[] arrayOfDoubles : arr) {
            for (double elem : arrayOfDoubles) {
                System.out.printf("%10.4f", elem);
            }
            System.out.println();
        }
    }
}
