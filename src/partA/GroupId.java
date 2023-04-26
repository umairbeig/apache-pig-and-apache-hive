package partA;
import java.io.IOException;
import java.util.Random;
import org.apache.pig.EvalFunc;
import org.apache.pig.data.Tuple;

public class GroupId extends EvalFunc<String> {
    private static final String[] projectTools = { "MR", "Pig", "Hive", "MongoDB" };
    private static final Random random = new Random();

    public String exec(Tuple input) throws IOException {
        if (input == null || input.size() == 0) {
            return null;
        }
        try {
            return projectTools[random.nextInt(projectTools.length)];
        } catch (Exception e) {
            throw new IOException("Caught exception processing input row ", e);
        }
    }
}
