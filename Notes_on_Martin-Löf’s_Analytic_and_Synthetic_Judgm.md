# Notes on Martin-Löf’s *Analytic and Synthetic Judgments in Type Theory:* 
Potential subtitles:

-  *Type Theory and the Analytic a Posteriori*
-  *Proof and Existence*
- *Constructing Certain Realities*
- Type Theory is a Transcendental Logic


---

# Audiences and Aim
| Audience                                                                                                     | Aim                                                                                                                                                                                                                                                                                                                               |
| ------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Readers with a philosophical background                                                                      | Clue them in to important developments in (proof-theoretic) computer science and logic.                                                                                                                                                                                                                                           |
| Readers with a CS background                                                                                 | Clue them in to the important philosophical foundations of exciting novel developments in their field.                                                                                                                                                                                                                            |
| Readers (relatively) well-versed in the continental traditional and concerned with the problem of technology | Pose the challange: if ML deals with one tiny sliver of a modern analogue to Kant’s critical philosophy, and its been so effective and significant, where else should we expect to see important developments that can be seen as modern analogues?<br><br>Also, what are the essential limitations of any such modern analogues? |

# Thesis Candidates

While it is justifiable to put Martin-Lof’s type theory in dialogue with Kant’s project for a transcendental logic, it cannot itself be a transcendental logic. At best, it could be that part of a transcendental logic that pertains to giving a formal grounding for the possibility fo mathematical cognitions. We can look to Girard’s work on Linear Logic and the Geometry of Interaction for leads on how a more encompassing pursuit of contemporary transcendental logic might be developed. Of special importance is the fact that Girard’s project of transcendental syntax explicitly address the special and temporal aspects essential to any formal notation.

# Draft 2

 

## Outline (WIP)
[ ] Rework/clean up material in accordance with the new outline @shon f

New Outline

1. Intro
    1. Motivation
        1. Kant’s relevance for type theory: ML and Girard
2. Summary and exegesis of Martin-Lof’s Paper
3. Summary of Kant’s Tables of Judgments and Categories
4. Implications if Martin-Lof’s claim holds
    1. Type-theoretic programming as formalized transcendental logic
        1. 5 + 7 = 12 analyzed via type theoretic formalization
    2. Informal transcendental logic as a formalization of transcendental idealism
5. Critique of Martin-Lof’s claim
    1. Integration of [+Response to Martin-Löf on Analytic and Synthetic Judgements](https://paper.dropbox.com/doc/Response-to-Martin-Lof-on-Analytic-and-Synthetic-Judgements-bMhw3sgk3A4DcXhWKsOZl)
6. Conclusion
    1. Summary
    2. Directions for Future Work


# Summary of Kant’s Tables of Judgments and Categories


## Judgments

“Judgment is … the mediate cognition of an object” (A67/B93). The mediation is through the connection of concepts. A predicate concept is related to a subject concept, which will comprehend certain intuitions (see footnote *d* on p. 205), which are themselves immediately reated to the cognized object. “All judgments are accordingly functions of unity among our representations” (A68/B93). 


[ ] @shon f Elaborate distinction

Judgments are “a faculty for thinking. Thinking is cognition through concepts” and concepts are “predicates of possible judgments”.


> The functions of the understanding can therefore all be found together if one can exhaustively exhibit the functions of unity in judgments. (A69/B94)

The so-called “table of judgments” is actually introduced as a table of “the logical functions [of unity] in judgments”. 

## The logical functions of understanding

The 


> If we abstract from all content of a judgment in general, and attend only to the mere form of the understanding in it, we find that the function of thinking in that can be brought under four titles, each of which contains under itself three moments.
# Implications if Martin-Lof’s claim holds
## The Scope of ML’s project

The first thing to note is that in the Critique of Pure Reason, Kant carries out two deductions of the categories, a *metaphysical* deduction followed by a *transcendental* deduction. The metaphysical deduction, consisting of 12 pages in the Guyer translation, concerns for the most part the "Clue to the Discovery of all Pure Concepts of the Understanding." This "Clue" sets up a mapping between the "Table of Judgements" (an exhaustive list of the forms of possible judgement) and the "Table of Categories" (an exhaustive list of concepts that can be applied a priori to objects of intuition). As Heidegger I think rightly points out, “*the table of judgement contains the indices for the number and systems of categories, but this table is not the source of their origin*” (*Phenomenological Interpretation of Kant*, 198). Which is to say, we don’t begin with “the forms of judgment of logic as it was current at his time” (Martin-Löf, 93) (or current at any given time) and then deduce from those forms of judgement what would then be the categories. Rather, the clue allows one to move by hypothesis from the judgements to the categories. If it’s the case that “the same function that gives unity to the different representations **in a judgement** also gives unity to the mere synthesis of different representations **in an intuition**” (A79/B104), then an exhaustive list of the forms of judgements can be mapped on to an exhaustive list of categories. But, a transcendental deduction, on the other hand, is “the explanation of the way in which concepts can relate to objects a priori” (A85/B117). The clue assumes this relation, whereas the deduction justifies it:


> In the **metaphysical deduction** the origin of the a priori categories in general was established through their complete coincidence with the universal logical functions of thinking, in the **transcendental deduction,** however, their possibility as a priori cognitions of objects  of an intuition in general was exhibited. (B159)

Following an exposition of the rules for generating the types of his type theory, ML claims


> If you want, you may consider what I have just been through as a modern analogue of Kant’s metaphysical deduction of the categories, or pure concepts of understanding. (92)

But no mention at all is made of the *transcendental* deduction. Following Kant’s distinction between these two deductions, this would mean that the rules of type formation in ML’s type theory may establish “the origin” of a priori cognitions, but without the transcendental complement, we are left without a demonstration of the possibility that the types generated thereby (categories) can be “a priori cognitions of objects of an intuition in general”.

Taking ML’s claim to be providing an analogue for the metaphysical deduction seriously should leave us mindful of the limits of a metaphysical deduction without a corresponding transcendental deduction. We can remark the missing term of a larger analogical structure in the following table:

| Kant’s Transcendental Logic | ML’s Type Theory           |
| --------------------------- | -------------------------- |
| metaphysical deduction      | rules for generating types |
| transcendental deduction    | **???**                    |

While ML doesn’t mention the transcendental deduction explicitly, he does nod to Kant’s transcendental idealism, and quite narrowly circumscribes the scope of his engagement with that grander project in the present essay. Exegesis of this circumscription helps to clarify the intended scope of ML’s remarks on the analogy:


> By choosing to concentrate, as I have done, on certain Kantian themes in logic and philosophy of mathematics, I certainly do not want to imply that what Kant achieved in these areas is in any way the most important of his philosophical contributions: surely, his general philosophical view point, which is to say, his transcendental idealism, is of much greater significance, but at least I wanted to show you that, even in this limited area of logic and philosophy of mathematics, he has had a very important insight, namely, in the existence of synthetic a priori judgments… (CPR, 98)

While ML acknowledges that Kant’s insight into the existence of synthetic a priori judgments was of great importance for the limited area of logic and philosophy of mathematics, we should be mindful of the fact that the demonstration of the possibility of such judgments was central to Kant’s entire enterprise.

The mission of the *Critique* is to determine whether metaphysics can be a science, and, if so, to establish its foundations. The cornerstone, and principle stumbling block, of this enterprise is proving the possibility of synthetic a prior cognitions:


> All metaphysicians are therefore solemnly and legally suspended from their occupations till they shall have satsifactorily answered the question: How are synthetic cognitions a priori possible?
> …
> It may be said that the entire transcendental philosophy, which necessarily precedes all metaphysics, is nothing but the complete solution of the problem here propounded, in systematic order and completeness. 
> (Prolegomena, 279)

In the *Prolegomena*,  Kant notes that an *analytic* exposition of the problematic and preparation for the transcendental philosophy should follow a particular sequence to “ascend” from the actual, synthetic a priori judgments which we know to exist as a matter of fact — as evidenced by the countless synthetic a priori judgments of pure maths and pure natural science — up to the general principles that prove such judgments are possible.

[ ] @shon f Describe analytic/syntehtic method


> …thus the transcendental problem will be gradually answerd by a division into four questions:
> 
> (1) How is pure mathematics possible?
> (2) How is pure natural science possible?
> (3) How is metaphysics in general possible?
> (4) How is metaphysics as a science possible?
> 
> (Prolegomena, 280)

I think we can venture to say that, insofar as ML’s type theory can be seen as a modern analogue of Kant’s transcendental logic  (or at least as a part of such a transcendental logic), it is a reasonable precaution to heed ML’s circumscription to logic and the philosophy of mathematics, and not to expect ML to do more than address question (1) (after all, that is already a lot). This is consistent with ML’s mission statement in *An intuitionistic theory of types*:


> The theory of types with which we shall be concerned is intended to be a full scale system for formalizing intuitionistic mathematics as developed, for example, in the book by Bishop 1967 [Foundations of Constructive Analysis] (1)

**Two Degrees of Transcendental Logic**

For the moment, let us grant that type theory can pertain only to logic and maths while at the sime time transcendental in the relevant sense. What is at stake in this demarcation? We can get a clearer sense for this by studying the different characterizations and concerns treated in Kant’s chapters devoted to questions (1) and (2) in the Prolegomena.

We know

**Type Theory as a Regional Transcendental Logic?**

[ ] Does ML claim type theory is a transcendental logic?

To constrain ML’s type theory thus would be to situate it as a “logic of the particular use of the understanding” which “contains the rules for correctly thinking about a certain kind of object”, namely *mathematical objects*. However, insofar as the judgments of pure mathematics are entirely synthetic a priori, and given the privileged role of mathematical cognitions in Kant’s system, such a logic would still be *transcendental*:


> since it has to do merely with the laws of the understanding and reason, but solely insofar as they are related to objects a priori and not, as in the case of general logic, to empirical as well as pure cognitions of reason without distinction. (A57/B82)

If ML’s type theory is indeed a transcendental logic, is it still possible to say that it is also a “regional transcendental logic”, which can exhibit the laws of the understanding and reason for the a priori cognition of mathematical objects, but which is too limited to approach the full aim of what we might call a “universal transcendental logic”?


> The explanation of the possibility of synthetic judgments is a problem with which general logic has nothing to do, indeed whose name it need not even know. But in a transcendental logic it is the most important business of all, and indeed the only business if the issue is the possibility of synthetic a priori judgments and likewise the conditions and the domain of their validity. (A154/B193)

Even if we grant this limitation as valid, Kant is quite explicit that the basis of mathematics itself requires a *transcendental deduction:*


> the basis of mathemathics actually is pure intuitions, which make its syntehtic and apodeictically valid poropositions posible. Hence our transcendental deduction of the concepts of space and time explains at the same time the posibility of pure mathematics. Without some such deduction its truths may be granted, but its existence could by no means be understood (Prolegomena, 29)

Thus, it seems incumbant on us to ask whether ML offers anything like a transcendental deduction to complement his metaphysical deduction. If he does, we should identify and explicit it, and, if not, we should make some remarks on what is implied by its absence.


[ ] @shon f elaborate, relocate, or remove

Perhaps, given:


> In the application of the pure concepts of understanding to possible experience the use of their synthesis is either **mathematical** or **dynamical**: for it pertains partly merely to the **intuition**, partly the **experience** of an appearance in general. (A160/B199)

In a note added in second edition, the distinction between the mathematical and dynamical is explicated in terms different kinds of combination, namely in terms of whether what is combined **belongs** together or whether is brought to gether merely through the homogeneity of their representations.


> All **combination** [Verbindung] ****(conjunctio) is either **composition** [Zsuammensetzung] (compositio) or **connection** [Verknüpfung] ****(nexus). The former is the synthesis of a manifold of what **does not necessarily** belong [gehört] **to each other**, as .e.g, the two triangles into which a square is divided by the diagonal do not of themselves necessarily belong to each other, and of such a sort is the synthesis of the **homogeneous** [Gleichartigen] in everything that can be considered **mathematically** (which synthesis can be further divided into that of **aggregation** and of **coalition** [Koalition], of which the first is directed to **extensive** magnitudes and the second to **intensive** magnitudes). The second combination (nexus) is the synthesis of that which is manifold insofar as they **necessarily** belong [gehört] **to one another**, as e.g., an accident belongs to some substance, or the effect to the cause — thus also as represented as **unhomogeneous** but yet as combined a priori, which combination, since it is not arbitrary, I call **dynamical**, since it concerns the combination of the **existence** of the maniforld (which can again be divided into **physical** combination of the appearances with one another and the **metaphysical**, their combination in the a priori faculty of cognition). (B201)
## Metaphysical Deduction

In order to further determine the scope of ML’s relation to the Kantian project, we clarify the distinction between a metaphysical and a transcendental deduction. Let us begin with the metaphsycial.

For Kant, the medium enabling synthetic a priori cognition is “the form of sensibility” (Prolegomena, 27), which he will locate in the pure intuitions of space and time. I suspect that ML’s (generalized) analog for this is the intuitionistic theory of set-formation, which is to say the pure intuition of a determinate collection.

Kant writes


> Now, the intuitions which pure mathematics lays at the foundations of all its cognitions and judgments which appear at once apodeictic and necessary are space and time. For mathematics must first present all its concepts in intuition, and pure mathematics in pure intution, i.e., it must construct them.
> ….
> Geometry is based upon the pure intution of space. Arithmetic attains its concepts of numbers by the successive addition of units in time…
> 
> (Prolegomena, 283)

In *An intuitionistic theory of types*, under the heading of “Mathematical objects and their types”, ML writes 


> We shall think of mathematical objects or constructions.  Every mathematical object is of a certain kind of type. Better, a mathematical object is always given together with its type, that is, it is not just an object, it is an object of a certain type. This may be regarded as a simpler and at the same time more general formulation of Russell’s 1903 doctrine of types, according to which a type is the range of significance of a propositional function, because in the theory I am about to describe every propositional function will indeed have a type as its domain. A type is defined by prescribing what we have to do in order to construct an object of that type. This is almost verbatim the definition of the notion of set given by Bishop 1967. (2)

Consulting Bishop’s *Foundations of Constructive Analysis,* an apparent circularity arrises, or, at least, an apparent incongruity between the views of the thinkers in dialogue here. Bishop writes


> The primary concern of mathematics is number, and this means the positive integers. We feel about number the way Kant felt about space. The positive integers and their arithmetic are presupposed by the very nature of our intelligence and, we are tempted to believe, by the very nature of intelligence in general. The development of the positive integers from the primitive concept of the unit, the concept of adjoining a unit, and the process of mathematical induction carries complete conviction. (2)

Isn’t a number already a mathematical object? If Bishop places number at the level of the pure intuitions which serve as the formal medium for any possible appearance, then it would be impossible to give a transcendental deduction to ground pure maths, since basic mathematical objects would rather be presupposed as a form of pure intuition. However, a preliminary analysis of the foundations actually advanced by Bishop helps resolve this discrepancy.

Bishop’s description of the constructive basis of number is practically a recapitulation of Kant’s account, put pithily in the *Prolegomnea*: “Arithmetic attains its concepts of numbers by the successive addition of units in time.” Bishop puts “adjoining” where Kant has “addition” and “mathematical induction” where can  Kant has “successive … in time”. The differences are of critical importance, but for the purposes of our exegesis of ML’s essay, the key point to note is that Bishop’s “constructivist propaganda” (ix) understands itself to be pursuing a Kantian project.  ML explicitly takes up (and extends) this project by reflecting it back into a novel blend of computational and logical calculi.


[ ] @shon f  compare with Kant’s discussion of intensive magnitudes…

The key aspect of Bishop’s basis is arguably (and contra his own emphasis) the computational basis. In Bishop’s foundations


> Everything attaches itself to number, and every mathematical statement ultimately expresses the fact that if we perform certain computations within the set of positive integers, we shall get certain results. (2-3)

In the case of modern type theories, we might say that the medium of computation is moved from the natural numbers to the lambda calculus, but the critical part remains: “every mathematical statement ultimately expresses that if we peform certain computations … we shall get certain results”.

Bishop’s concept of a *set it he very same concept ML takes for his types:*


> A set is not an entity which has an ideal existence. A set exists only when it has been defined. To define a set we prescribe, at least implicitly, what we (the constructing intelligence) must do in order to construct an element of the set, and what we must do to show that two elements of the set are equal. A similar remark applies to the definition of a function: in order to define a function from a set A to a set B, we prescribe a finite routine which leads from an element of A to an element of B, and show that equal elements of A give rise to equal elements of B. (3)


[ ] Who maintained this before kant? @shon f 


[ ] @shon f Incorporate relevant parts of https://shonfeder.github.io/themata/types.html (on Genealogy

In the *Prolegomena,* it is *existence* that moves us into the realm of pure natural science. Maths is just intuitable concepts, but as soon as we make the existential claims, then we need a way of securing the existence of things.


## Transcendental Deduction

If it’s the case that “the same function that gives unity to the different representations **in a judgment** also gives unity to the mere synthesis of different representations **in an intuition**” (A79/B104), then an exhaustive list of the forms of judgments can be mapped on to an exhaustive list of categories. But, a transcendental deduction, on the other hand, is “the explanation of the way in which concepts can relate to objects a priori” (A85/B117). [#REF1]

In the prolegomena, Kant presents the tables only in the section on natural science (pp 46-7). He considers he claims about space and time sufficient for a transcendental deduction of maths. This priority seems to altered in M-L’s essay.

In the *Prolegomena*, Kant presents a sketch of how “a judgment of perception can become a judgment of experience”. Kant takes as example the utterance “the air is elastic”: “this judgment is as yet a judgment of perception only — I do nothing but refer two sensations in my senses to one another. But if I would have it called a judgment of experience, I require this connection to stand under a condition which makes it universally valid. I desire therefore that I and everybody else should always necessarily connect the same perceptions under the same circumstances” (300). Judgments of perception only connect representations in subjective consciousness “it is merely a connection of perceptions in my mental state, without reference to an object” (Cf. Frege’s *Inhaltsstreich*). In such subjective association of representations, “there arises no universal validity and necessity, by virtue of which alone consciousness can become objectively valid and be called experience” (44). Judgments of experience arise when “the given intuition is subsumed under a concept which determines the form of judging in general with regard to intuition, connects the empirical consciousness of the intuition in consciousness in general, and thereby procures universal validity for empirical judgments.  A concept of this nature is a pure *a priori* concept of the understanding, which does nothing but determine for an intuition the general way in which it can be used for judging .” (300).

Recapitulating: a judgment of perception only associates two representations:  e.g., judgment “the air is elastic” associates the representation of “air” with the representation of “elastic”. To raise a judgment of perception to a judgment of experience, we must subsume the intuition under a pure *a priori* concept of the understanding, i.e., a category of the understanding. The entire effect of this subsumption is to “determine for an intuition the general way in which it can be used for judging.”

How does this occur? Kant illustrates how to lift the judgment of perception “the air is elastic”  into a judgment of experience by subsuming it under the category of “causation”. “Let the [category] be cause: then it determines the intuition which is subsumed under it, e.g., that of air, with regard to judging in general, viz., the concept of air as regards its expansion serves in the relation of antecedent to consequent in a hypothetical judgment” (300). We can nail the mechanics of this lift down better by attending to the “easier example” provided in a footnote:


> when the sun shines on the stone, it grows warm. This judgment, however often I and others may have perceived it, is a mere judgment of perception and contains no necessity; perceptions are only usually conjoined in this manner. But if I say: the sun warms the stone, I add to the perception a concept of the understanding, viz., that of cause, which necessarily connects wit the concept of sunshine that of heat, and the synthetic judgment becomes of necessity universally valid, viz., objective, and is converted from a perception into experience.


[ ] @shon f draw the connection  to type judgments, and point out how exactly the causal staement is a judgment of subsumption stating a hypothetial

Roughly


    s : Sun & t : Stone >> Shine(s, t) -> Warm(t) : Sun `warms` Stone


> To prove, then, the possibility of experience so far as it rests upon pure a priori concepts of the understanding, we must first represent what belongs to judgments in general and the various moments (functions) of the understanding in them, in a complete table. For the pure concepts of the understanding must run parallel to these moments, inasmuch as such concepts are nothing more than concepts of intuitions in general, so far as these are determined by one or the other of these moments of judging, in themselves, i.e., necessarily and universally. Hereby also the a priori principles of the possibility of all experience, as objectively valid empirical cognition, will be precisely determined. **For they are nothing propositions which susbume all perception under those pure concepts of the understanding.** (303)
> [emphasis added]

Perhaps a transcendental deduction for intuitionistic type theory would be a consciousness programmed in the type theory ? Since the evidence for the propositions is the synthesis of the proposition with the object that proves it, a proof,  which is to representations that fell under the concepts of the categories, would be the functions that structure representations into objects of experience. This is not to take a position on whether such a deduction would be possible.

An implication of this view is that the task of a transcendental deduction becomes incomperably more difficult than the few pages of that constitute the transcendental deduction in Kant’s CPR.

What is sought in the transcendental deduction?


> The transcendental deduction of all a priori concepts therefore has a principle towards which the entire investigation must be directed, namely this: that they must be recognized as a priori conditions of the possibility of experiences (A94/B127)
##  
## What are the *Pure Concepts* or *Categories?*

Kant:


> The same function that gives unity to the different representations **in a judgment** also gives unity to the mere synthesis of different representations **in an intuition**, ****which, expressed generally, is called the pure concept of understanding. … (A78/B105)


> I will merely precede this with the **explanation of the categories.** They are concepts of an object in general, by means of which its intuition is regarded as **determined** with regard to one of the **logical functions** for judgments. (A95/B128)

To enumerate: 

-  A category is *a concept of an object on general*.
-  These concepts are *a means of regarding an intuition of the object as determined in a certain way.*
- what is determined is a characteristic of the *logical functions used in judgments*

Kant gives an example:


> Thus, the function of the **categorical** judgment was that of the relationship of the subject to the predicate, e.g., “All bodies are divisible.” (A128/B128)


[ ] @shon f Finish explicating passage

*Categorical judgment* is the 
 logical function of the Subject and predicate are related via 


> Yet in regard to the merely logical use of the understanding it would remain undetermined which of these two concepts will be given the function of the subject and which will be given that of the predicate. For one can also say: “Something divisible is a body.”.

So the categorical judgment is a symmetrical relation of the connected concepts. It does not determine whether we have “S is P” or “P is S”, but just accounts for the fact that two terms can be related.


> Through the category of substance, however, if I bring the concept of a body under it, it is determined that its empirical intuition in experience must always be considered as subject, never as mere predicate; and likewise with all the other categories.

A category, e.g., substance determines *the way in which terms of a categorical judgment must be related*. 

Regarding the possible ways in which concepts can be related in a judgment, see [+Notes on Martin-Löf’s Analytic and Synthetic Judgments in Type Theory:: Analogy-of-forms-of-judgment](https://paper.dropbox.com/doc/Notes-on-Martin-Lofs-Analytic-and-Synthetic-Judgments-in-Type-Theory-Analogy-of-forms-of-judgment-5OpgihNTpq3oRdod5czoh#:uid=254544845670381845738356&amp;h2=Analogy-of-forms-of-judgment) 

----------


[ ] What would be the analog of the all important **transcendental schema** @shon f ****
[ ] Review analytic of principles (p. 278) @shon f 
# Draft 1
# Epigraphs
> There is always ambiguity, but it becomes less and less as the reader continues to read and discovers more and more of the author’s intent, modifying [their] interpretations if necessary to fit the intentions of the author as they continue to unfold. At any stage in the exposition the reader should be content if [they] can give a reasonable interpretation to account for everything the author has said. The expositor [themselves] can never fully know all the possible ramifications of [their own] definitions, and [they are] subject to the same necessity of modifying [their] interpretations, and sometimes [their] definitions as well, to conform to the dictates of experience. (Bishop 1967, 7)

**
> To adopt a particular formalized language thus involves adopting a particular theory or system of logical analysis. (This must be regarded as the essential feature of a formalized language, not the more conspicuous but theoretically less important feature that it is found convenient to replace the spelled words of most (written) natural language by single letters and various special symbols.) (Church 1956)


> Heidegger on metaphysical foundations of logic


> …the abstract behavior of functions can be expressed very well by means of $$\lambda$$-calculus. However, we also have seen that $$\lambda$$-calculus  is sometimes ‘too liberal’ to conform to our **intuitive demands** concerning functions and how they should act as input-output devices. … 
> In order to get a firmer hold on the desired behavior of functions, we will introduce types… (Nederpelt & Geuvers 2014) [bold emphasis is ours]


## Draft 1 Outline
1. Intro
    1. Lure and Hook (bold  claims + problematic)
        1. ML claims the founding judgments of his type theory are derived from the forms of judgement, just as Kant’s categories (and that these are in fact categories) (p. 23)
        2. ML claims “every synthetic judgment is grounded on an analytic judgment 
    2. Stakes (why this matters)
    3. Roadmap
        1. How to read (skip/fold sections you know (or think you know)
        2. How it’s organized (Description of this outline… way meta)
        3. Where we end up (preview of the conclusion)
2. Elements
    1. What are `analytic` vs. `synthetic` `judgments`?
        1. What are `judgments`?
            1. Kant (from CPR)
                1. Note its relation to `cognition`
            2. ML (from ITT)
                1. Note distinction from propositions
        2. What are `analytic` vs. `synthetic` judgments?
            1. What are the differentia  of `judgments`?
                1. Kant on the aspects of cognition (*Prolegomena*, 265)
                    1. The `object`
                    2. The `source`
                    3. The `kind`
                        1. characterization of `synthetic`
                        2. characterization of `analytic`
            2. ML on analytic/synthetic distinction and it’s history
    2. What is `type theory`?
        1. What is a `theory`?
            1. (Church citation from above + ?)
        2. What are `types`?
            1. Aristotelian categories
            2. Russelian roots
            3. Church’s move to functional syntax and the logic of sense
            4. ML (from ITT)
    3. Analytic and synthetic judgments in type theory
    4. Existential judgments
3. Method (?)
    1. etc …
# Intro
## Lures


> every synthetic judgment is grounded on an analytic judgment, and that the synthetic judgment is obtained by so to speak suppressing a certain part of the analytical connection. (ML 90)

This echo’s Leibniz’ conviction that all truths are necessary, and contingent truths are merely a result of subjective ignorance of the full order and nature of relations between things.

It is also in keeping with a question Kant posed in a note he wrote in his copy of the first edition of the *Critique*:


> Experience consists of judgments, but it is is to be asked whether these empirical judgments do not in the end presuppose a priori (pure) judgments. (A65/B90, footnote a)

Where  Kant posited synthetic a priori preconditions for all a posteriori judgments, ML seems to go further, positing analytic preconditions for all judgments, including synthetic a posteriori.


[ ] Expand @shon f 

Note relevance that Girard’s research program, *Transcendental Syntax* has taken its queue from the critical philosophy as well (see https://www.academia.edu/10495057/On_Trascendental_syntax_a_Kantian_program_for_logic).

## Hook
# Genealogy of the synthetic/analytic dichotomization of judgemental
| **Thinker** | **Predicate A** | **Predicate B** | **Object**   |
| ----------- | --------------- | --------------- | ------------ |
| Kant        | analytic        | synthetic       | judgments    |
| Mill        | essential       | accidental      | propositions |
| Aristotle   | essential       | accidental      | properties   |


Explanation for the connection between Kant and Mill:

The judgment ***S is P*** is:

- **analytic** *iff* *P* is an essential property of *S*
- **synthetic** *iff P* is an **accidental property of S

ML says that Mill’s formulation “hints at the heart of the matter”. Why?


## What is Kant’s theory of judgment?
[ ] Describe Kant’s theory of judgment @shon f 
# The analytic/synthetic & a posteriori/a priori distinctions

What are they distinctions in/of? These are distinctions between judgments on the basis of their justifications/evidences.

Perhaps (roughly, and not entirely correctly speaking) analytic/synthetic is a distinction in the *form* of judgments and a priori/a posteriori is a distinction in the *matter*? I.e., the former is determined based on the relations of concepts (see ML’s reference to the Humean relation of ideas/matters of fact) and the latter on the relations of intuitive content of the concepts (namely, whether the content is given purely by the form of intuition, or must be supplied by sense experience presented to intuition).


## Form of concepts
|                      | **Synthetic**                                                                                           | **Analytic**                                                                                      |
| -------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| **Characterization** | Erweiterungsurteil<br>(ampliative/extending judgments)                                                  | Erläuterungsurteil<br>(explanatory judgments)                                                     |
| **Evidental basis**  | - must go beyond what is contained entirely within the judgment in order to make it evident to yourself | - mere conceptual analysis<br>- evident in virtue of the meanings of the terms that occur in it | |



## Content of intuition


|                     | **a priori**                                                                     | **a posteriori**                                                                      |
| ------------------- | -------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| **Evidental basis** | Independent of experience (through pure intuition, the mere form of sensibility) | Dependent on experience (through the presentation of some content to our sensibility) |

## Rubric [different title?]

Is it analytic or synthetic?

- To know if it’s true, do you have to *go beyond* the meaning of the terms? (Cf. the “going over” or “going beyond” in Kafka’s parable on parables).

Is it a priori or a posteriori?


## The matrix of judgments

Note the distinction between an account of Kant’s theory and an account of ML’s account of Kant’s theory

| (*content* x *fo*rm) | **Synthetic**                                            | **Analytic**                                                                            |
| -------------------- | -------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| **a posteriori**     | Justified (evinced) by supplying an empirical experience | Justified (evinced) by the content of a given experience  and the meaning of the terms. |
| **a priori**         | Justified (evinced) through pure intuition               | Justified (evinced) by the meaning of terms                                             |

## Synthetic a priori in the realm of mathematical concepts

This point also determines (p. 89)


> Kant had this wonderful formulation … mathematische Erkenntnis durch die Konstruktion der Begriffe… which is the key to understanding the Kantian notion of a synthetic a priori judgment. \[^construction_of_concepts\] [See also B744]

What kind of key is this, and what door does it open? Is this setting us up for a mathematical reductionism, or a mathematization of cognition in general?

Notably absent is any account of or acknowledgement of the role of pure intuition and the more mysterious and problematic aspects of the synthetic a priori (that is, outside of mathematical judgements). 

Involved in this is a potential forgetting of the  ontological difference: i.e., Kant is deeply concerned with fundamental ontological  determinations, he is concerned with metaphysics. To what extent is the treatment given by ML sensitive to this “bigger” importance?

I think we can argue that ML himself is aware of this limitation (myopic nature) of his short exposition. At the very least, he indicates this when he notes that the synthetic/analytic distinction (while important) is not Kant's most significant contribution. The most significant contribution, he indicates, is probably the general notion of transcendental idealism. The concerns raised here lead to the heart of this.

Martin-Löf seems to be claiming that (some forms of) analyticity is historical, in the sense that whether an inference is seen to be analytic of synthetic is a matter of where we start our consideration from. Do we begin from the point at which a subject has both a proposition and an empirical object given to them, or only at the point where they have the proposition, but the empirical object is absent?



# Going beyond Kant

Allowing the object of experience, or an experience itself to be a part of the judgment…

Concerning his initial examples of synthetic judgments being derived from partial analytic judgments, ML acknowledges


> …this way of treating the linguistic and the nonlinguistic on a par is something which would have been alien to Kant, so I have definitely said something that goes beyond Kant now. (90)
## Judgments in Type Theory

“**The two basic forms of categorical judgments employed in type theory”**

| **Form**           | **Meaning**                                                                                                             |
| ------------------ | ----------------------------------------------------------------------------------------------------------------------- |
| $$a : \alpha$$     | “$$a$$ is an object of type $$\alpha$$”                                                                                 |
| $$a = b : \alpha$$ | “$$a$$ and $$b$$ are identical objects of type $$\alpha$$, where identity is to be understood as definitional identity” |

See *ITT* pp 4-5 for elaboration


[ ] Insert caveat somewhere explaining why give a basic-level tutorial on the notational mechanisms,  and indicating how the reader already in the know can skip it, if desired. @shon f 

Taking Church’s simple theory of types as the point of departure, Martin-Löf writes:


> the simple type structure is generated by the three rules
> 
> $$\omicron : type, \iota : type, \frac{\alpha : type \: \beta : type}{(\alpha)\beta : type}$$

These rules set out three basic patterns, which will govern all valid (simply typed) lambda terms. 


1. $$\omicron : type$$ stipulates that there is a type of *propositions* (designated by $$\omicron$$).
2.  $$\iota : type$$ stipulates that there is a type of *individuals* (designated by $$\iota$$). 
3.  $$\frac{\alpha : type \: \beta : type}{(\alpha)\beta : type}$$ gives a rule which lets us construct function *types.*

(1) and (2) stipulate *base types.* We read them to say that there is a type of propositions and there is a type of individuals, respectively. They do *not* say that these types are inhabited, i.e., that there are any things which are of type of propositions or  individuals. They just stipulate that such types are available for habitation.

The figure in (3) reads: given the things above the bar, we can derive (construct) the things below the bar. Let’s first consider the things above the bar. $$\alpha$$ and $$\beta$$ are *type variables* (variables which range over possible types). Whereas $$\omicron : type$$ stipulates that there is a type-level $$\omicron$$ designating the type of proposition, $$\alpha : type$$ only offers some undetermined type. If we only consider the available base types from (1) and (2), the only possible values for $$\alpha$$ will be $$\omicron$$ or $$\iota$$. Thus, we read the top of the bar to say, “given some $$\alpha$$ and some $$\beta$$ (which are both types)…”

The expression below the bar is the general schema for the type of functions. In more recent works, you will generally see this written $$\alpha \to \beta : type$$. This is the type of functions from some type $$\alpha$$ to some type $$\beta$$.

Thus, rule (3) reads, given any types $$\alpha$$ and $$\beta$$, we can construct the type of functions from $$\alpha$$ to $$\beta$$. 

We can then use rule (3) to construct new types. For example:

$$\frac{\iota : type \: \iota : type}{\iota \to \iota:type}$$,  $$\frac{\iota : type \: \omicron : type}{\iota \to \omicron: type}$$, $$\frac{\iota \to \omicron : type \: \omicron : type}{(\iota \to \omicron) \to \omicron : type}$$

From left to right, given the the type of individuals (taken twice), we can form the type of functions from individuals to individuals. Given the type of individuals and the type of propositions, we can form the type of functions from individual to propositions. Given the type of functions from individuals to propositions and the type of propositions, we can construct the type of functions from functions  from individuals to propositions to propositions.

**Digression on the syntax of judgments**

The lineage of the `:` notation is significant. In earlier writing, Martin-Löf uses $$\epsilon$$, which has traditionally been used for set membership 



[ ] give example @shon f 

Peano introduced $$\epsilon$$ as an abbreviation for the Latin “*est*” meaning “is” in his *Arithmetices principia, nova methodo exposita*:


> The symbol $$\mathbf{PROP}$$ means proposition.
> …
> The symbol $$\mathbf{SET}$$ means a set, or aggregate of entities.
> The symbol $$\in$$ means **is** [Signum ε significat est]. Thus $$a \: \in \: B$$ is read $$a$$ is (an element of) $$B$$; $$a \: \in \: \mathbf{SET}$$ means $$a$$ is a set; $$a \: \in \: \mathbf{PROP}$$ means $$a$$ is a proposition.


> Signo $$P$$ significatur propositio.
> …
> Signo $$K$$ significatur classis, sive entium aggregatio.
> Signum $$\epsilon$$ significat est. Ita $$a \: \epsilon \: b$$ legitur $$a$$ est quoddam $$b$$; $$a\:\epsilon\:K$$ significat $$a$$ est quaedam classis; $$a\:\epsilon\:P$$significat $$a$$ est quaedam propositio. 
> (Peano 1889, p. 44)

Note the striking similarity in theme and notation with Martin-Löf’s exposition of type theory (even in the original Latin). Most notably, his use of $$\epsilon$$ to signify both set membership, and the characterization of terms. In particular, the focus on both sets and propositions as being aggregates to which elements are attributed.

The understanding of $$\epsilon$$ as “is” was not merely a quirk of Peano’s. It persisted through the tradition in other seminal uses. Russel and Whitehead adapted Peano’s notation for *Principia Mathematica* along with the explanations Peano gives for them in the *Formulario Mathematico*. When introducing the membership operator, they echo Peano:


> The  propositional function “$$x$$ is a member of the class $$\alpha$$” will be expressed, following Peano, by the notation
> 
> $$x \: \epsilon \: \alpha.$$
> 
> Here $$\epsilon$$ is chosen as the initial of the word ἐστί. “$$x \: \epsilon \: \alpha$$” may be read “$$x$$ is an $$\alpha$$”. Thus “$$x \: \epsilon \:$$man” will mean “$$x$$ is a man, and so on. (25)

Containment as predication goes back to Aristotelian logic and persists into the modern era. Term logic was a logic of containment:


> In every proposition, the predicate is said to be in the subject, that is, the notion of the predicate is contained [involvitur] in the notion of the subject. For, in a universal affirmative proposition, when I say “every man is an animal” I mean “the concept of animal is contained in the concept of man” (for the concept of man is to be a rational animal). … And so, in a universal affirmative proposition, it is obvious that the predicate is contained in the subject considered by itself. But if the proposition is particular affirmative, then the predicate is not contained in the notion of the subject considered by itself, but in the notion of the subject with something extra dded; that is, the predicate is contained in some special case [species] of the subject. 
> (Leibniz, Samples of the Numerical Characteristic, p. 10)

The shift from $$\epsilon$$ [is (an element of)] to $$\in$$ [is in/is a member of] to $$:$$  [is/is of type] thus traces a movement out from, and back in to, an explicitly ontological concern. Along the way, the relevance of mereology becomes apparent, and we seem to end up at something akin to Husserl’s formal ontology.

It is also worth noting that Peano uses the same symbols for the the subset relation and implication, and for the false proposition and the empty set. This early parallel between the logics of propositions and sets helps demystify the Curry-Howard correspondence considerably: it is the recollection revelation of a parallel that was initially taken for granted and baked in to the ground level of modern logic. Thus, the analogy/correspondence is the reconciliation of forms which have belonged together from the beginning. It is the way of things for originary concordance be gradually forgotten through the obfuscations of novel morphological shifts (in this case novel notation). It should be noted that these differences and divergences were for all for good reasons and in pursuit of greater understanding and clearer communication.

**The Simple Theory of Types**

Church stressed the fact that the meanings of these forms were undetermined, and that he intended to leave them so.


> We purposely refrain from making more definite the nature of the types o and L, the formal theory admitting of a variety of interpretations in this regard. Of course the matter of interpretation is in any case irrelevant to the abstract construction of the theory, and indeed other and quite different interpretations are possible (formal consistency assumed). (Church 1940)

Colloquial use of “individual” may have us thinking about individual things in the everyday world. However, *absolute* individuals (in a sense true to [its etymon](https://www.etymonline.com/word/individual)) are virtually inconceivable and perhaps formally impossible. We should bear in mind that Church falls in a lineage of logical atomists (Russel and Wittgenstein), for whom the *true individual* *atoms* didn’t correspond to anything that could be encountered in the everyday world. Still, given Church’s discussion of the denotations of proper names in (Church 1956), it’s likely he *would* have been fine with interpretations of the simply typed lambda calculus in which the individuals ranged over things like dogs and dirt.


[ ] Explain “general logic”

Note, that the "simple theory of types” is not a *general logic* in the strong sense Kant intended. This follows from the fact that it makes particular distinctions regrading the domain of application; it fragments the domain into its three distinct sorts: individuals, functions, and propositions. This narrowing of the formal logistics follows Bertrand Russell’s lead. He first established type theory on the form of his ramified sets. The problems that lead to the paradox can be seen as a direct result of the attempt to use *general logic* as an “organon”: the axiom of comprehension allows the deduction of existence statements from pure concepts. As Kant warns emphatically, the use of general logic as an organon, as a tool for extending our knowledge of things that exist, inevitably leads to monstrosities. Only a material logic, such as the transcendental logic he sets out, can safely allow us to deduce existence.

**Types and (Kantian) categories**

ML claims that *types* are what Kant would have called categories, i.e., **pure concepts of understanding**. Familiarity with Kant’s definition of **categories** is likely to reveal this to be a very bold claim.

The Kantian categories, or pure concepts of the understanding, are *a priori* concepts that make objects of experience possible:


> all experience contains in addition to the intuition of the senses, through which something is given, a concept of an object that is given in intuition, or appears; hence concepts of objects in general lie at the ground of all experiential cognition as a priori conditions; consequently the objective validity of the categories, as a priori concepts, rests on the fact that through them alone is experience possible (as far as the form of thinking is concerned). (CPR 224, A93/B126)

At stake here is “how **subjective conditions of thinking** should have **objective validity**” (*CPR* 222, A 89/B122). Since experience “contains” a “concept of the object,” or alternatively, since “concepts of objects in general lie at the ground of all experiential cognition,” one might reasonably argue that Kant interprets experience itself as somehow conceptual. More to the point, it is only because the categories partially constitute experience itself that they can then apply *objectively* to that experience. 

Kantian categories therefore have a dual role insofar as they not only allow us to think about an experience (in judgements), but are actually a component of that experience itself: "the same function that gives unity to the different representations **in a judgement** also gives unity to the mere synthesis of different representations **in an intuition**, which, expressed generally, is called the pure concept of understanding" (CPR 211, A79/B105).

Questions for Martin-Löf:

1. If Martin-Löf is assigning to types the same role that categories have for Kant, to what extent do types share in this double role? That is, are types the rules in accordance to which appearances are synthesized in order to give us experience or an object of experience? (Answer: probably not)
2. 2. Toward the end of his essay, Martin-Löf comments on Kant's transcendental idealism as being "the most important of his philosophical contributions." To what extent does Martin-Löf have to also subscribe to transcendental idealism insofar as the categories require a distinction between appearances and things in themselves (categories being applicable to the former and not the latter)?

So we ask, “Can there be a type of *dog*?” A trilemma:

1. either ML is not adequately taking in to account the distinction between empirical and pure concepts (i.e. categories)
2. or, ML is breaking down the barriers,  saying that all concepts are categories,
3. or, he would *not* allow the types of dogs. In general, that empirical concepts are not types.


# Rejoining the Kantian 
## Analogy of elements (a tentative sketch):
| **Kant**                    | **Martin-Löf**           |
| --------------------------- | ------------------------ |
| intuition <: representation | element = proof : type   |
| category <: concept         | set = proposition : type |



## Analogy of the three interpretations

See


- Kant’s tables on pp. 206, 212, 285 of CPR
- And pp. 4-5 of ITT
|                | **Semantic**       | **Epistemic**       | **Ontological**     |
| -------------- | ------------------ | ------------------- | ------------------- |
| **Martin-Löf** | term:type          | proof:proposition   | element:set         |
| **Kant**       | table of judgments | table of categories | table of principles |



## Analogy of forms of judgment


> All relations of thinking in judgement are those a) of the predicate to the subject [$$a \ \epsilon \ \alpha$$] b) of the ground to the consequence [$$A \rightarrow B$$] c) between the cognition that is to be divided and all of the members of the division. In the first kind of judgment only two concepts are considered to be in relation to each other, in the second, two judgments, and in the third, several judgments. [$$A \vee B \vee C \vee \cdots$$] (B98)

The third form requires special elaboration. The disjunctive judgment is *exclusive* and *exhaustive.*


> the disjunctive judgment contains the relations of two or more propositions to one another, though not the relation of sequence, but rather that of logical opposition, insofar as the sphere of one judgment excludes that of the other, yet at the same time the relation of community, insofar as the judgments together exhaust the sphere of cognition proper; it is therefore a relation of parts the sphere of a cognition where the sphere of each part is the complement of that of the others in the sum total of the divided cognition, .e.g, “The world exists either through blind chance, or through inner necessity, or through external cause.” (B99)

This is a very close analogy for the sum types used in programming languages based on $$F\omega$$. When we define a sum type, the disjuncts exhaust all possible constructs for values of that type, they are each mutually exclusive, and eliminating a term of this type requires case analysis for each possible alternative.


**The analytic and synthetic in type theory**

pp. 93-94

This *judgement* is **analytic**:

$$a : \alpha$$

But this judgment is **synthetic**:

$$(a : \alpha) \: is \: true$$

This relates to the foundational problems of predicativity


# The Problem of Existence


> We cannot at all see why, in consequence of the existence of one thing, another must necessarily exist (Prolegomena, 3)


> …the usual form of judgement, A is true, is indeed a special case of the existential form of judgment. … The synthetic form of judgement is precisely the existential form of judgement…. So an existential judgment is synthetic in Kant’s terminology.  To see why, we have to ask ourselves, what does its evidence rest on? Is it merely on conceptual analysis, or do we have to go beyond what is contained entirely within the judgement in order to make it evident? Well, its evidence rests on a construction: you see, we arrive at an existential judgement, $$\alpha \ exists$$, say, through the construction of an object which falls under the concept $$\alpha$$, that is, through the construction of the concept, Ger. durch die Konstrukton des Begriffs, in Kantian terminology. So we clearly have to go beyond what is contained in the judgment itself, namely, to the thing that exists, in order to make an existential judgement evident, and hence it must be synthetic. (ML, 94)

See CPR A598/B626


# Questions
- Does kant end up arguing that synthetic judgments are prior to analytic?
- Is ML describing the *analytic a po*steriori? (Judgments which are analytically evident when the judgment is given together with the experience that would bear it out).
- If we *do* take in to account the most significant aspect of Kant’s contribution (the transcendental idealism, and the revolution in metaphysics and ontology), does this tell us anything about ML’s work? What can we infer about the nature of type theory, and the significance of the teeming scientific applications underway?



# Footnotes

[^*construction_of_concepts*]: *In context*

> Wenn man von einem Begriffe synthetisch urteilen soll, so muß man aus diesem Begriffe hinausgehen, und zwar zur Anschauung, in welcher er gegeben ist. Denn, bliebe man bei dem stehen, was im Begriffe enthalten ist, so wäre das Urteil bloß analytisch, und eine Erklärung des Gedanken, nach demjenigen, was wirklich in ihm enthalten ist. Ich kann aber von dem Begriffe zu der ihm korrespondierenden reinen oder empirischen Anschauung gehen, um ihn in derselben in concreto zu erwägen, und, was dem Gegenstande desselben zukommt, a priori oder a posteriori zu erkennen. Das erstere ist die rationale und mathematische Erkenntnis durch die Konstruktion des Begriffs, das zweite die bloße empirische (mechanische) Erkenntnis, die niemals notwendige und apodiktische Sätze geben kann. (B:749)


# References

Per Martin-Löf: 

- [Analytic and Synthetic Judgments in Type Theory](http://archive-pml.github.io/martin-lof/pdfs/Martin-Lof-Analytic-and-Synthetic-Judgements-in-Type-Theory.pdf) (1994)

Immanuel Kant:

- Critique of Pure Reason (Guyer translation)

Alonzo Church

- [A Formulation of the Simple Theory of Types](https://pdfs.semanticscholar.org/28bf/123690205ae5bbd9f8c84b1330025e8476e4.pdf) (1940)
- [Introduction to Mathematical Logic](https://books.google.com/books/about/Introduction_to_Mathematical_Logic.html?id=KJbKCwAAQBAJ&printsec=frontcover&source=kp_read_button#v=onepage&q&f=false) (1956)

Rob Nederpelt, Herman Geuvers

- [Type Theory and Formal Proof](https://books.google.com/books/about/Type_Theory_and_Formal_Proof.html?id=wzTJBAAAQBAJ&printsec=frontcover&source=kp_read_button#v=onepage&q&f=false) (2014)

Giuseppe Peano

- [Arithmetices principia, nova methodo exposita](http://Arithmetices principia, nova methodo exposita) (1889)

Bertrand Russel and Alfred North Whitehead

- [Principia Mathematica](https://www.cambridge.org/core/books/principia-mathematica-to-56/D86823EB5A76D4AEC661284AE4192F60) (1927)

G. W. Leibniz

- [Philosophical Essays](https://www.amazon.com/Leibniz-Philosophical-Essays-Hackett-Classics/dp/0872200620)
----------
# Summary of the Paper

**P1**: The Kantian distinction between and analytic and synthetic judgments has a long history stretching back and forward, before and after Kant: the heart of the matter lies in the ancient, Aristotelian distinction between *essential* and *accidental* properties. Analytic judgements ascribe essential properties to a subject, whereas synthetic judgments ascribe accidental properties to a subject.

**P2**: Martin-Löf accepts the current characterization of an analytic judgment as “one which is evident virtue of the meanings of the terms that occur in it”. Synthetic judgments,  “ampliative” judgments require additional evidence, beyond what is contained within the concepts joined in the judgments. To justify empirical judgements, some experience is added as evidence. To justify mathematical judgments, a new concept is constructed.

**P3**: Given a synthetic empirical judgment `S is P`, we require experience of an S that is P to evince its truth.  However, if we could take together the pair (an S that is P, `S is P`) as a itself a judgment — i.e., take together both the object S exhibiting the property P and the judgment that joins the concept of that property to that object — then we could consider this judgment analytic, since it would be evident by virtue merely of the terms  it contains. We can therefore consider every synthetic judgment grounded in in an analytic judgment, which comprises both the synthetic judgment together with the piece of evidence needed to evince it.

**P4**: Type theory has two basic forms of “categorical judgment”:

1. $$a : \alpha$$ — which says that $$a$$ is an object of type $$\alpha$$ (in Kantian terms, belonging to the category, or pure concept of the understanding, $$\alpha$$).
2. $$a = b : \alpha$$ — which says that $$a$$ and $$b$$ are (definitionally) identical objects of type $$\alpha$$.

**P5**: (*The technicalities are not vital for understanding the main claims of the paper*.*)* The types of type theory are constructed from given ground types together with rules for forming derivative types. There are three main divisions of types: types of collections, types of elements belonging to collections, and function types, which allow us to form types composed of other types.

*Types of collections*

In Martin-Löf’s type theory, we are given the ground type of *sets* by the axiom $$set : type$$ and postulating the “Curry-Howard correspondence”  we have the equivalence between sets and propositions, giving $$prop = set : type$$, saying that $$prop$$ and $$set$$ are the same type. 

*Types of individuals*

The types of individuals are given by a rule saying that every element of a set is itself a type:

$$\frac{A : set}{elem(A) : type}$$

“Curry-Howard correspondence” postulates the equivalence between proofs of a proposition and elements of a set: $$proof(A) = elem(A) : type$$. 

*Function types*

The special case of the rule is simple: If $$\alpha$$ is a type and $$\beta$$ is a type, then we are allowed the type $$\alpha \to \beta$$ of functions from $$\alpha$$ to $$\beta$$. Formally:

$$\frac{\alpha : type \: \beta : type}{\alpha \to \beta : type}$$

However, Martin-Löf’s type theory provides a more general rule, according to which $$\beta$$ may depend on some element of type $$\alpha$$. This lets us construct the type of functions from a value of type $$\alpha$$ to a  type $$\beta$$ which can only be constructed by making use of that value. Formally:

$$\frac{\alpha : type \: \: \: {(x : type) \atop \beta : type}}{x : \alpha \to \beta : type}$$

**P6**: The enumeration of basic types and rules for forming them is a modern analogue of Kant’s metaphysical deduction of the categories. Kant took the forms of judgment used in the logic of his time and categorized them into their different kinds. The forms of judgment we are using in logic at present can all be generated from the two ground forms ($$a : \alpha$$ and $$a = b : \alpha$$) together with the rules for forming compound types. “So this is an exhaustive list of the categories that we are using in type theory at present”. (*This strongly suggests, but does not explicitly state, that this also supplies the categories that would be derived from modern logic per se. I suspect Martin-Löf just thinks his type theory is “the logic of our day”.)*

**P7:** The basic judgments of type theory ($$a : \alpha$$ and $$a = b : \alpha$$) are analytic. [Follows from the definition of a type]. Synthetic judgements appear as existential judgments about types (concepts),  which efface the evidence of the object of that type:

$$\frac{a : \alpha}{\alpha \: \: exists}$$

This reads “to know that $$\alpha$$ exists is to know an object, $$a$$, which falls under $$\alpha$$”. When the conclusion is given without the premise, we have a synthetic existential judgment. The form of judgment used implicitly in standard logic can be made explicit as $$A \: is \: true$$, and even more explicitly according to intuitionistic type theory as  $$proof(A) \: exists$$. Thus, “the usual form of judgment … is a special case of the existential form of judgment.

**P8:** To prove an existential judgment of the form $$\alpha \: exists$$ we must find or construct an object $$a$$which falls under the concept $$\alpha$$. Thus, the demonstration must go beyond what is contained in the judgment $$\alpha \: exists$$, namely to the constructed or discovered $$a$$ that exists, and it is therefor synthetic. This fits with Kant, who agreed all existential judgments were synthetic. To reiterate, the synthetic judgment is obtained by suppressing part of the analytic judgment, so the latter is the more important and basic notion.

**P9:** As a consequence, the logical laws in their usual formulation are all synthetic (a priori). This follows from the fact that the usual formulation of the logical laws all depend on arbitrary propositions being true, and $$A \: is \: true$$ is synthetic. In order to recover the analytic basis of the usual logical laws, we must construct the proofs that demonstrate their truth.

**P10:** Not all mathematical (or logical) judgments are synthetic, but all the interesting ones are. The interesting judgements are existential, and it is the mathematician’s task to construct an object that bears witness to the claimed existence. This is what the computer proof assistants based on Martin-Löf’s type theory are meant to help with.

**P11:** Logical (and computational) incompleteness and undecidability are properly understood with the help of the analytic/synthetic distinction. Gödel’s incompleteness theorem hinges on a judgment of the form $$A \: is \: true$$. As discussed, this is a special case of existential judgments, which are synthetic. The basic judgments of type theory are analytic, and so complete and decidable: their decidability is shown in the type checking algorithms at the heart of proof assistants. They are complete in that, given any basic (analytical) judgment in type theory, we can derive it from just the laws pertaining to the concepts joined in the judgment. When we move from the analytic $$a : \alpha$$ to the synthetic $$\alpha \: exists$$, we lose the given witness object $$a$$. Then, to prove the existential, must search for an object $$a$$ of type $$\alpha$$, and that search my not terminate, especially not if we are allowed to add more axioms in the course of the search.

**P12:** As important as Kant’s logic and philosophy of mathematics are, his transcendental idealism is of even greater significance. However, in the former realms he contributed the very important insight that interesting mathematical judgments are synthetic a priori, and thus, qua synthetic, requiring a construction. Kant’s formulation *mathematische Erkenntnis durch die Konstruction der Begriffe* surely influenced Brouwer, and we are justified in saying intuitionism is a development of an essentially kantian position on the foundations of mathematics.

# Resources
https://www.youtube.com/watch?v=gPAZcxAGRVs&


[https://youtu.be/gPAZcxAGRVs](https://youtu.be/gPAZcxAGRVs)



# TODOs


[ ] Add programmer-friendly syntax for all type-theory examples @shon f 
[ ] Does ML say ITT is a transcendental logic? @shon f 


## Done


[x] See $$\epsilon$$ in use from Peano to Russel to Martin-Löf in ITT @shon f 
[x] Either restructure this section or reframe the exposition so that this order works. @shon f 
[x] Short summary/paraphrase of Kantian categories @Evan K(?)
[x] @shon f review and remove the  polemical tone from discussion of Bishop

