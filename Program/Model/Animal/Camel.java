package GeekBrainsFinalTask.Program.Model.Animal;
import java.util.List;
public class Camel extends PackAnimals {
    public Camel(String name, int age) {
        super(name, age);
    }
    public Camel(Integer id, String name, int age, List<String> commands) {
        super(id, name, age, commands);
    }
}