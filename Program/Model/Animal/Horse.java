package GeekBrainsFinalTask.Program.Model.Animal;
import java.util.List;
public class Horse extends PackAnimals {
    public Horse(String name, int age) {
        super(name, age);
    }
    public Horse(Integer id, String name, int age, List<String> commands) {
        super(id, name, age, commands);
    }
}