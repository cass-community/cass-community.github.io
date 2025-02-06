---
title: The Value of a Scientific Software Ecosystem in Advancing Scientific Discovery
date: 2025-01-14
#
# teaser: 2025-01-sw-ecosystem-power/powers-of-10-transparent.png
teaser: 2025-01-sw-ecosystem-power/powers-of-10-transparent-square.png
#
authors: 
  - Michael A. Heroux
#
software_mentioned:
  - Kokkos
  - Spack
  - E4S
cass_members: 
  - PESO
  - S4PST
---

 In close collaboration with CASS and its member organizations, the PESO Project supports and evolves a **scientific software ecosystem** comprised of a large number of advanced scientific libraries and tools delivered. Building on the legacy of the U.S. [Exascale Computing Project](https://www.exascaleproject.org/), we are advancing a comprehensive, advanced scientific software ecosystem that supports researchers, developers, and computing organizations and their progress in the fast-evolving world of artificial intelligence, modeling and simulation, and high-performance computing (HPC) for scientific discovery.

## The scientific software ecosystem benefits and scale

{% capture img %}{% include hl-image-path image="2025-01-sw-ecosystem-power/powers-of-10-transparent.png" %}{% endcapture %}
{% include figure class="align-right" width="50%" popup=true image_path=img alt="Image showing a stack of software ecosystem benefits" caption="The benefits of a software ecosystem are multi-faceted and involve many technical and community advantages.  The value of the ecosystem is much more than just a collection of independent libraries and tools.  This diagram shows some of the most important benefits." %}

Defining and refining what constitutes a scientific software ecosystem is an ongoing endeavor. At its essence, this ecosystem fosters collaboration, efficiency, and innovation across a broad spectrum of scientific computing activities. Here is a breakdown of its key benefits:

- **Performance portability** At the foundation of the ecosystem is its ability to simplify cross-platform development. Tools like {% include sw-link-mention.html product="Kokkos" %} enable software teams to write code once and run it efficiently on diverse HPC systems, including GPUs from NVIDIA and AMD. This approach ensures scalability and adaptability, saving significant development time and effort.
- **Accelerated builds:** Using the {% include sw-link-mention.html product="Spack" %}/{% include sw-link-mention.html product="E4S" %} software ecosystem, developers can leverage binary caches of previously compiled builds. This innovation reduces rebuild times by a factor of 10, transforming multi-hour builds into minutes.
- **GPU-accelerated performance:** The shift to GPU-enabled computing has revolutionized scientific applications. Our ecosystem, built on lessons from the Exascale Computing Project, facilitates application reconstruction to harness GPU power, delivering 100x performance improvements compared to traditional methods.
- **Community collaboration:** A vibrant ecosystem benefits from the collective knowledge of its participants. With over 1,000 code teams contributing and utilizing libraries and tools, the ecosystem fosters knowledge sharing, innovation, and reduced redundancy.
- **Broad engagement:** Beyond developers, the ecosystem supports a diverse community engaged in training, software improvement, and community building. This collaboration ensures the preparation of the next generation of scientific software developers and users, expanding the ecosystem’s impact.
- **Code savings and quality advancements:** Leveraging established libraries and tools instead of creating custom code saves organizations hundreds of thousands or even millions of lines of code. This approach allows library and tool teams to focus on improving algorithms, interfaces, and software quality, driving scientific discovery forward.

## Going forward

Our efforts exemplify the transformative potential of a robust scientific software ecosystem. By fostering collaboration across agencies, organizations, and international partners, they are reshaping how scientific discovery is pursued. Our approach underscores the value of shared tools, community-driven innovation, and a commitment to advancing high-end computing capabilities.
As we continue to push the boundaries of scientific computing, our efforts represent a foundation for progress, ensuring that researchers and developers have the resources they need to tackle the most complex scientific challenges of our time.