package comments;


public class UnauthorizedAccessException extends Exception {

    private static final long serialVersionUID = 1L;
    public UnauthorizedAccessException(String message) {
        super(message);
    }

}
