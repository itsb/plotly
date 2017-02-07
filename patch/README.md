# Demonstration of plot.ly concurrency fix

    # major concurrency issues before patch (100 parallel jobs)
    docker run -it --rm itsb/plotly parallel -v -j100 ash -c "'PLOTLY_DIR=/{} /plotly.offline.example.py'" ::: {1..100}

    # no concurrency issue after patch (100 parallel jobs)
    docker run -it --rm itsb/plotly:patch parallel -v -j100 ash -c "'PLOTLY_DIR=/{} /plotly.offline.example.py'" ::: {1..100}
