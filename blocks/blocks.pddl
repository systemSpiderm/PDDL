(define (domain blocks)
    ( :requirements 
      :strips :typing:equality
      :universal-preconditions
      :conditional-effects
      :negative-preconditions)
    (:types physob)
    (:predicates   
        (ontable ?x - physob)
        (clear ?x - physob) 
        (on ?x ?y - physob))
  
    (:action move
        :parameters (?x ?y - physob)
        :precondition (and
            (clear ?x) 
            (clear ?y) 
            (not (on ?x ?y))
            (not (= ?x ?y)))
        :effect (and
            (not (clear ?y))
            (on ?x ?y)
            (not (ontable ?x))
            (forall (?z - physob)
                (when (on ?x ?z) (and
                    (clear ?z)
                    (not (on ?x ?z)))))
        )
    )

    (:action moveToTable
        :parameters (?x - physob)
        :precondition (and
            (clear ?x)
            (not (ontable ?x)))
        :effect (and
            (ontable ?x)
            (forall (?z - physob)
                (when (on ?x ?z) (and
                    (clear ?z)
                    (not (on ?x ?z)))))
        ) 
    )
)
