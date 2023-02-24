package GeekBrainsFinalTask.Program;

import GeekBrainsFinalTask.Program.Controller.AnimalController;
import GeekBrainsFinalTask.Program.Controller.CountController;
import GeekBrainsFinalTask.Program.Model.FileOperation;
import GeekBrainsFinalTask.Program.Model.FileWork;
import GeekBrainsFinalTask.Program.Model.Repository;
import GeekBrainsFinalTask.Program.Model.RepositoryFile;
import GeekBrainsFinalTask.Program.View.ViewUser;

public class run {
    public static void main(String[] args) {
        FileOperation fileOperation = new FileWork("Animals.txt");
        Repository repository = new RepositoryFile(fileOperation);
        AnimalController controller = new AnimalController(repository);
        CountController countController = new CountController();
        ViewUser view = new ViewUser(controller, countController);
        view.run();
    }
}