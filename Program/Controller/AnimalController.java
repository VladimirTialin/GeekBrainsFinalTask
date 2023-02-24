package GeekBrainsFinalTask.Program.Controller;
import GeekBrainsFinalTask.Program.Model.Repository;
import GeekBrainsFinalTask.Program.Model.Animal.Animal;
import java.util.List;
public class AnimalController {
    private final Repository repository;
    public AnimalController(Repository repository) {
        this.repository = repository;
    }
    public void saveAnimal(Animal animal) {
        repository.createAnimal(animal);
    }
    public void updateAnimal(Animal animal) {
        repository.updateAnimal(animal);
    }
    public Animal readAnimal(int animalId) throws Exception {
        List<Animal> animals = repository.getAnimals();
        for (Animal animal : animals) {
            if (animal.getId() == animalId) {
                return animal;
            }
        }
        throw new Exception("Животное не найдено");
    }
    public List<Animal> readAnimals() {
        List<Animal> animals = repository.getAnimals();
        if (animals.isEmpty()) {
            System.out.println("Животных нет");
        }
        return animals;
    }
}