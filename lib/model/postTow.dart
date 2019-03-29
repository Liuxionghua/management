class PostTow {
  const PostTow({
    this.title,
    this.author,

  });

  final String title;
  final List author;
}

final List<PostTow> postsTow = [
  PostTow(
    title:'五防主机',
    author:[
      '传输协议:CDT',
      '通信方式:串口通讯',
      '五防IP/端口号:COM5',
      '五防系统主机操作系统:WindowsXP',
      '五防系统型号:FY2004',
      '主机型号:optiplex3010',
      '主机安装时间:2005',
      'CPU型号:E7300',
      '主频:1.8',
      '硬盘:150',
      '显示器型号:DELL',
      '显示器尺寸:19',
      '内存型号\大小:1G'
    ],
  ),
  PostTow(
    title:'电脑钥匙',
    author:[
      '电脑钥匙型号:26版',
      '电脑钥匙数量:2',
      '适配器型号:FKTT-C2B',
      '适配器数量:1'
    ],
  ),
  PostTow(
    title:'五防锁具',
    author:[
      '挂锁数量:190',
      '固定锁数量:72',
      '电气锁数量:184',
      '接地桩数量:114',
      '锁码片型号:10位',
      '锁码量:250'
    ],
  ),
  PostTow(
    title:'地库线',
    author:[
      '550KV',
      '220KV',
      '110KV',
      '35KV',
      '10KV',
      '地库线管理系:无',
    ],
  ),
];