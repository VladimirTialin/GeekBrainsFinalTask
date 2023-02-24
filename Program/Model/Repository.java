package GeekBrainsFinalTask.Program.Model;

import GeekBrainsFinalTask.Program.Model.Animal.*;

import java.util.List;

public interface Repository {

    void createAnimal(Animal animal);
    List<Animal> getAnimals();

    void updateAnimal(Animal animal);
}
