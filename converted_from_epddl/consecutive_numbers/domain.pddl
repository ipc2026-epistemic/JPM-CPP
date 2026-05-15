(define
    (domain consecutive_numbers_from_epddl)

    (:types
        agent
    )

    (:functions
        (belief_state)
        (goal_reached)
    )

    (:action ann_a_b_n0__from_0_to_0
        :parameters ()
        :precondition (and
            (= (belief_state) 0)
        )
        :effect (and
            (assign (belief_state) 0)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_a_b_n1__from_0_to_0
        :parameters ()
        :precondition (and
            (= (belief_state) 0)
        )
        :effect (and
            (assign (belief_state) 0)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_a_b_n2__from_0_to_0
        :parameters ()
        :precondition (and
            (= (belief_state) 0)
        )
        :effect (and
            (assign (belief_state) 0)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_a_b_n3__from_0_to_0
        :parameters ()
        :precondition (and
            (= (belief_state) 0)
        )
        :effect (and
            (assign (belief_state) 0)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_a_b_n5__from_0_to_0
        :parameters ()
        :precondition (and
            (= (belief_state) 0)
        )
        :effect (and
            (assign (belief_state) 0)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n0__from_0_to_0
        :parameters ()
        :precondition (and
            (= (belief_state) 0)
        )
        :effect (and
            (assign (belief_state) 0)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n1__from_0_to_1
        :parameters ()
        :precondition (and
            (= (belief_state) 0)
        )
        :effect (and
            (assign (belief_state) 1)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n2__from_0_to_0
        :parameters ()
        :precondition (and
            (= (belief_state) 0)
        )
        :effect (and
            (assign (belief_state) 0)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n3__from_0_to_0
        :parameters ()
        :precondition (and
            (= (belief_state) 0)
        )
        :effect (and
            (assign (belief_state) 0)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n4__from_0_to_0
        :parameters ()
        :precondition (and
            (= (belief_state) 0)
        )
        :effect (and
            (assign (belief_state) 0)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n5__from_0_to_0
        :parameters ()
        :precondition (and
            (= (belief_state) 0)
        )
        :effect (and
            (assign (belief_state) 0)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_a_b_n0__from_1_to_1
        :parameters ()
        :precondition (and
            (= (belief_state) 1)
        )
        :effect (and
            (assign (belief_state) 1)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_a_b_n1__from_1_to_1
        :parameters ()
        :precondition (and
            (= (belief_state) 1)
        )
        :effect (and
            (assign (belief_state) 1)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_a_b_n2__from_1_to_2
        :parameters ()
        :precondition (and
            (= (belief_state) 1)
        )
        :effect (and
            (assign (belief_state) 2)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_a_b_n3__from_1_to_1
        :parameters ()
        :precondition (and
            (= (belief_state) 1)
        )
        :effect (and
            (assign (belief_state) 1)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_a_b_n5__from_1_to_1
        :parameters ()
        :precondition (and
            (= (belief_state) 1)
        )
        :effect (and
            (assign (belief_state) 1)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n0__from_1_to_1
        :parameters ()
        :precondition (and
            (= (belief_state) 1)
        )
        :effect (and
            (assign (belief_state) 1)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n1__from_1_to_1
        :parameters ()
        :precondition (and
            (= (belief_state) 1)
        )
        :effect (and
            (assign (belief_state) 1)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n2__from_1_to_1
        :parameters ()
        :precondition (and
            (= (belief_state) 1)
        )
        :effect (and
            (assign (belief_state) 1)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n3__from_1_to_1
        :parameters ()
        :precondition (and
            (= (belief_state) 1)
        )
        :effect (and
            (assign (belief_state) 1)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n4__from_1_to_1
        :parameters ()
        :precondition (and
            (= (belief_state) 1)
        )
        :effect (and
            (assign (belief_state) 1)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n5__from_1_to_1
        :parameters ()
        :precondition (and
            (= (belief_state) 1)
        )
        :effect (and
            (assign (belief_state) 1)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_a_b_n0__from_2_to_2
        :parameters ()
        :precondition (and
            (= (belief_state) 2)
        )
        :effect (and
            (assign (belief_state) 2)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_a_b_n1__from_2_to_2
        :parameters ()
        :precondition (and
            (= (belief_state) 2)
        )
        :effect (and
            (assign (belief_state) 2)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_a_b_n2__from_2_to_2
        :parameters ()
        :precondition (and
            (= (belief_state) 2)
        )
        :effect (and
            (assign (belief_state) 2)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_a_b_n3__from_2_to_2
        :parameters ()
        :precondition (and
            (= (belief_state) 2)
        )
        :effect (and
            (assign (belief_state) 2)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_a_b_n5__from_2_to_2
        :parameters ()
        :precondition (and
            (= (belief_state) 2)
        )
        :effect (and
            (assign (belief_state) 2)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n0__from_2_to_2
        :parameters ()
        :precondition (and
            (= (belief_state) 2)
        )
        :effect (and
            (assign (belief_state) 2)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n1__from_2_to_2
        :parameters ()
        :precondition (and
            (= (belief_state) 2)
        )
        :effect (and
            (assign (belief_state) 2)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n2__from_2_to_2
        :parameters ()
        :precondition (and
            (= (belief_state) 2)
        )
        :effect (and
            (assign (belief_state) 2)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n3__from_2_to_3
        :parameters ()
        :precondition (and
            (= (belief_state) 2)
        )
        :effect (and
            (assign (belief_state) 3)
            (assign (goal_reached) 't')
        )
    )

    (:action ann_b_a_n4__from_2_to_2
        :parameters ()
        :precondition (and
            (= (belief_state) 2)
        )
        :effect (and
            (assign (belief_state) 2)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_b_a_n5__from_2_to_2
        :parameters ()
        :precondition (and
            (= (belief_state) 2)
        )
        :effect (and
            (assign (belief_state) 2)
            (assign (goal_reached) 'f')
        )
    )

    (:action ann_a_b_n0__from_3_to_3
        :parameters ()
        :precondition (and
            (= (belief_state) 3)
        )
        :effect (and
            (assign (belief_state) 3)
            (assign (goal_reached) 't')
        )
    )

    (:action ann_a_b_n1__from_3_to_3
        :parameters ()
        :precondition (and
            (= (belief_state) 3)
        )
        :effect (and
            (assign (belief_state) 3)
            (assign (goal_reached) 't')
        )
    )

    (:action ann_a_b_n2__from_3_to_3
        :parameters ()
        :precondition (and
            (= (belief_state) 3)
        )
        :effect (and
            (assign (belief_state) 3)
            (assign (goal_reached) 't')
        )
    )

    (:action ann_a_b_n3__from_3_to_3
        :parameters ()
        :precondition (and
            (= (belief_state) 3)
        )
        :effect (and
            (assign (belief_state) 3)
            (assign (goal_reached) 't')
        )
    )

    (:action ann_a_b_n5__from_3_to_3
        :parameters ()
        :precondition (and
            (= (belief_state) 3)
        )
        :effect (and
            (assign (belief_state) 3)
            (assign (goal_reached) 't')
        )
    )

    (:action ann_b_a_n0__from_3_to_3
        :parameters ()
        :precondition (and
            (= (belief_state) 3)
        )
        :effect (and
            (assign (belief_state) 3)
            (assign (goal_reached) 't')
        )
    )

    (:action ann_b_a_n1__from_3_to_3
        :parameters ()
        :precondition (and
            (= (belief_state) 3)
        )
        :effect (and
            (assign (belief_state) 3)
            (assign (goal_reached) 't')
        )
    )

    (:action ann_b_a_n2__from_3_to_3
        :parameters ()
        :precondition (and
            (= (belief_state) 3)
        )
        :effect (and
            (assign (belief_state) 3)
            (assign (goal_reached) 't')
        )
    )

    (:action ann_b_a_n3__from_3_to_3
        :parameters ()
        :precondition (and
            (= (belief_state) 3)
        )
        :effect (and
            (assign (belief_state) 3)
            (assign (goal_reached) 't')
        )
    )

    (:action ann_b_a_n4__from_3_to_3
        :parameters ()
        :precondition (and
            (= (belief_state) 3)
        )
        :effect (and
            (assign (belief_state) 3)
            (assign (goal_reached) 't')
        )
    )

    (:action ann_b_a_n5__from_3_to_3
        :parameters ()
        :precondition (and
            (= (belief_state) 3)
        )
        :effect (and
            (assign (belief_state) 3)
            (assign (goal_reached) 't')
        )
    )

)
