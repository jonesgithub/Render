//
//  TaskItemComponent.swift
//  RenderTodoDemo
//
//  Created by Alex Usbergo on 27/04/16.
//  Copyright © 2016 Alex Usbergo. All rights reserved.
//

import UIKit
import Render

class TaskItemComponent: StaticComponentView {

    private var task: Task! {
        return (self.state as? Task) ?? Task()
    }
    
    /// Constructs the component tree.
    /// - Note: Must be overriden by subclasses.
    override func construct() -> ComponentNodeType {
        
        return ComponentNode<UIView>().configure({ (view) in
            view.backgroundColor = Style.Color.LightPrimary
            view.style.minDimensions.height = 62
            view.style.flexDirection = .Column
            view.style.justifyContent = .SpaceBetween
            view.style.margin = Style.Metrics.DefaultMargin
            
        }).children([
            
            ComponentNode<UILabel>().configure({ label in
                label.text = self.task.title
                label.textColor = Style.Color.PrimaryText
                label.font = Style.Typography.MediumBold
                label.style.margin = Style.Metrics.DefaultMargin
                label.style.alignSelf = .Center
                label.style.flex = Flex
            }),
            
        ])
    }
}