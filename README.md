# Introduction
Does your file keep getting blocked during file transfer? Is it impossible to install new software but Powershell scripting is available? Introducing the powershell ByteFlipper: the last resort for attempting to bypass useless security protocols. 

# Powershell Byte Flipper
1. Add .txt extension to any filename, thereby making it text. 
2. Put this script inside that same directory and set the $SourceFile to that file name.
3. Run the script and wait for it to process.
4. Transfer the file through and see if it bypasses security limitations.
5. Run this script again exactly the same way on the other side of the file transfer to unflip the bit thereby showing the real file contents.
6. Remove the .txt extension on the end of the file name.
7. Now use the file and see if it works!

# More Control:

If you need more control over the process, you can use a less efficient version of this process which will iterate over each bit in the file called the [BitFlipper](https://github.com/TheEliteOneShot/ps_bit_flipper).
