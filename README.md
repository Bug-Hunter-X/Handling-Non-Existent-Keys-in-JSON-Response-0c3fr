# Dart: Handling Non-Existent Keys in JSON Response

This repository demonstrates a common error in Dart when handling JSON responses: attempting to access a key that doesn't exist.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version.

## Problem

When parsing JSON, if you try to access a key that is not present in the JSON object, a runtime error occurs.  This usually manifests as a `null` pointer exception or similar.

## Solution

The solution involves checking for the existence of the key before accessing its value.  This can be done using the `containsKey` method or by using a safer access method like `jsonResponse['key'] ?? defaultValue`.  The improved solution also uses better error handling.