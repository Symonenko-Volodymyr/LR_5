package Symonenko.V;

import java.sql.*;
import java.util.Scanner;

public class Main {

    private static final String DB_URL = "jdbc:mysql://127.0.0.1:3307/students_db";
    private static final String USER = "root";
    private static final String PASSWORD = "root";

    public static void main(String[] args) {
        try (Connection connection = DriverManager.getConnection(DB_URL, USER, PASSWORD)) {
            Scanner scanner = new Scanner(System.in);
            System.out.print("Введіть номер місяця студентів (1-12): ");
            int month = scanner.nextInt();

            String query = "SELECT * FROM students WHERE MONTH(birth_date) = ?";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setInt(1, month);
                ResultSet resultSet = statement.executeQuery();

                boolean found = false;
                while (resultSet.next()) {
                    found = true;
                    System.out.printf("ID: %d, Прізвище: %s, Ім'я: %s, По батькові: %s, Дата народження: %s, Номер залікової книжки: %s%n",
                            resultSet.getInt("id"),
                            resultSet.getString("surname"),
                            resultSet.getString("name"),
                            resultSet.getString("patronymic"),
                            resultSet.getDate("birth_date").toString(),
                            resultSet.getString("record_book_number"));
                }

                if (!found) {
                    System.out.println("Студентів не знайдено.");
                }

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}