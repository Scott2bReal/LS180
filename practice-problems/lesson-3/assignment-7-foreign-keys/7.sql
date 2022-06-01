-- Make any changes needed to avoid the error message encountered in #6.

DELETE FROM orders WHERE quantity = 42;

-- Didn't need to actually run this since I didn't run the last statement
