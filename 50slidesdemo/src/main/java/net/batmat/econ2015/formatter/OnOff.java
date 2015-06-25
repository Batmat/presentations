package net.batmat.econ2015.formatter;

public class OnOff {
	public static void main(String[] args) {
		// @formatter:off
		String littleBobbyTables = "BEGIN\n"
		+ "FOR c IN (SELECT table_name, constraint_name FROM user_constraints WHERE constraint_type = 'R')\n"
		+ "LOOP\n"
		+     "EXECUTE IMMEDIATE ('alter table ' || c.table_name || ' disable constraint ' || c.constraint_name);\n"
		+ "END LOOP;\n"
		+ "FOR c IN (SELECT table_name FROM user_tables)\n"
		+ "LOOP\n"
		+     "EXECUTE IMMEDIATE ('truncate table ' || c.table_name);\n"
		+ "END LOOP;\n"
		+ "FOR c IN (SELECT table_name, constraint_name FROM user_constraints WHERE constraint_type = 'R')\n"
		+ "LOOP\n"
		+     "EXECUTE IMMEDIATE ('alter table ' || c.table_name || ' enable constraint ' || c.constraint_name);\n"
		+ "END LOOP;\n" + "END;";
		// @formatter:on
	}
}
