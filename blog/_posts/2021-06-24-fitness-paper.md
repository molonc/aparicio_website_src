---
layout: post
title: Scientists obtain real-time look at how cancers evolve
tagline: Nature paper publication from Aparicio Lab
author_handle: Daniel Lai
---

### From amoebas to zebras, all living things evolve. They change over time as pressures from the environment cause individuals with certain traits to become more common in a population while those with other traits become less common.

Cancer is no different. Within a growing tumor, cancer cells with the best ability to compete for resources and withstand environmental stressors will come to dominate in frequency. It's "survival of the fittest" on a microscopic scale.

But fitness -- how well suited any particular individual is to its environment -- isn't set in stone; it can change when the environment changes. The cancer cells that might do best in an environment saturated with chemotherapy drugs are likely to be different than the ones that will thrive in an environment without those drugs. So, predicting how tumors will evolve over time, especially in response to treatment, is a major challenge for scientists.

A new study by researchers at Memorial Sloan Kettering in collaboration with researchers at the University of British Columbia/BC Cancer in Canada suggests that one day it may be possible to make those predictions. The study, published June 23, 2021, in the journal Nature, was led by MSK computational biologist Sohrab Shah and BC Cancer breast cancer researcher Samuel Aparicio. The scientists showed that a machine-learning approach, built using principles of population genetics that describe how populations change over time, could accurately predict how human breast cancer tumors will evolve.

"Population genetic models of evolution match up nicely to cancer, but for a number of practical reasons it's been a challenge to apply these to the evolution of real human cancers," says Dr. Shah, Chief of Computational Oncology at MSK. "In this study, we show it's possible to overcome some of those barriers."

Ultimately, the approach could provide a means to predict whether a patient's tumor is likely to stop responding to a particular treatment and identify the cells that are likely to be responsible for a relapse. This could mean highly tailored treatments, delivered at the optimal time, to produce better outcomes for people with cancer.

### A Trifecta of Innovations

Three separate innovations came together to make these findings possible. The first was using realistic cancer models called patient xenografts, which are human cancers that have been removed from patients and transplanted into mice. The scientists analyzed these tumor models repeatedly over extended timeframes of up to three years, exploring the effects of platinum-based chemotherapy treatment and treatment withdrawal.

"Historically, the field has focused on the evolutionary history of a cancer from a single snapshot," Dr. Shah says. "That approach is inherently error prone. By taking many snapshots over time, we can obtain a much clearer picture."

The second key innovation was applying single-cell sequencing technology to document the genetic makeup of thousands of individual cancer cells in the tumor at the same time. A previously developed platform allowed the team to perform these operations in an efficient and automated fashion.

The final component was a machine-learning tool, dubbed fitClone, developed in collaboration with UBC statistics professor Alexandre Bouchard-Côté, which applies the mathematics of population genetics to cancer cells in the tumor. These equations describe how a population will evolve given certain starting frequencies of individuals with different fitnesses within that population.

With these innovations in place, the scientists were able to create a model of how individual cells and their offspring, or clones, will behave. When the team conducted experiments to measure evolution, they found close agreement between these data and their model.

"The beauty of this model is it can be run forwards to predict which clones are likely to expand and which clones are likely to get outcompeted," Dr. Shah says.

In other words, how the cancer will evolve is predictable.

### A Foundation for the Future

The particular types of genetic changes the team looked at are called copy number changes. These are differences in the number of particular DNA segments in cancer cells. Up until now, the significance of these sorts of changes hasn't been clear, and researchers have had doubts about their importance in cancer progression.

"Our results show that copy number changes have a measurable impact on fitness," Dr. Shah says.

For example, the scientists found that, in their mouse models, treatment of tumors with platinum chemotherapy led to the eventual emergence of drug-resistant tumor cells -- similar to what happens in patients undergoing treatment. These drug-resistant cells had distinct copy number variants.

The team wondered: What would happen to the tumor if they stopped treatment? Turns out the cells that took over the tumor in the presence of chemotherapy declined or disappeared when the chemotherapy was taken away; the drug-resistant cells were outmatched by the original drug-sensitive cells. This behavior indicates that drug resistance has an evolutionary cost. In other words, the traits that are good for resisting drugs aren't necessarily the best for thriving in an environment without those drugs.

Ultimately, Dr. Shah says, the goal is to one day be able to use this approach on blood samples to identify the particular clones in a person's tumor, predict how they are likely to evolve, and tailor medicines accordingly.

"This study is an important conceptual advance," Dr. Shah says. "It demonstrates that the fitness trajectories of cancer cells are predictable and reproducible."

### Journal Reference:

Sohrab Salehi, Farhia Kabeer, Nicholas Ceglia, Mirela Andronescu, Marc J. Williams, Kieran R. Campbell, Tehmina Masud, Beixi Wang, Justina Biele, Jazmine Brimhall, David Gee, Hakwoo Lee, Jerome Ting, Allen W. Zhang, Hoa Tran, Ciara O’Flanagan, Fatemeh Dorri, Nicole Rusk, Teresa Ruiz de Algara, So Ra Lee, Brian Yu Chieh Cheng, Peter Eirew, Takako Kono, Jenifer Pham, Diljot Grewal, Daniel Lai, Richard Moore, Andrew J. Mungall, Marco A. Marra, Gregory J. Hannon, Giorgia Battistoni, Dario Bressan, Ian Gordon Cannell, Hannah Casbolt, Atefeh Fatemi, Cristina Jauset, Tatjana Kovačević, Claire M. Mulvey, Fiona Nugent, Marta Paez Ribes, Isabella Pearsall, Fatime Qosaj, Kirsty Sawicka, Sophia A. Wild, Elena Williams, Emma Laks, Yangguang Li, Ciara H. O’Flanagan, Austin Smith, Teresa Ruiz, Daniel Lai, Andrew Roth, Shankar Balasubramanian, Maximillian Lee, Bernd Bodenmiller, Marcel Burger, Laura Kuett, Sandra Tietscher, Jonas Windhager, Edward S. Boyden, Shahar Alon, Yi Cui, Amauche Emenari, Dan Goodwin, Emmanouil D. Karagiannis, Anubhav Sinha, Asmamaw T. Wassie, Carlos Caldas, Alejandra Bruna, Maurizio Callari, Wendy Greenwood, Giulia Lerda, Yaniv Eyal-Lubling, Oscar M. Rueda, Abigail Shea, Owen Harris, Robby Becker, Flaminia Grimaldi, Suvi Harris, Sara Lisa Vogl, Joanna Weselak, Johanna A. Joyce, Spencer S. Watson, Ignacio Vázquez-Garćıa, Simon Tavaré, Khanh N. Dinh, Eyal Fisher, Russell Kunes, Nicholas A. Walton, Mohammad Al Sa’d, Nick Chornay, Ali Dariush, Eduardo A. González-Solares, Carlos González-Fernández, Aybüke Küpcü Yoldas, Neil Millar, Tristan Whitmarsh, Xiaowei Zhuang, Jean Fan, Hsuan Lee, Leonardo A. Sepúlveda, Chenglong Xia, Pu Zheng, Andrew McPherson, Alexandre Bouchard-Côté, Samuel Aparicio, Sohrab P. Shah. **Clonal fitness inferred from time-series modelling of single-cell cancer genomes.** *Nature*, 2021; DOI: [10.1038/s41586-021-03648-3](http://dx.doi.org/10.1038/s41586-021-03648-3)

From: https://www.mskcc.org/news/scientists-obtain-real-time-look-how-cancers-evolve
