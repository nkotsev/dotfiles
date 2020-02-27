{:repl {
  :repl-options {
    :init (clojure.core.server/start-server {:accept 'clojure.core.server/io-prepl
                                             :address "localhost"
                                             :port 55555
                                             :name "lein"})}}
 :user {:dependencies [[slamhound "1.5.5"]
                       [com.bhauman/rebel-readline "0.1.4"]]
        :aliases {"slamhound" ["run" "-m" "slam.hound"]
                  "rebl" ["trampoline" "run" "-m" "rebel-readline.main"]}
        :plugins [[jonase/eastwood "0.3.7"]]}}
