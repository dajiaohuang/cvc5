; EXPECT: unsat
; Exercise the Alethe ite-eq rewrite with the shipped RARE declarations.
(set-logic QF_LIRA)
(declare-fun status () Int)
(declare-fun approvals () Int)
(assert (>= approvals 1))
(assert (not (= (ite (>= approvals 1) 2 status) 2)))
(check-sat)
