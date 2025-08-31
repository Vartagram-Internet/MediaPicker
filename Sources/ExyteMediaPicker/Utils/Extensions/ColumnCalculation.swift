//
//  Untitled.swift
//  ExyteMediaPicker
//
//  Created by Alisa Mylnikova on 25.03.2025.
//

import SwiftUI

@MainActor
func calculateColumnWidth(spacing: CGFloat) -> (CGFloat, [GridItem]) {
    let gridWidth = UIScreen.main.bounds.width
    let wholeCount = 3.0
    let noSpaces = gridWidth - spacing * (wholeCount - 1)
    let columnWidth = noSpaces / wholeCount
    let columns = Array(repeating: GridItem(.fixed(columnWidth), spacing: spacing, alignment: .top), count: Int(wholeCount))
    return (columnWidth, columns)
}
