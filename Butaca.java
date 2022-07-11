package cinemarcode;

public class Butaca {
	private final int fila;
	private final int columna;
	private String[][] sala;
	private int ticket;
	private int ingresoActual;
	
	public Butaca (int fila,int columna) {
		
	this.fila = fila;
	this.columna = columna;
	this.sala = new String[fila +1][columna+1];
	this.ticket=0;}
	
	public void llenarSalaPorDefecto(){
	for (int i= 0; i < sala.length; i++) { 
		for (int j= 0; j < sala.length; j++){
			if (i==0 && j==0)sala [i][j]="";
			else if(i==0)sala[i][j]=String.valueOf(j);
			else if(j==0)sala[i][j]=String.valueOf(i);
			else sala[i][j]= "D";
		}
	}
		}
	private Object sala(int i) {
		// TODO Auto-generated method stub
		return null;
	}

	public void imprimirSala() {
		System.out.println("\nsala cine:\n");
		for (String[]asientos:sala) {
			for (int j=0; j < sala[0].length; j++) {
				System.out.print(asientos[j]+"");
			}
				System.out.println("\n");
				
				
		
		}
	}

	}


