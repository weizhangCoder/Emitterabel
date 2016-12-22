//
//  Emitterable.swift
//  粒子效果
//
//  Created by zhangwei on 16/12/22.
//  Copyright © 2016年 jyall. All rights reserved.
//

import UIKit

protocol Emitterable {
    
}
extension Emitterable where Self : UIViewController{
    
    func startEmittering(_ point : CGPoint)  {
        //创建发射器
        let emitter = CAEmitterLayer()
        //设置发射器的位置
        emitter.emitterPosition = point
        
        //开启三维效果
        emitter.preservesDepth = true
        //创建粒子，并设置相关属性
        
        let cell = CAEmitterCell()
        
        //设置粒子的速度
        cell.velocity = 150
        cell.velocityRange = 100
        //设置粒子的大小
        cell.scale = 0.7
        cell.scaleRange = 0.3
        //设置粒子的方向
        cell.emissionLongitude = CGFloat(-M_PI_2)
        cell.emissionRange = CGFloat(M_PI_2/3)
        //设置粒子的存活时间
        cell.lifetime = 3
        cell.lifetimeRange = 2
        //设置粒子的旋转
        cell.spin = CGFloat(M_PI_2)
        cell.spinRange = CGFloat(M_PI_2/2)
        //设置粒子的弹出个数
        cell.birthRate = 10
        //设置粒子图片
        cell.contents = UIImage(named: "hot")?.cgImage
        //将粒子放到发射器中
        emitter.emitterCells = [cell]
        
        view.layer.addSublayer(emitter)
        
    }

    
    func stopEmitter(){
        view.layer.sublayers?.filter({$0.isKind(of: CAEmitterLayer.self)}).first?.removeFromSuperlayer()
    }

}
