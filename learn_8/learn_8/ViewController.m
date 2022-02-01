//
//  ViewController.m
//  learn_8
//
//  Created by Vincent Feng on 2022/1/31.
//

#import "ViewController.h"
@import AudioToolbox;
@import AVFoundation;

static SystemSoundID soundId;

@interface ViewController () {
    AVAudioPlayer *_avAudioPlayer;
    AVPlayer *_avPlayer;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initAudioToolBox];
    [self initAVAudioPlayer];
    [self initAVPlayer];
}

-(void)initAudioToolBox {
    //MacOS system sound,path: /System/Library/Sounds
    NSString *path = [[NSBundle mainBundle] pathForResource:@"res/Funk.aiff" ofType: nil];
    NSURL *url = [NSURL fileURLWithPath:path];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)url, &soundId);
    
}

-(void)initAVAudioPlayer {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"res/test.mp3" ofType: nil];
    NSURL *url = [NSURL fileURLWithPath:path];
    _avAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    _avAudioPlayer.volume = 0.5f;
    [_avAudioPlayer prepareToPlay];
}
-(void)initAVPlayer {
    NSURL *url = [NSURL URLWithString:@"http://music.163.com/song/media/outer/url?id=1915297033.mp3"];
    AVPlayerItem *item = [[AVPlayerItem alloc] initWithURL:url];
    _avPlayer = [[AVPlayer alloc] initWithPlayerItem:item];
}
//

- (IBAction)audioToolBoxPlay:(UIButton *)sender {
    
    //1 only sound
    AudioServicesPlaySystemSound(soundId);
    //2 with alert
//    AudioServicesPlayAlertSound(soundId);
    //3 pure alert without sound
//    AudioServicesPlayAlertSound(kSystemSoundID_Vibrate);
}
- (IBAction)avAudioPlayerPlay:(UIButton *)sender {
    [_avAudioPlayer play];
}

- (IBAction)avPlayerPlay:(UIButton *)sender {
    [_avPlayer play];
}

@end
