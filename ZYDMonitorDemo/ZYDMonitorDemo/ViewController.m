//
//  ViewController.m
//  ZYDMonitor
//
//  Created by 朱耀东 on 15/11/17.
//  Copyright © 2015年 zyd. All rights reserved.
//

#import "ViewController.h"
#import <sys/sysctl.h>
#import <mach/mach.h>
#include <sys/param.h>
#include <sys/mount.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"show"]];
    imageView.frame = self.view.frame;
    [self.view addSubview:imageView];
    // Do any additional setup after loading the view, typically from a nib.
    
//    // 空闲内存
//    double availableMemory = [self availableMemory];
//    // 已占用内存百分比
//    double preMemory = availableMemory / ([self usedMemory] + availableMemory) * 100;
//    // 可用磁盘容量
//    double availableDiskSize = [self getAvailableDiskSize];
//    // 总磁盘容量
//    double totalDiskSize = [self getTotalDiskSize];
//    // 可用磁盘百分比
//    double preDisk = availableDiskSize / totalDiskSize * 100;
//    
//    NSLog(@"\n 空闲内存:%.2f\n 已占用内存:%.2f%% \n 可用磁盘容量:%.2f \n 可用磁盘百分比:%.2f%%", availableMemory, preMemory, availableDiskSize, preDisk);
//    
//    [[NSUserDefaults standardUserDefaults] setValue:[NSString stringWithFormat:@"%f", availableMemory] forKey:@"availableMemory"];
}

//// 获取当前设备可用内存(单位：MB）
//- (double)availableMemory
//{
//    vm_statistics_data_t vmStats;
//    mach_msg_type_number_t infoCount = HOST_VM_INFO_COUNT;
//    kern_return_t kernReturn = host_statistics(mach_host_self(),
//                                               HOST_VM_INFO,
//                                               (host_info_t)&vmStats,
//                                               &infoCount);
//    
//    if (kernReturn != KERN_SUCCESS) {
//        return NSNotFound;
//    }
//    
//    return ((vm_page_size *vmStats.free_count) / 1024.0) / 1024.0;
//}
//
//// 获取当前任务所占用的内存（单位：MB）
//- (double)usedMemory
//{
//    task_basic_info_data_t taskInfo;
//    mach_msg_type_number_t infoCount = TASK_BASIC_INFO_COUNT;
//    kern_return_t kernReturn = task_info(mach_task_self(),
//                                         TASK_BASIC_INFO,
//                                         (task_info_t)&taskInfo,
//                                         &infoCount);
//    
//    if (kernReturn != KERN_SUCCESS
//        ) {
//        return NSNotFound;
//    }
//    
//    return taskInfo.resident_size / 1024.0 / 1024.0;
//}
//
//// 总磁盘容量
//- (float)getTotalDiskSize
//{
//    struct statfs buf;
//    unsigned long long freeSpace = -1;
//    if (statfs("/var", &buf) >= 0)
//    {
//        freeSpace = (unsigned long long)(buf.f_bsize * buf.f_blocks);
//    }
//    return freeSpace / 1024.0 / 1024.0;
//}
//
//// 可用磁盘容量
//-(float)getAvailableDiskSize
//{
//    struct statfs buf;
//    unsigned long long freeSpace = -1;
//    if (statfs("/var", &buf) >= 0)
//    {
//        freeSpace = (unsigned long long)(buf.f_bsize * buf.f_bavail);
//    }
//    return freeSpace / 1024.0 / 1024.0;;
//}

//// 总内存
//- (long long)getTotalMemorySize
//{
//    return [NSProcessInfo processInfo].physicalMemory;
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
