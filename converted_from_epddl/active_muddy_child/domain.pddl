(define
    (domain muddy_children)

    (:types
        children
    )

    (:functions
        (muddy ?c - children)
        (asked ?c - children)
    )

    (:action ask_yes
        :parameters (?i - children)
        :precondition (and
            (= (asked ?i) 'not_asked')
            (= (@ep ("+ b [?i]") (= (muddy ?i) 't')) ep.true)
        )
        :effect (and
            (assign (asked ?i) 'yes')
        )
    )

    (:action ask_no
        :parameters (?i - children)
        :precondition (and
            (= (asked ?i) 'not_asked')
            (!= (@ep ("+ b [?i]") (= (muddy ?i) 't')) ep.true)
        )
        :effect (and
            (assign (asked ?i) 'no')
        )
    )
)
