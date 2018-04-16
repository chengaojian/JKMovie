//
//  ViewController.swift
//  JKLMovies
//
//  Created by 三海教育 on 2018/4/13.
//  Copyright © 2018年 JK. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var homeScrollView: UIScrollView!
    @IBOutlet weak var hotMoviesCollectionView: UICollectionView!
    @IBOutlet weak var todayMoviesTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeScrollView.delegate = self
        hotMoviesCollectionView.delegate = self
        hotMoviesCollectionView.dataSource = self
        todayMoviesTableView.delegate = self
        todayMoviesTableView.dataSource = self
    }
}

extension HomeViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView)
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hotMovieCell", for: indexPath) as! HotMovieCollectionViewCell
        let titleArray = ["女儿国", "战狼", "厉害了我的国"]
        cell.titleLabel.text = titleArray[indexPath.row]
        let timeArray = ["2018年4月11日", "2018年4月15日", "2018年4月21日"]
        cell.timeLabel.text = timeArray[indexPath.row]
        let pictureArray = ["Movie", "movie-city", "Movie"]
        cell.pictureImageView.image = UIImage(named: pictureArray[indexPath.row])
        return cell
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todayMovieCell", for: indexPath) as! TodayMovieTableViewCell
        let pictureArray = ["Movie", "movie-city", "Movie", "movie-city", "Movie"]
        cell.pictureImageView.image = UIImage(named: pictureArray[indexPath.row])
        let titleArray = ["女儿国", "战狼", "厉害了我的国", "祖宗十九代", "我的野蛮女友"]
        cell.titleLabel.text = titleArray[indexPath.row]
        let timeArray = ["2018年4月11日", "2018年4月15日", "2018年4月21日", "2018年5月10日", "2018年5月20日", ]
        cell.timeLabel.text = timeArray[indexPath.row]
        return cell
    }
}
