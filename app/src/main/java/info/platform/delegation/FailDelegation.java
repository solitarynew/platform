package info.platform.delegation;

public class FailDelegation implements org.flowable.engine.delegate.JavaDelegate {
    public void execute(org.flowable.engine.delegate.DelegateExecution execution) {
        System.out.println("FailDelegation");
    }
}
