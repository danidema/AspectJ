
public aspect Control {
	after():
		call(* *.subirTanda()) {
			System.out.println("Avanzo a la siguiente tanda");
		
	}
	after():
		call(* *.subirNivel()) {
			System.out.println("Avanzo al siguiente nivel");
		
	}
		
	
	before(int code):
		call(* System.exit(int)) && args(code){
			if(code == 0) {
				System.out.println("Gano el juego");
			}else if(code == 1) {
				System.out.println("Perdio el juego");
			}
			else {
				System.out.println("Salida Defectuosa");
			}
	}
}
