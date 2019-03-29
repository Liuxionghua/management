class Task{
  const Task({
    this.taskTime,
    this.taskDetails,
    this.startDate,
    this.endDate,
    this.taskTitle,
    this.achieveDate,
    this.implementDate,
  });
  final taskTime;//任务时间
  final taskTitle;//任务
  final taskDetails;//任务详情
  final startDate;//开始时间
  final endDate;//结束时间
  final implementDate;//实施日期
  final achieveDate;//完成日期
}
final List<Task> tasks = [
  Task(
    taskTitle: '季度维护-100KV大洲站',
    taskTime: '2018-07-30 16:21:59',
    taskDetails: '五防季度维护',
    implementDate: '2019-03-01',
    achieveDate: '2019-03-02',
    startDate: '2019-03-02 12:00:00',
    endDate: '2019-03-02 12:00:00',
  ),
  Task(
      taskTitle: '季度维护-100KV大洲站',
      taskTime: '2018-07-30 16:21:59',
      taskDetails: '现场检测与设备维护',
      implementDate: '2019-03-01',
      achieveDate: '2019-03-02',
      startDate: '2019-03-02 12:00:00',
      endDate: '2019-03-02 12:00:00',
  ),
];