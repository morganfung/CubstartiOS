//
//  HW1Questions.swift
//  HW1Starter
//
//  Created by Justin Wong on 9/8/24.
//

import Foundation

class HW1Questions {
    
    // MARK: - Task 1A. File Names
    
    /// Get the file names of a certain given length, excluding the file type name.
    /// - Parameters:
    ///   - filenames: An array of file names
    ///   - count: Target length of file name (excluding the file type)
    /// - Returns: An array of file names whose excluded file type length matches `count`.
    func getFileNames(for filenames: [String], withCount count: Int) -> [String] {
        var returnArr: [String] = []
        for filename in filenames {
            let splitFilename = filename.split(separator: ".")
            if (splitFilename[0].count == count) {
                returnArr.append(filename)
            }
        }
        return returnArr
    }
    
    
    
    // MARK: - Task 1B. Escape
    
    enum Direction {
        case left
        case right
        case up
        case down
    }
    
    /// Returns a boolean if we can escape given the following list of instructions and locations.
    /// - Parameters:
    ///   - directions: An array of instructions detailing how to escape
    ///   - startingIndex: The starting index
    ///   - escapeIndex: The ending index
    /// - Returns: A boolean. True if we can escape. False otherwise.
    func canEscape(withDirections directions: [[Direction]], startingIndex: Int, escapeIndex: Int) -> Bool {
        
        
        for direction in directions {
            var copySIndex = startingIndex
            var invalid = false;
            for d in direction {
                if (d == Direction.up || d == Direction.down) {
                    invalid = true;
                    break;
                }
                else {
                    if (d == Direction.right) {
                        copySIndex += 1;
                    }
                    else {
                        copySIndex -= 1;
                    }
                }
            }
            if (invalid) {
                copySIndex = startingIndex
            }
            
            if (copySIndex == escapeIndex) {
                return true;
            }
        }
        
        return false;
    }
    
}
