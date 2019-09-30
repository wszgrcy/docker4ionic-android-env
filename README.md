# docker4ionic-android-env
- 需要将代码挂载到`/source`上
- 仅仅是一个环境,目前需要进入后手动构建,不排除后期可能会做成命令的形式
- 由于众所周知的原因,在构建时会下载一些东西,由于在docker中没下载成功,所以暂时不清楚还有哪些需要的依赖
- `gradle-5.6.2-bin`从官网上[下载](https://gradle.org/install/)的
- `sdk-tools-linux-4333796`android[下载](https://developer.android.com/studio/index.html)sdk那个页面的,命令行工具