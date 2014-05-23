EscapedCharacterRemover
=======================

Mac app to remove escaped characters from a string

This simple app takes the contents of an NSString and removes the `\` character that is the prefix of an escaped string.
Note that this naive approach removes all instances of the `\` character.

If after removing the escaped characters, the content is valid XML, the XML will be pretty formatted before being displayed as output.


