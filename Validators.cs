using System;

public class Class1
{
    public static class Validators
    {
        public static bool IsNotEmpty(string input) => !string.IsNullOrWhiteSpace(input);
    }
}
