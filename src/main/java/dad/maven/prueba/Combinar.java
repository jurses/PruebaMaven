package dad.maven.prueba;

public class Combinar {
	public static String combinar(Object [] array)
	{
		String str = "";
		
		for (int i = 0; i < array.length; i++)
			str += array[i] + " ";
		
		return str.substring(0, str.length() - 1);
	}
	
	public static void main(String[] args)
	{
		Object [] array = {"hola", 3.1416, "adios", 4, true};
		System.out.println(combinar(array));
	}
}
