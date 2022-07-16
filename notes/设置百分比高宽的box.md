# 如果FractionallySizedBox用在Row,Colomn之类的里面，要用Flexible包含，不然报错

// FractionallySizedBox must be wrapped by Flexible if inside Column or Row
// Flexible(
//   child: FractionallySizedBox(
//   widthFactor: 0.5,
//   heightFactor: 0.5,
//   child: Image.asset('assets/images/envelope.png'),
//   ),
// ),