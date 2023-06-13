gcm () {
  # input validation
  if [ $# -ne 2 ];then
    echo "Error: the number of arguments must be 2. if you do not command name, please run 'gcm_searc_command' you can read file on command"
    return 1
  fi
  case "$1" in
    "add_a_dependency" ) icon=":heavy_plus_sign: [add a dependency] =>" ;;
    "add_analytics" ) icon=":chart_with_upwards_trend: [add analytics] => " ;;
    "add_animation" ) icon=":dizzy: [add animation] => " ;;
    "add_assets" ) icon=":bento: [add assets] =>  " ;;
    "add_business_logic" ) icon=":necktie: [add business logic] => " ;;
    "add_ci" ) icon=":construction_worker: [add ci] => " ;;
    "add_comments_in_code" ) icon=":blub: [add comments in code] => " ;;
    "add_configuration_files" ) icon=":wrench: [add configuration files] => " ;;
    "add_contributor" ) icon=":busts_in_silhouette: [add contributor] =>" ;;
    "add_development_scripts" ) icon=":hammer: [add development scripts] => " ;;
    "add_documentation" ) icon=":memo: [add documentation] => " ;;
    "add_failing_test" ) icon=":test_tube: [add failing test] =>" ;;
    "add_feature_flag" ) icon=":triangular_flag_on_post: [add feature flag] => " ;;
    "add_gitignore" ) icon=":see_no_evil: [add .gitignore] => " ;;
    "add_health_check" ) icon=":stethoscope: [add health check] => " ;;
    "add_license" ) icon=":page_facing_up: [add licence] => " ;;
    "add_logs" ) icon=":loud_sound: [add logs] =>" ;;
    "add_packages" ) icon=":package: [add packages] => " ;;
    "add_secretes" ) icon=":closed_lock_with_key: [add secrets] => " ;;
    "add_seed_files" ) icon=":seeding: [add seed files] => " ;;
    "add_snapshots" ) icon=":camera_flash: [add snapshots] => " ;;
    "add_sponsorship" ) icon=":money_with_wings: [add sponsorships] => " ;;
    "add_test" ) icon=":white_check_mark: [add test] => :" ;;
    "add_types" ) icon=":label: [add types] => " ;;
    "add_ui" ) icon=":lipstick: [add ui] => " ;;
    "add_validation_code" ) icon=":safety_vast: [add validation code] => " ;;
    "begin_a_project" ) icon=":tada: [begin a project] => " ;;
    "catch_errors" ) icon=":goal_net: [catch errors] => " ;;
    "critical_hotfix" ) icon=":ambulance: [critical hotfix] => " ;;
    "data_explotion" ) icon=":monocle_face: [data explotion] => " ;;
    "data_inspection" ) icon=":monocle_face: [data inspection] => " ;;
    "deploy_stuff" ) icon=":rocket: [deploy stuff] => " ;;
    "downgrade_dependencies" ) icon=":arrow_down: [downgrade dependencies] =>:" ;;
    "fix_a_bug" ) icon=":bug: [fix a bug] => " ;;
    "fix_ci_build" ) icon=":green_heart: [fix ci build] => " ;;
    "fix_compiler" ) icon=":rotating_light: [fix compiler] => " ;;
    "fix_for_non_critical_issue" ) icon=":adhesive_bandage: [fix for non critical issue] => " ;;
    "fix_linter" ) icon=":rotating_light: [fix linter] => " ;;
    "fix_security_issues" ) icon=":lock: [fix security issues] => " ;;
    "fix_typos" ) icon=":pencil2: [fix typos] => " ;;
    "improve_accessibility" ) icon=":wheelchair: [improve accessiblity] => " ;;
    "improve_developer_experience" ) icon=":technologist: [improve developer experience]" ;;
    "improve_performance" ) icon=":zap: [improve performance] => " ;;
    "improve_seo" ) icon=":mag: [improve seo] => " ;;
    "improve_structure" ) icon=":art: [improve structure] => " ;;
    "improve_ux" ) icon=":children_crossing: [improve ux]" ;;
    "introduce_breaking_changes" ) icon=":boom: [introduce breaking changes] => " ;;
    "introduce_new_features" ) icon=":sparkles: [introduce new features] =>" ;;
    "internationalization" ) icon=":globe_with_meridians: [internationalization] => " ;;
    "localization" ) icon=":globe_with_meridians: [localization] =>" ;;
    "make_architectual_changes" ) icon=":building_construction: [make architectual construction] => " ;;
    "merge_branches") icon=":twisted_rightwards_arrows: [merge branches]" ;;
    "mock_things" ) icon=":clown_face: [mock things] => " ;;
    "move_resources" ) icon=":truck: [move resources] => " ;;
    "pass_test" ) icon=":white_check_mark: [passtest] => :" ;;
    "perform_db_related_changes" ) icon=":card_file_box: [perform db related changes] => " ;;
    "perform_experiments" ) icon=":alembic: [perform experiments] =>" ;;
    "pin_dependencies" ) icon=":pushpin: [pin dependencies] =>" ;;
    "refactor_code" ) icon=":recycle: [refactor code] => " ;;
    "remove_a_dependency" ) icon=":heavy_minus_sign: [remove a dependency] => " ;;
    "remove_code" ) icon=":fire: [remove code] => " ;;
    "remove_dead_code" ) icon=":coffin: [remove dead code] => " ;;
    "remove_feature_flag" ) icon=":triangular_flag_on_post: [remove feature flag] => " ;;
    "remove_logs" ) icon=":mute: [remove logs] =>" ;;
    "rename_resources" ) icon=":truck: [rename resources] => " ;;
    "revert_changes" ) icon=":rewind: [revert changes] => " ;;
    "release_tags" ) icon=":bookmark: [release tags] => " ;;
    "update_a_dependency" ) icon=":heavy_plus_sign: [update a dependency] =>" ;;
    "update_analytics" ) icon=":chart_with_upwards_trend: [update analytics] => " ;;
    "update_animation" ) icon=":dizzy: [add animation] => " ;;
    "update_assets" ) icon=":bento: [update assets] =>  " ;;
    "update_business_logic" ) icon=":necktie: [update business logic] => " ;;
    "update_ci" ) icon=":construction_worker: [update ci] => " ;;
    "update_configuration_files" ) icon=":wrench: [update configuration files] => " ;;
    "update_comments_in_code" ) icon=":bulb: [update comments in code] => " ;;
    "update_development_scripts" ) icon=":hammer: [update development scripts] => " ;;
    "update_due_to_external_changes" ) icon=":alien: [update due to external changes] => " ;;
    "update_feature_flag" ) icon=":triangular_flag_on_post: [update feature flag] => " ;;
    "update_gitignore" ) icon=":see_no_evil: [update .gitignore] => " ;;
    "update_health_check" ) icon=":stethoscope: [update health check] => " ;;
    "update_licence" ) icon=":page_facing_up: [update licence] => " ;;
    "update_logs" ) icon=":loud_sound: [update logs] =>" ;;
    "update_packages" ) icon=":package: [update packages] => " ;;
    "update_seed_files" ) icon=":seeding: [update seed files] => " ;;
    "update_snapshots" ) icon=":camera_flash: [update snapshots] => " ;;
    "update_test" ) icon=":white_check_mark: [update test] => :" ;;
    "update_types" ) icon=":label: [update types] => " ;;
    "update_ui" ) icon=":lipstick: [update ui] => " ;;
    "update_validation_code" ) icon=":safety_vast: [update validation code] => " ;;
    "upgrade_dependencies" ) icon=":arrow_up: [upgrade dependencies] => " ;;
    "version_tags" ) icon=":bookmark: [version tags] => " ;;
    "work_in_progress" ) icon=":construction: [work in progress] =>" ;;
    "work_on_responsive_design" ) icon=":iphone: [work on responsive design] => " ;;
    "write_code_drunkely" ) icon=":beer: [write code drunkly] => " ;;
    "h" ) vim ~/zsh_config/data/gcm_command_commit
  esac
  commit_message="$icon $2"
  git commit -m $commit_message
}

gcm_search_command (){
  if [ $# -ne 1 ];then
    echo "ERROR: the number of input must be 1"
    exit 1
  fi
  cat ~/zsh_config/doc/gcm_command_name.txt | grep $1
}

