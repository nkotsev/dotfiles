{:user {:dependencies [[slamhound "1.5.5"]
                       [com.bhauman/rebel-readline "0.1.4"]]
        :aliases {"slamhound" ["run" "-m" "slam.hound"]
                  "rebl" ["trampoline" "run" "-m" "rebel-readline.main"]}
        :plugins [[jonase/eastwood "0.3.7"]
                  [cider/cider-nrepl "0.24.0"]]}}
