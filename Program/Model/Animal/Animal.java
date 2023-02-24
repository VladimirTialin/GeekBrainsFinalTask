package GeekBrainsFinalTask.Program.Model.Animal;
import java.util.ArrayList;
import java.util.List;
public abstract class Animal {
    private Integer id = null;
    private String name;
    private int age;
    private List<String> commands = new ArrayList<>();
    public Animal(String name, int age) {
        this.name = name;
        this.age = age;
    }
    public Animal(Integer id, String name, int age, List<String> commands) {
        this(name, age);
        this.id = id;
        this.commands = commands;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getBirthDay() {
        return age;
    }
    public List<String> getCommands() {
        return commands;
    }
    public void setCommands(List<String> commands) {
        this.commands = commands;
    }
    public void addCommand(String command){
        this.commands.add(command);
    }
    public void showCommands(){
        if (commands.size() == 0) {
            System.out.println("Давай обучаться!/n");
        } else {
            System.out.println("Я знаю команды:");
            for (String command : this.commands) {
                System.out.println(command);
            }
        }
    }
    @Override
    public String toString() {
        return this.getClass().getSimpleName() +
                ":  № " + id +
                ", " + name + ", возраст в годах: " + age;
    }
}