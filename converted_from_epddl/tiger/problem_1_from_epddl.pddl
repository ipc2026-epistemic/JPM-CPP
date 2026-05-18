(define
    (problem problem_1_from_epddl)
    (:domain tiger_from_epddl)

    (:agents
        knight - agent
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
        (belief_state integer [0,1159])
        (goal_reached enumerate ['t','f'])
    )

    (:rules
    )
)
