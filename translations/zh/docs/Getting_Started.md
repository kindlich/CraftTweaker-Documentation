# 脚本入门

Crafttweaker 使用一种称为 `ZenScript` 的自定义脚本语言。ZenScript 读取于 `<游戏主目录>/scripts` 文件夹下的所有带有 `.zs` 后缀的文件。

ZenScript 是一种“自上向下”顺序读取的脚本语言，这意味着`导入`需要位于文件的顶部，`变量声明`也应该出现在较靠近文件顶部的位置。当然这不是强制性的，`变量`虽能够在脚本的各处定义，但`变量`声明之前的所有行都无法访问这个变量。

## 介绍

Ever went into building a modpack and then found that just throwing in a bunch of mods didn't give you an integrated experience? As mods are developed relatively independently from each other, one may feel overpowered in comparison to the other. Or you may believe that there would be a better recipe for some of the items. Or perhaps you'd want to remove an item from the game without having to remove the entire mod. Or you may discover that some ore dictionary entries have too many or too few items. Now you can do all of that - each with just a single instruction to MineTweaker.

In addition to the core functionality provided to support Vanilla minecraft, mod integration libraries are provided with the mod to enable you to not only modify vanilla recipes, but also the mod machine recipes and mod behavior.

## Scripts

Scripts are stored in `<minecraftdir>/scripts` and are loaded in the `PreInitialization` phase of Minecraft, unlike previous versions of Crafttweaker, Scripts cannot be reloaded, this is due to changes that Mojang have made in 1.12 and there is no workaround. Also, Scripts need to be on **both, the server AND the client instance** to work

Script files have the `.zs` prefix and can be compressed into a `.zip` that will also be read.

### Writing your first script

To get started with Scripts, you can create a very basic file, called `hello.zs` in the `<minecraftdir>/scripts>` folder.

In `hello.zs` put the following line

    print("Hello world!");
    

Now load up Minecraft and and take a look at the `crafttweaker.log` file.

The `crafttweaker.log` file is located in `<minecraftdir>` and can be read by any program that can read plaintext files.

It is recommended to use Notepad++ or Sublime Text to edit script files, however any program will do.

### The crafttweaker.log file

The `crafttweaker.log` file uses a specific syntax in it's output, that syntax is:

    [LOADERSTAGE][SIDE][TYPE] <message>
    

Using the example above, the output would be:

    [PREINITIALIZATION][CLIENT][INFO] Hello world!
    

The syntax is used for debug purposes and the only time the syntax is not used, is for command dumps, in which case it just prints the message, this is done so copy pasting the dumps is easier.

### Comments

Comments can be used to make your script files more readable and easier to understand!

ZenScript supports 3 types of comments, being:

Single line: `// I'm a single line comment!`

Alternate Single Line: `# I'm also a single line comment!`

Multiline:

    /* I'm 
    a
    multiline comment! */