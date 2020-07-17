# worm-centerline-extraction
extract worm centerline
## 图片处理
* 1.安装[vscode](https://code.visualstudio.com/)和[winscp](https://winscp.net/eng/download.php)
* 2.打开vscode,按住Fn键同时按F1,在弹出的横框上点击Add new ssh host,然后输入ssh customer@202.38.92.138 -p 23,点击下面的...config,完成添加。以后连接时则Fn-F1后直接点击connect to host,选择
* 202.38.92.138。
* 3.打开winscp,点击新建站点，文件协议选SFTP，主机名202.38.92.138，端口23，用户名customer,密码WenLabcustomer2019，登录。此软件用于本地与远程间传文件。
* 4.vscode远程连上后，点击左上角file-open file ,输入/home/hdd1/Kexin/unet_worm/ultimatum.py，打开ultimatum代码。
* 5.打开winscp,将待分析红外视频放到/home/hdd1/Kexin/worm_whole_brain_imaging_video/下面。打开ultimatum代码，将16行的video_name改为待分析视频名称,保存代码。在命令后terminal处输入conda       activate unet2，然后输入python ultimatum.py,运行。处理后的图片放在/home/hdd1/Kexin/worm_whole_brain_imaging/w2下。将图片复制到本地。
## matlab处理
* 1.将该repository克隆到本地，打开matlab,将当前工作文件夹设置成存放repository的文件夹。
* 2.打开函数中的combine.m，可以看到里面有五个参数。Inputfolder为存放上面处理图片的文件夹，outputfolder为存放灰度处理结果的文件，start index = 0, end index = 视频帧数 - 1,Head_position为视频首帧线虫的头部坐标。坐标可通过matlab函数imread,imshow打开首帧图片，然后用工具中的数据游标显示头部坐标。Head_position中坐标是[行，列]，因此前面获得的坐标两个数字要调转位置。最后将存放ouputfolder的文件夹命名为backbone，在backbone下再命名一个文件夹centerline。之后便可运行combine.m，得到中心线坐标。
* 3.得到坐标后可通过load函数导入工作区，检查中心线情况，也可用plot函数连续画图查看。
