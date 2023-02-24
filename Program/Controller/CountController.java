package GeekBrainsFinalTask.Program.Controller;
import GeekBrainsFinalTask.Program.Model.Counter;
public class CountController {
    private final Counter counter = new Counter();
    public Counter getCounter() {
        return counter;
    }
}