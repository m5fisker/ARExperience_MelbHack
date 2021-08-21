//
//  ARView.swift
//  SwitftUI_AR
//
//  Created by Kumar Soorya on 22/08/2021.
//

import Foundation
import ARKit
import SwiftUI

// MARK: - ARViewIndicator
struct ARViewIndicator: UIViewControllerRepresentable {
    typealias UIViewControllerType = ARView
    
    func makeUIViewController(context: Context) -> ARView {
        return ARView()
    }
    func updateUIViewController(_ uiViewController:
                                    ARViewIndicator.UIViewControllerType, context:
                                        UIViewControllerRepresentableContext<ARViewIndicator>) { }
}



class ARView: UIViewController, ARSCNViewDelegate {
    
    var arView: ARSCNView {
        return self.view as! ARSCNView
    }
    override func loadView() {
        self.view = ARSCNView(frame: .zero)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Set the view's delegate
        arView.delegate = self
        
    
        // Show statistics such as fps and timing information
        //arView.showsStatistics = true
        //Do not require statistics covers options
        let e = EchoAR();
        let scene = SCNScene()
        
        e.loadAllNodes(){ (nodes) in
            for node in nodes{
                var newScale:SCNVector3
                newScale = SCNVector3(x: 20, y:20, z:20)
                node.scale = newScale
                scene.rootNode.addChildNode(node);
            }
            
            arView.scene = scene
            
            
        }
    }
    
    // MARK: - Functions for standard AR view handling
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let configuration = ARWorldTrackingConfiguration()
        arView.session.run(configuration)
        arView.delegate = self
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        arView.session.pause()
    }
    // MARK: - ARSCNViewDelegate
    func sessionWasInterrupted(_ session: ARSession) {}
    
    func sessionInterruptionEnded(_ session: ARSession) {}
    func session(_ session: ARSession, didFailWithError error: Error)
    {}
    func session(_ session: ARSession, cameraDidChangeTrackingState
                    camera: ARCamera) {}
    
}


