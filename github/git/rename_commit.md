## Git Freq. Problems with Sol.

This is one of most common problem that I have faced while I'm working on different computers using `git`

That is, commetor name is not syncing correctly in a global space. for example if my correct `git config --edit --global` is as;

```yml
[user]
    name = AVidhanR 
    email = my-email-id@gmail.com
```

But, sometimes it is not commenting as the above base; it's commenting as the Computer name for example; `user.name = Reddy` and `user.mail = xyz@company.com` Which is not good while looking at the insights. So the below command helps to solve this problem for me if it's just one commit (the latest one)

```sh
git commit --amend --no-edit --author="AVidhanR <my-email-id@gmail.com>"
# '<' and '>' should be there!

git push --force-with-lease
```

---

If the above explanation is not enough. let's see the below `gemini` generated article:

You can change the author name and email of your last commit, or multiple commits, using a rebase. If you've already pushed the incorrect commit to the remote repository, you'll need to force-push the corrected changes.


### Changing the Last Commit

If you only need to change the author of your **most recent commit**, you can use the `git commit --amend` command.

1.  First, make sure your local user name and email are correct.

    ```bash
    git config --global user.name "XYZZZ"
    git config --global user.email "xyz@example.com"
    ```

2.  Next, use the `amend` command to modify the author of the last commit.

    ```bash
    git commit --amend --no-edit --author="XYZZZ <xyz@example.com>"
    ```

      * `--amend`: This option modifies the previous commit instead of creating a new one.
      * `--no-edit`: This prevents Git from opening a text editor for you to change the commit message.
      * `--author`: This explicitly sets the new author name and email.

3.  After amending the commit, you'll need to force-push the changes to the remote repository because you've rewritten the commit history.

    ```bash
    git push --force-with-lease
    ```

      * `--force-with-lease` is a safer alternative to `git push --force` as it prevents overwriting any changes pushed by others since your last pull.


### Changing Multiple Commits

To change the author for **multiple commits** in your history, you can use an interactive rebase.

1.  Run an interactive rebase starting from the commit before the one you want to change. If you want to change the last 3 commits, use `HEAD~3`.

    ```bash
    git rebase -i HEAD~3
    ```

2.  An editor will open, showing a list of commits. The top line will be `pick <commit_hash> <commit_message>`. Change `pick` to `reword` or `edit` for the commits you want to change the author of.

    ```bash
    reword 1234567 My first commit
    pick   abcdefg Another commit
    edit   9876543 My third commit
    ```

3.  Save and close the editor. Git will rebase and stop at the commits you've marked. For each `edit` command, you'll get a message asking you to perform the action. Once done, use `git commit --amend --author="XYZZZ <xyz@example.com>"`.

    ```bash
    git commit --amend --author="XYZZZ <xyz@example.com>"
    git rebase --continue
    ```

4.  Repeat this for all the commits you marked with `edit`. After the rebase is complete, you'll need to **force-push** the rewritten history.

    ```bash
    git push --force-with-lease
    ```

Remember, force-pushing can be risky, especially in a shared repository. It's best to do this after informing your team.

Maintained by [AVidhanR (LinkedIn)](https://linkedin.com/in/AVidhanR) -- My GitHub Profile [link](https://github.com/AVidhanR) -- Follow me & Star this repo if it helped you!
