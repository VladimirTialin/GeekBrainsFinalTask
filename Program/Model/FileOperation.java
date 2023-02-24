package GeekBrainsFinalTask.Program.Model;
import java.util.List;
public interface FileOperation {
    List<String> readAllLines();
    void saveAllLines(List<String> lines);
}
