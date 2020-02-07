{:repl {
  :repl-options {
    :init (clojure.core.server/start-server {:accept 'clojure.core.server/io-prepl :address "localhost" :port 55555 :name "lein"})}}
 :user {:dependencies [[slamhound "1.5.5"]]
        :aliases {"slamhound" ["run" "-m" "slam.hound"]}
        :plugins [[jonase/eastwood "0.3.7"]]}}
