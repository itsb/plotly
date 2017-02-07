# Demonstration of plot.ly concurrency fix

    # no concurrency issue (100 parallel jobs)
    docker run -it --rm itsb/plotly:patch parallel -v -j100 ash -c "'PLOTLY_DIR=/{} /plotly.offline.example.py'" ::: {1..100}
