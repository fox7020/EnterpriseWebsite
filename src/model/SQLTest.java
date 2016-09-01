package model;

public class SQLTest {

	public static void main(String[] args) {
		SQLApi api  = new SQLApi();
		String data = api.queryData("4");
		System.out.println(data);

	}

}
