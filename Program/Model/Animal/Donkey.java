package GeekBrainsFinalTask.Program.Model.Animal;
import java.util.List;
public class Donkey extends Sumpter {
    public Donkey(String name, int age) {
        super(name, age);
    }
    public Donkey(Integer id, String name, int age, List<String> commands) {
        super(id, name, age, commands);
    }
}