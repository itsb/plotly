# Demonstration of plot.ly concurrency issue

    # no concurrency issue (single-threaded)
    docker run -it --rm itsb/plotly parallel -j1 /plotly.offline.example.py ::: {1..100}

    # major concurrency issues (100 parallel jobs)
    docker run -it --rm itsb/plotly parallel -j100 /plotly.offline.example.py ::: {1..100}
