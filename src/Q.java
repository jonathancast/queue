import org.apache.commons.cli.*;
import java.sql.*;

public class Q {
    public static void main(String[] args) {
        Options options = new Options();

        options.addOption(new Option("c", "category", true, "category of queue items to display"));

        try {
            CommandLine cmd = new DefaultParser().parse(options, args);

            Connection conn = DriverManager.getConnection("jdbc:sqlite:" + System.getProperty("user.home") + "/queue.db");
            try {
                String category = cmd.getOptionValue('c');
                PreparedStatement pstmt;
                if (category == null) {
                    pstmt = conn.prepareStatement("select * from items where category is null");
                } else {
                    pstmt = conn.prepareStatement("select * from items where category = ?");
                    pstmt.setString(1, category);
                }
                ResultSet rs  = pstmt.executeQuery();

                while (rs.next()) {
                    System.out.println(rs.getString("url"));
                }
            } finally {
                conn.close();
            }
        } catch (ParseException e) {
            System.out.println(e.getMessage());
            new HelpFormatter().printHelp("q", options);

            System.exit(1);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
