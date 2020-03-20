//
//  CameraPreviewView.swift
//  iOS6-VideoRecorder
//
//  Created by Paul Solt on 7/10/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit
import AVFoundation

class CameraPreviewView: UIView {
    
    // defaults to the CALayer class but we can override
    // this layer can display it effectively
    override class var layerClass: AnyClass {
        return AVCaptureVideoPreviewLayer.self
    }
    
    var videoPlayerLayer: AVCaptureVideoPreviewLayer {
        return layer as! AVCaptureVideoPreviewLayer
    }
    
    var session: AVCaptureSession? {
        get { return videoPlayerLayer.session }
        set { videoPlayerLayer.session = newValue }
    }
}
