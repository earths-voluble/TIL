//
//  ProfileView.swift
//  MemberListClone
//
//  Created by 이보한 on 2023/01/08.
//

import UIKit

final class ProfileView: UIView {
    
    var member: Member? {
        didSet {
            var member = member
            mainImageView.image = member?.memberImage
            //memberIdLabel.text = "\(member.memberId)"
            nameTextLabel.text = member?.name
            phoneNumberTextLabel.text = member?.phone
            addressTextLabel.text = member?.address
            guard let age = member?.age else {
                ageTextLabel.text = ""
                return
            }
            ageTextLabel.text = "\(age)"
        }
    }

    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .systemPink
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 75
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    lazy var imageContainView: UIView = {
        let view = UIView()
        view.addSubview(mainImageView)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let memberIdLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "멤버번호:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let memberIdTextLabel: UILabel = {
        let tl = UILabel()
        tl.frame.size.height = 22
        tl.textColor = .black
        tl.translatesAutoresizingMaskIntoConstraints = false
        return tl
    }()

    lazy var memberIdStackView: UIStackView = {
        let stview = UIStackView(arrangedSubviews: [memberIdLabel, memberIdTextLabel])
        stview.spacing = 5
        stview.axis = .horizontal
        stview.distribution = .fill
        stview.alignment = .fill
        stview.translatesAutoresizingMaskIntoConstraints = false
        return stview
    }()

    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "이       름:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let nameTextLabel: UILabel = {
        let tl = UILabel()
        tl.frame.size.height = 22
        return tl
    }()

    lazy var nameStackView: UIStackView = {
        let stview = UIStackView(arrangedSubviews: [nameLabel, nameTextLabel])
        stview.spacing = 5
        stview.axis = .horizontal
        stview.distribution = .fill
        stview.alignment = .fill
        stview.translatesAutoresizingMaskIntoConstraints = false
        return stview
    }()

    let ageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "나       이:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let ageTextLabel: UILabel = {
        let tl = UILabel()
        tl.frame.size.height = 22
        return tl
    }()

    lazy var ageStackView: UIStackView = {
        let stview = UIStackView(arrangedSubviews: [ageLabel, ageTextLabel])
        stview.spacing = 5
        stview.axis = .horizontal
        stview.distribution = .fill
        stview.alignment = .fill
        stview.translatesAutoresizingMaskIntoConstraints = false
        return stview
    }()

    let phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "전화번호:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let phoneNumberTextLabel: UILabel = {
        let tl = UILabel()
        tl.frame.size.height = 22
        return tl
    }()

    lazy var phoneNumberStackView: UIStackView = {
        let stview = UIStackView(arrangedSubviews: [phoneNumberLabel, phoneNumberTextLabel])
        stview.spacing = 5
        stview.axis = .horizontal
        stview.distribution = .fill
        stview.alignment = .fill
        stview.translatesAutoresizingMaskIntoConstraints = false
        return stview
    }()

    let addressLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "주       소:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let addressTextLabel: UILabel = {
        let tl = UILabel()
        tl.frame.size.height = 22
        return tl
    }()

    lazy var addressStackView: UIStackView = {
        let stview = UIStackView(arrangedSubviews: [addressLabel, addressTextLabel])
        stview.spacing = 5
        stview.axis = .horizontal
        stview.distribution = .fill
        stview.alignment = .fill
        stview.translatesAutoresizingMaskIntoConstraints = false
        return stview
    }()

    // 버튼 일단 생략
    // 버튼 일단 생략
    // 버튼 일단 생략
    // 버튼 일단 생략
    // 버튼 일단 생략


    lazy var stackView: UIStackView = {
        let stview = UIStackView(arrangedSubviews: [imageContainView, memberIdStackView, nameStackView, ageStackView, phoneNumberStackView, addressStackView])
        stview.spacing = 10
        stview.axis = .vertical
        stview.distribution = .fill
        stview.alignment = .fill
        stview.translatesAutoresizingMaskIntoConstraints = false
        return stview
    }()

}
