//
//  Frameworks.swift
//  PHP Monitor
//
//  Created by Nico Verbruggen on 26/01/2022.
//  Copyright © 2022 Nico Verbruggen. All rights reserved.
//

import Foundation

struct PhpFrameworks {
    
    /**
     This list should probably be reversed when checked, because some of these
     will also require either `laravel/framework` or `symfony/symfony`.
     */
    public static let DependencyList = [

        // COMMON FRAMEWORKS
        "laravel/framework" : "Laravel",
        "symfony/symfony": "Symfony",
        "laravel/lumen": "Lumen",
        
        // VARIOUS CMS
        "roots/bedrock": "Bedrock",
        "cakephp/app": "CakePHP",
        "craftcms/craft": "Craft",
        "drupal/core": "Drupal",
        "flarum/core": "Flarum",
        "tightenco/jigsaw": "Jigsaw",
        "joomla/uri": "Joomla",
        "themsaid/katana": "Katana",
        "getkirby/cms": "Kirby",
        "october/october": "OctoberCMS",
        "sculpin/sculpin": "Sculpin",
        "statamic/cms": "Statamic",
        "johnpbloch/wordpress-core": "WordPress",
        "zendframework/zendframework": "Zend",
        "zendframework/zend-mvc": "Zend"
        
        // TODO (5.1): Handle these in v5.1
        // "magento/*": "Magento",
        // "concrete5/*": "Concrete5",
        // "contao/*": "Contao",
        // "slim/*": "Slim",
    ]
    
}
