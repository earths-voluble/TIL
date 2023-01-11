//
//  ProfileViewController.swift
//  MemberListClone
//
//  Created by 이보한 on 2023/01/08.
//

import UIKit

final class ProfileViewController: UIViewController {


    private let profileView = ProfileView()

    var member: Member?

    override func loadView() {
        view = profileView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    private func setupData() {
        profileView.member = member
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
