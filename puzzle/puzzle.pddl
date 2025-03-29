(define (domain puzzle)
    (:requirements :strips :equality :typing
    :negative-preconditions)
    (:types num loc) 
    (:predicates
        (at ?n - num ?l - loc)
        (adjacent ?l1 ?l2 - loc)
        (empty ?l - loc))

    (:action slide
        :parameters (?n - num ?l1 ?l2 - loc)
        :precondition (and
            (empty ?l2)
            (not (empty ?l1))
            (at ?n ?l1)
            (adjacent ?l1 ?l2)
            (not (= ?l1 ?l2)))
        :effect (and
            (empty ?l1)
            (at ?n ?l2)
            (not (at ?n ?l1))
            (not (empty ?l2)))
    )
)
