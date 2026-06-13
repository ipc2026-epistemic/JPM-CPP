(define
    (problem amc_1_from_epddl)
    (:domain muddy_children)

    (:agents
        child1 child2 child3 child4 child5 - children
    )

    (:objects
    )

    (:init
        (assign (muddy child1) 't')
        (assign (muddy child2) 't')
        (assign (muddy child3) 't')
        (assign (muddy child4) 'f')
        (assign (muddy child5) 'f')
        (assign (asked child1) 'not_asked')
        (assign (asked child2) 'not_asked')
        (assign (asked child3) 'not_asked')
        (assign (asked child4) 'not_asked')
        (assign (asked child5) 'not_asked')
    )

    (:goal (and
        (= (@ep ("+ b [child1]") (= (muddy child1) 't')) ep.true)
    ))

    (:ranges
        (muddy enumerate ['t','f'])
        (asked enumerate ['not_asked','yes','no'])
    )

    (:rules
    )
)
