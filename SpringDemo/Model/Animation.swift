//
//  Animation.swift
//  SpringDemo
//
//  Created by ALEKSEY SUSLOV on 11.08.2022.
//


struct Animation {
    let preset: Preset
    let curve: Curve
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
preset: \(preset.rawValue)
curve: \(curve.rawValue)
force: \(String(format: "%.2f", force))
duration: \(String(format: "%.2f", duration))
delay: \(String(format: "%.2f", delay))
"""
    }
}

extension Animation {
    static func getRandom() -> Animation {
        Animation(preset: Preset.allCases.randomElement() ?? .shake,
                  curve: Curve.allCases.randomElement() ?? .easeIn,
                  force: Float.random(in: 0...1.5),
                  duration: Float.random(in: 0.5...1.5),
                  delay: Float.random(in: 0.5...1))
    }
}

// MARK: - enum of Presets and Curves
extension Animation {
    enum Preset: String, CaseIterable {
        case slideLeft
        case slideRight
        case slideDown
        case slideUp
        case squeezeLeft
        case squeezeRight
        case squeezeDown
        case squeezeUp
        case fadeIn
        case fadeOut
        case fadeOutIn
        case fadeInLeft
        case fadeInRight
        case fadeInDown
        case fadeInUp
        case zoomIn
        case zoomOut
        case fall
        case shake
        case pop
        case flipX
        case flipY
        case morph
        case squeeze
        case flash
        case wobble
        case swing
    }
    
    enum Curve: String, CaseIterable {
        case easeIn
        case easeOut
        case easeInOut
        case linear
        case spring
        case easeInSine
        case easeOutSine
        case easeInOutSine
        case easeInQuad
        case easeOutQuad
        case easeInOutQuad
        case easeInCubic
        case easeOutCubic
        case easeInOutCubic
        case easeInQuart
        case easeOutQuart
        case easeInOutQuart
        case easeInQuint
        case easeOutQuint
        case easeInOutQuint
        case easeInExpo
        case easeOutExpo
        case easeInOutExpo
        case easeInCirc
        case easeOutCirc
        case easeInOutCirc
        case easeInBack
        case easeOutBack
        case easeInOutBack
    }
}
