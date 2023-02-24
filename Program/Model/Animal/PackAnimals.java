package GeekBrainsFinalTask.Program.Model.Animal;
import java.util.List;
public abstract class PackAnimals extends Animal {
    public PackAnimals(String name, int age) {
        super(name, age);
    }
    public PackAnimals(Integer id, String name, int age, List<String> commands) {
        super(id, name, age, commands);
    }
}