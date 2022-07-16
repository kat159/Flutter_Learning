
 # 获取当前可用的最大宽度和高度， 利用LayoutBuilder
 
 # 1.运行时, render之前直接获得当前窗口*最大*高宽，并进行UI管理
 Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      print([constraints.maxHeight, constraints.maxWidth]);
      return Text('1111');
    });
  }

  # 2. render之后获得当前窗口高宽
  # 不能在build里面用，
  context.size

  # MediaQuery.of(context) 只能获得metarial box的宽度和高度
  # 也就是device screen的宽度和高度