package bussinessLayer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Timetable {
	public static void main(String[] args) {
		// Database connection parameters
		String url = "jdbc:mysql://localhost:3306/KALINDI_db";
		String username = "root";
		String password = "aishu@R9039";

		try {
			// Connect to the database
			Connection connection = DriverManager.getConnection(url, username, password);
			Statement statement = connection.createStatement();

			// Get the date for the next day
			Calendar calendar = Calendar.getInstance();
			calendar.add(Calendar.DAY_OF_MONTH, 1);
			Date nextDay = calendar.getTime();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

			// Query to retrieve timetable for the next day
			String query = "SELECT * FROM timetable WHERE date = '" + dateFormat.format(nextDay) + "'";
			ResultSet resultSet = statement.executeQuery(query);

			// Display the timetable
			while (resultSet.next()) {
				String course = resultSet.getString("course");
				String time = resultSet.getString("time");
				System.out.println("Course: " + course + " Time: " + time);
			}

			// Close the database connection
			resultSet.close();
			statement.close();
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
