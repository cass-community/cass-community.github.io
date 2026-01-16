---
title: "Exploring the Landscape of AI and ML in Compiler Development: Pros and Cons"
startdate: "2024-06-11"
time: "11:00am - 12:30pm EDT"
#
location: Online
#
type: Birds-of-a-Feather Session 
series: 
  - "CASS BoF Days"
#
venue: "2024 CASS BoF Days"
#
# Not sure which SSO(s) organized
#
# activities:
#   - "S4PST"
#
registration-url: 
#
presenters:
  - name: Johannes Doerfert
    affiliation: LLNL
  - name: Mircea Trofin
    affiliation: Google
  - name: William Moses
    affiliation: UIUC
  - name: EJ Park
    affiliation: Qualcomm
  - name: Chris Cummins 
    affiliation: Meta
  - name: Aiden Grossman
    affiliation: UC Davis
  - name: Sunita Chandrasekaran 
    affiliation: U Delaware
  - name: Gokcen Kestor
    affiliation: PNNL
#
artifacts:
  - label: Slides
    url: /assets/artifacts/cass-bof-days/CASS-BOF-2024-AIML-Compiler-Development.pdf
---
With hardware evolving rapidly and software constantly playing catch-up, finding innovative ways for software to stay ahead of the curve is becoming increasingly important. (For our BoF, we refer to “compiler” development broadly as software.) However, this is a real challenge. Integration of ML and AI into software development is one way to tackle this challenge. ML/AI-driven strategies can determine code patterns and similarities from volumes of data, thus offering deeper insights into code analysis. ML can also be used to predict longer execution times and performance bottlenecks hence reducing the manual intervention as well as the iterative process of applying optimizations. Generative AI has the potential to even automate the software testing process, where possible, provided the large language models (LLMs) are carefully trained with the “right” prompt engineering techniques for the task at hand.

As we can see, there are a myriad of ways to incorporate automation and prediction in software development. These approaches do come with caveats. The models are typically a black box, making it difficult to glean any understanding of approaches driven by AI, or the model outcomes cannot be trusted for unseen/unique code cases, or the models may lead to suboptimal outcomes or unexpected behavior if trained on insufficient or biased data and so on. How much do we rely on ML/AI models and where do we draw the line in the context of compiler development? What should be some of the best software practices that we need in place while integrating AI into traditional compiler development? How do we better train AI-driven models to assist us?
