## Other Important Commands

Few most commonly used commands in the `powershell` environment that one would use in `bash` environment.

Copy items from one path to other

```powershell
Copy-Item -Path <source-path> -Destination <dest-path>
```

lly, Move items

```powershell
Move-Item -Path <source-path> -Destination <dest-path>
```

lly, Remove items

```powershell
Remove-Item <file-or-dir-to-remove>
# Be careful as things cannot go back as they were
# after you delete it!
```

lly, Rename items like files or dirs

```powershell
Rename-Item -Path <source-path> -NewName <renamed-source-path>
```

finally, testing whether a path is available or not

```powershell
Test-Path <path>
# returns True if the path exists; else returns False
```

Those are the most essential things that a `Web Dev` like me or you need. If Git Bash is not loading fast enough!

Maintained by [AVidhanR (LinkedIn)](https://linkedin.com/in/AVidhanR) -- My GitHub Profile [link](https://github.com/AVidhanR) -- Follow me & Star this repo if it helped you!
