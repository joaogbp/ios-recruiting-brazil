//
//  MoviesCollectionDelegate.swift
//  Movs
//
//  Created by João Gabriel Borelli Padilha on 11/11/18.
//  Copyright © 2018 João Gabriel Borelli Padilha. All rights reserved.
//

import UIKit

// MARK: - UICollectionViewDelegate
extension MoviesView: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print("-> Selected: \(indexPath.item) [\(self.presenter.interactor.getMovie(at: indexPath.item).title)]")
        self.selectedMovie(at: indexPath.item)
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if indexPath.row == self.presenter.totalMovies() - 10 { // -1
            if self.navigationItem.searchController?.searchBar.text == "" {
                self.presenter.fetchMovies()
            }
        }
    }
    
}

// MARK: - UICollectionViewDelegateFlowLayout
extension MoviesView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let padding: CGFloat =  12 // >= 10
        let collectionViewSize = collectionView.frame.size.width - (padding+16)
        let size = CGSize(width: collectionViewSize/2, height: 236)
        return size
    }
    
}
