(define (problem PPT1)
    (:domain puzzle)
    (:objects l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 l15 l16 - loc
              n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 - num)
    (:init  (adjacent l1 l2) (adjacent l1 l5) (adjacent l2 l1) (adjacent l2 l6) (adjacent l2 l3) 
            (adjacent l3 l2) (adjacent l3 l4) (adjacent l3 l7) (adjacent l4 l3) (adjacent l4 l8)
            (adjacent l5 l1) (adjacent l5 l6) (adjacent l5 l9) (adjacent l6 l2) (adjacent l6 l5) (adjacent l6 l7) (adjacent l6 l10)
            (adjacent l7 l3) (adjacent l7 l6) (adjacent l7 l8) (adjacent l7 l11) (adjacent l8 l4) (adjacent l8 l7) (adjacent l8 l12)
            (adjacent l9 l5) (adjacent l9 l10) (adjacent l9 l13) (adjacent l10 l6) (adjacent l10 l9) (adjacent l10 l11) (adjacent l10 l14)
            (adjacent l11 l7) (adjacent l11 l10) (adjacent l11 l12) (adjacent l11 l15) (adjacent l12 l8) (adjacent l12 l11) (adjacent l12 l16)
            (adjacent l13 l9) (adjacent l13 l14) (adjacent l14 l10) (adjacent l14 l13) (adjacent l14 l15)
            (adjacent l15 l11) (adjacent l15 l14) (adjacent l15 l16) (adjacent l16 l12) (adjacent l16 l15)
            (at n14 l1) (at n10 l2) (at n6 l3) (empty l4) (at n4 l5) (at n9 l6) (at n1 l7) (at n8 l8) 
            (at n2 l9) (at n3 l10) (at n5 l11) (at n11 l12) (at n12 l13) (at n13 l14) (at n7 l15) (at n15 l16))
    (:goal (and (at n1 l1) (at n2 l2) (at n3 l3) (at n4 l4) (at n5 l5) (at n6 l6) (at n7 l7) (at n8 l8) 
                (at n9 l9) (at n10 l10) (at n11 l11) (at n12 l12) (at n13 l13) (at n14 l14) (at n15 l15) (empty l16)))
)
; 14 10 6 0
; 4 9 1 8
; 2 3 5 11
; 12 13 7 15