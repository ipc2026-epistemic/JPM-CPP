(define
    (problem cn_5_from_epddl)
    (:domain consecutive_numbers_from_epddl)

    (:agents
        a b - agent
    )

    (:objects
    )

    (:init
        (assign (belief_state) 0)
        (assign (goal_reached) 'f')
    )

    (:goal (and
        (= (goal_reached) 't')
    ))

    (:ranges
        (belief_state integer [0,3])
        (goal_reached enumerate ['t','f'])
    )

    (:rules
    )
)
