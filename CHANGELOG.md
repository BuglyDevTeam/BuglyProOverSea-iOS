# SDK更新日志

## Version 2.7.55

Release on 2024.08.09

### Update
* SDK 支持 minidump 信息采集；
* 增加 C++ 异常的抛异常调用栈；
* 支持 mach 异常捕获；
* 上报增加 hotpatch 字段；
* 优化 ANR 无堆栈问题；
* coredump 增加上传能力；
* 优化异步堆栈回溯实现；
* 优化 foom 退出判定条件；
* footprint 采集频率增加配置控制&增加 wakeup 的数据收集；
* 优化内存图触发时采集系统内存信息的方式；
* AppEventTracker 中增加 VC 内存信息数据；
* 优化 vmmapgraph dump 效率；
* MetricKit 支持按照配置类型进行上报；
* 支持 Crash 监控模块单独预初始化；
* 支持业务主动关闭 Bugly 网络上报；

## Version 2.7.53.5

Release on 2024.04.09

### Update

* SDK 支持流量监控数据的采集和上报；
* Crash 上报支持场景字段；
* Kotlin 异常上报支持；
* 优化 Crash & 错误附件上报逻辑；
* FOOM 内存堆栈记录性能优化 & 支持 extension 中的堆栈记录；
* 内存图上报关联 FOOM 和 VC 泄漏上报；
* VC 泄漏支持白名单配置，通过白名单配置，排除业务不需要监控的 VC；
* 调整 SDK 数据上报及配置拉取逻辑，减少配置覆盖的延迟问题；
* 支持个例标签和实验标签；

### Fix:
* 适配苹果隐私清单；

## Version 2.7.51.2

Release on 2023.12.12

### Update

* 发布Bugly海外版


