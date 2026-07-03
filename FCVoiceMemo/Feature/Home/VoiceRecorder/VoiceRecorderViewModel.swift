//
//  VoiceRecorderViewModel.swift
//  FCVoiceMemo
//
//  Created by joe on 7/3/26.
//

import AVFoundation
import Combine

class VoiceRecorderViewModel: NSObject, ObservableObject, AVAudioPlayerDelegate {
    @Published var isDisplayRemoveVoiceRecorderAlert: Bool
    @Published var isDisplayErrorAlert: Bool
    @Published var errorAlertMessage: String
    
    /// 음성메모 녹음 관련 프로퍼티
    var audioRecorder: AVAudioRecorder?
    @Published var isRecording: Bool
    
    /// 음성메모 재생 관련 프로퍼티
    var audioPlayer: AVAudioPlayer?
    @Published var isPlaying: Bool
    @Published var isPaused: Bool
    @Published var playedTime: TimeInterval
    private var progressTimer: Timer?
    
    /// 음성메모된 파일
    var recordedFiles: [URL]
    
    /// 현재 선택된 음성메모 파일
    @Published var selectedRecordedFile: URL?
    
    init(isDisplayRemoveVoiceRecorderAlert: Bool = false, isDisplayErrorAlert: Bool = false, errorAlertMessage: String = "", isRecording: Bool = false, isPlaying: Bool = false, isPaused: Bool = false, playedTime: TimeInterval = 0, recordedFiles: [URL] = [], selectedRecordedFile: URL? = nil) {
        self.isDisplayRemoveVoiceRecorderAlert = isDisplayRemoveVoiceRecorderAlert
        self.isDisplayErrorAlert = isDisplayErrorAlert
        self.errorAlertMessage = errorAlertMessage
        self.isRecording = isRecording
        self.isPlaying = isPlaying
        self.isPaused = isPaused
        self.playedTime = playedTime
        self.recordedFiles = recordedFiles
        self.selectedRecordedFile = selectedRecordedFile
    }
}
