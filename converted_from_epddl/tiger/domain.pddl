(define
    (domain tiger_from_epddl)

    (:types
        agent
    )

    (:functions
        (belief_state)
        (goal_reached)
    )

    (:action listen_room1__from_0_to_2
        :parameters ()
        :precondition (and
            (= (belief_state) 0)
        )
        :effect (and
            (assign (belief_state) 2)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_0_to_3
        :parameters ()
        :precondition (and
            (= (belief_state) 0)
        )
        :effect (and
            (assign (belief_state) 3)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_0_to_1
        :parameters ()
        :precondition (and
            (= (belief_state) 0)
        )
        :effect (and
            (assign (belief_state) 1)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1_to_0
        :parameters ()
        :precondition (and
            (= (belief_state) 1)
        )
        :effect (and
            (assign (belief_state) 0)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1_to_5
        :parameters ()
        :precondition (and
            (= (belief_state) 1)
        )
        :effect (and
            (assign (belief_state) 5)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_1_to_6
        :parameters ()
        :precondition (and
            (= (belief_state) 1)
        )
        :effect (and
            (assign (belief_state) 6)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1_to_4
        :parameters ()
        :precondition (and
            (= (belief_state) 1)
        )
        :effect (and
            (assign (belief_state) 4)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_2_to_7
        :parameters ()
        :precondition (and
            (= (belief_state) 2)
        )
        :effect (and
            (assign (belief_state) 7)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_3_to_2
        :parameters ()
        :precondition (and
            (= (belief_state) 3)
        )
        :effect (and
            (assign (belief_state) 2)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_3_to_8
        :parameters ()
        :precondition (and
            (= (belief_state) 3)
        )
        :effect (and
            (assign (belief_state) 8)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_4_to_1
        :parameters ()
        :precondition (and
            (= (belief_state) 4)
        )
        :effect (and
            (assign (belief_state) 1)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_4_to_10
        :parameters ()
        :precondition (and
            (= (belief_state) 4)
        )
        :effect (and
            (assign (belief_state) 10)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_4_to_11
        :parameters ()
        :precondition (and
            (= (belief_state) 4)
        )
        :effect (and
            (assign (belief_state) 11)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_4_to_9
        :parameters ()
        :precondition (and
            (= (belief_state) 4)
        )
        :effect (and
            (assign (belief_state) 9)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_5_to_12
        :parameters ()
        :precondition (and
            (= (belief_state) 5)
        )
        :effect (and
            (assign (belief_state) 12)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_5_to_13
        :parameters ()
        :precondition (and
            (= (belief_state) 5)
        )
        :effect (and
            (assign (belief_state) 13)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_6_to_14
        :parameters ()
        :precondition (and
            (= (belief_state) 6)
        )
        :effect (and
            (assign (belief_state) 14)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_6_to_5
        :parameters ()
        :precondition (and
            (= (belief_state) 6)
        )
        :effect (and
            (assign (belief_state) 5)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_6_to_15
        :parameters ()
        :precondition (and
            (= (belief_state) 6)
        )
        :effect (and
            (assign (belief_state) 15)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_7_to_2
        :parameters ()
        :precondition (and
            (= (belief_state) 7)
        )
        :effect (and
            (assign (belief_state) 2)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_7_to_17
        :parameters ()
        :precondition (and
            (= (belief_state) 7)
        )
        :effect (and
            (assign (belief_state) 17)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_7_to_18
        :parameters ()
        :precondition (and
            (= (belief_state) 7)
        )
        :effect (and
            (assign (belief_state) 18)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_7_to_16
        :parameters ()
        :precondition (and
            (= (belief_state) 7)
        )
        :effect (and
            (assign (belief_state) 16)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_8_to_3
        :parameters ()
        :precondition (and
            (= (belief_state) 8)
        )
        :effect (and
            (assign (belief_state) 3)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_8_to_20
        :parameters ()
        :precondition (and
            (= (belief_state) 8)
        )
        :effect (and
            (assign (belief_state) 20)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_8_to_21
        :parameters ()
        :precondition (and
            (= (belief_state) 8)
        )
        :effect (and
            (assign (belief_state) 21)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_8_to_19
        :parameters ()
        :precondition (and
            (= (belief_state) 8)
        )
        :effect (and
            (assign (belief_state) 19)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_9_to_4
        :parameters ()
        :precondition (and
            (= (belief_state) 9)
        )
        :effect (and
            (assign (belief_state) 4)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_9_to_23
        :parameters ()
        :precondition (and
            (= (belief_state) 9)
        )
        :effect (and
            (assign (belief_state) 23)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_9_to_24
        :parameters ()
        :precondition (and
            (= (belief_state) 9)
        )
        :effect (and
            (assign (belief_state) 24)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_9_to_22
        :parameters ()
        :precondition (and
            (= (belief_state) 9)
        )
        :effect (and
            (assign (belief_state) 22)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_10_to_25
        :parameters ()
        :precondition (and
            (= (belief_state) 10)
        )
        :effect (and
            (assign (belief_state) 25)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_10_to_27
        :parameters ()
        :precondition (and
            (= (belief_state) 10)
        )
        :effect (and
            (assign (belief_state) 27)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_10_to_28
        :parameters ()
        :precondition (and
            (= (belief_state) 10)
        )
        :effect (and
            (assign (belief_state) 28)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_10_to_26
        :parameters ()
        :precondition (and
            (= (belief_state) 10)
        )
        :effect (and
            (assign (belief_state) 26)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_11_to_29
        :parameters ()
        :precondition (and
            (= (belief_state) 11)
        )
        :effect (and
            (assign (belief_state) 29)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_11_to_27
        :parameters ()
        :precondition (and
            (= (belief_state) 11)
        )
        :effect (and
            (assign (belief_state) 27)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_11_to_30
        :parameters ()
        :precondition (and
            (= (belief_state) 11)
        )
        :effect (and
            (assign (belief_state) 30)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_12_to_31
        :parameters ()
        :precondition (and
            (= (belief_state) 12)
        )
        :effect (and
            (assign (belief_state) 31)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_12_to_32
        :parameters ()
        :precondition (and
            (= (belief_state) 12)
        )
        :effect (and
            (assign (belief_state) 32)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_12_to_5
        :parameters ()
        :precondition (and
            (= (belief_state) 12)
        )
        :effect (and
            (assign (belief_state) 5)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_13_to_5
        :parameters ()
        :precondition (and
            (= (belief_state) 13)
        )
        :effect (and
            (assign (belief_state) 5)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_13_to_34
        :parameters ()
        :precondition (and
            (= (belief_state) 13)
        )
        :effect (and
            (assign (belief_state) 34)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_13_to_35
        :parameters ()
        :precondition (and
            (= (belief_state) 13)
        )
        :effect (and
            (assign (belief_state) 35)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_13_to_33
        :parameters ()
        :precondition (and
            (= (belief_state) 13)
        )
        :effect (and
            (assign (belief_state) 33)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_14_to_36
        :parameters ()
        :precondition (and
            (= (belief_state) 14)
        )
        :effect (and
            (assign (belief_state) 36)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_14_to_37
        :parameters ()
        :precondition (and
            (= (belief_state) 14)
        )
        :effect (and
            (assign (belief_state) 37)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_14_to_6
        :parameters ()
        :precondition (and
            (= (belief_state) 14)
        )
        :effect (and
            (assign (belief_state) 6)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_15_to_6
        :parameters ()
        :precondition (and
            (= (belief_state) 15)
        )
        :effect (and
            (assign (belief_state) 6)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_15_to_39
        :parameters ()
        :precondition (and
            (= (belief_state) 15)
        )
        :effect (and
            (assign (belief_state) 39)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_15_to_40
        :parameters ()
        :precondition (and
            (= (belief_state) 15)
        )
        :effect (and
            (assign (belief_state) 40)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_15_to_38
        :parameters ()
        :precondition (and
            (= (belief_state) 15)
        )
        :effect (and
            (assign (belief_state) 38)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_16_to_7
        :parameters ()
        :precondition (and
            (= (belief_state) 16)
        )
        :effect (and
            (assign (belief_state) 7)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_16_to_42
        :parameters ()
        :precondition (and
            (= (belief_state) 16)
        )
        :effect (and
            (assign (belief_state) 42)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_16_to_43
        :parameters ()
        :precondition (and
            (= (belief_state) 16)
        )
        :effect (and
            (assign (belief_state) 43)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_16_to_41
        :parameters ()
        :precondition (and
            (= (belief_state) 16)
        )
        :effect (and
            (assign (belief_state) 41)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_17_to_31
        :parameters ()
        :precondition (and
            (= (belief_state) 17)
        )
        :effect (and
            (assign (belief_state) 31)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_17_to_44
        :parameters ()
        :precondition (and
            (= (belief_state) 17)
        )
        :effect (and
            (assign (belief_state) 44)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_18_to_36
        :parameters ()
        :precondition (and
            (= (belief_state) 18)
        )
        :effect (and
            (assign (belief_state) 36)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_18_to_17
        :parameters ()
        :precondition (and
            (= (belief_state) 18)
        )
        :effect (and
            (assign (belief_state) 17)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_18_to_45
        :parameters ()
        :precondition (and
            (= (belief_state) 18)
        )
        :effect (and
            (assign (belief_state) 45)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_19_to_8
        :parameters ()
        :precondition (and
            (= (belief_state) 19)
        )
        :effect (and
            (assign (belief_state) 8)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_19_to_47
        :parameters ()
        :precondition (and
            (= (belief_state) 19)
        )
        :effect (and
            (assign (belief_state) 47)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_19_to_48
        :parameters ()
        :precondition (and
            (= (belief_state) 19)
        )
        :effect (and
            (assign (belief_state) 48)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_19_to_46
        :parameters ()
        :precondition (and
            (= (belief_state) 19)
        )
        :effect (and
            (assign (belief_state) 46)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_20_to_32
        :parameters ()
        :precondition (and
            (= (belief_state) 20)
        )
        :effect (and
            (assign (belief_state) 32)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_20_to_49
        :parameters ()
        :precondition (and
            (= (belief_state) 20)
        )
        :effect (and
            (assign (belief_state) 49)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_21_to_37
        :parameters ()
        :precondition (and
            (= (belief_state) 21)
        )
        :effect (and
            (assign (belief_state) 37)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_21_to_20
        :parameters ()
        :precondition (and
            (= (belief_state) 21)
        )
        :effect (and
            (assign (belief_state) 20)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_21_to_50
        :parameters ()
        :precondition (and
            (= (belief_state) 21)
        )
        :effect (and
            (assign (belief_state) 50)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_22_to_9
        :parameters ()
        :precondition (and
            (= (belief_state) 22)
        )
        :effect (and
            (assign (belief_state) 9)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_22_to_51
        :parameters ()
        :precondition (and
            (= (belief_state) 22)
        )
        :effect (and
            (assign (belief_state) 51)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_22_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 22)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_23_to_53
        :parameters ()
        :precondition (and
            (= (belief_state) 23)
        )
        :effect (and
            (assign (belief_state) 53)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_23_to_54
        :parameters ()
        :precondition (and
            (= (belief_state) 23)
        )
        :effect (and
            (assign (belief_state) 54)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_24_to_55
        :parameters ()
        :precondition (and
            (= (belief_state) 24)
        )
        :effect (and
            (assign (belief_state) 55)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_24_to_23
        :parameters ()
        :precondition (and
            (= (belief_state) 24)
        )
        :effect (and
            (assign (belief_state) 23)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_24_to_56
        :parameters ()
        :precondition (and
            (= (belief_state) 24)
        )
        :effect (and
            (assign (belief_state) 56)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_25_to_57
        :parameters ()
        :precondition (and
            (= (belief_state) 25)
        )
        :effect (and
            (assign (belief_state) 57)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_25_to_58
        :parameters ()
        :precondition (and
            (= (belief_state) 25)
        )
        :effect (and
            (assign (belief_state) 58)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_25_to_59
        :parameters ()
        :precondition (and
            (= (belief_state) 25)
        )
        :effect (and
            (assign (belief_state) 59)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_25_to_10
        :parameters ()
        :precondition (and
            (= (belief_state) 25)
        )
        :effect (and
            (assign (belief_state) 10)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_26_to_10
        :parameters ()
        :precondition (and
            (= (belief_state) 26)
        )
        :effect (and
            (assign (belief_state) 10)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_26_to_61
        :parameters ()
        :precondition (and
            (= (belief_state) 26)
        )
        :effect (and
            (assign (belief_state) 61)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_26_to_62
        :parameters ()
        :precondition (and
            (= (belief_state) 26)
        )
        :effect (and
            (assign (belief_state) 62)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_26_to_60
        :parameters ()
        :precondition (and
            (= (belief_state) 26)
        )
        :effect (and
            (assign (belief_state) 60)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_27_to_63
        :parameters ()
        :precondition (and
            (= (belief_state) 27)
        )
        :effect (and
            (assign (belief_state) 63)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_27_to_65
        :parameters ()
        :precondition (and
            (= (belief_state) 27)
        )
        :effect (and
            (assign (belief_state) 65)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_27_to_64
        :parameters ()
        :precondition (and
            (= (belief_state) 27)
        )
        :effect (and
            (assign (belief_state) 64)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_28_to_66
        :parameters ()
        :precondition (and
            (= (belief_state) 28)
        )
        :effect (and
            (assign (belief_state) 66)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_28_to_65
        :parameters ()
        :precondition (and
            (= (belief_state) 28)
        )
        :effect (and
            (assign (belief_state) 65)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_28_to_67
        :parameters ()
        :precondition (and
            (= (belief_state) 28)
        )
        :effect (and
            (assign (belief_state) 67)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_29_to_68
        :parameters ()
        :precondition (and
            (= (belief_state) 29)
        )
        :effect (and
            (assign (belief_state) 68)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_29_to_69
        :parameters ()
        :precondition (and
            (= (belief_state) 29)
        )
        :effect (and
            (assign (belief_state) 69)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_29_to_70
        :parameters ()
        :precondition (and
            (= (belief_state) 29)
        )
        :effect (and
            (assign (belief_state) 70)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_29_to_11
        :parameters ()
        :precondition (and
            (= (belief_state) 29)
        )
        :effect (and
            (assign (belief_state) 11)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_30_to_11
        :parameters ()
        :precondition (and
            (= (belief_state) 30)
        )
        :effect (and
            (assign (belief_state) 11)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_30_to_72
        :parameters ()
        :precondition (and
            (= (belief_state) 30)
        )
        :effect (and
            (assign (belief_state) 72)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_30_to_73
        :parameters ()
        :precondition (and
            (= (belief_state) 30)
        )
        :effect (and
            (assign (belief_state) 73)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_30_to_71
        :parameters ()
        :precondition (and
            (= (belief_state) 30)
        )
        :effect (and
            (assign (belief_state) 71)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_31_to_17
        :parameters ()
        :precondition (and
            (= (belief_state) 31)
        )
        :effect (and
            (assign (belief_state) 17)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_32_to_31
        :parameters ()
        :precondition (and
            (= (belief_state) 32)
        )
        :effect (and
            (assign (belief_state) 31)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_32_to_20
        :parameters ()
        :precondition (and
            (= (belief_state) 32)
        )
        :effect (and
            (assign (belief_state) 20)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_33_to_13
        :parameters ()
        :precondition (and
            (= (belief_state) 33)
        )
        :effect (and
            (assign (belief_state) 13)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_33_to_75
        :parameters ()
        :precondition (and
            (= (belief_state) 33)
        )
        :effect (and
            (assign (belief_state) 75)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_33_to_76
        :parameters ()
        :precondition (and
            (= (belief_state) 33)
        )
        :effect (and
            (assign (belief_state) 76)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_33_to_74
        :parameters ()
        :precondition (and
            (= (belief_state) 33)
        )
        :effect (and
            (assign (belief_state) 74)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_34_to_58
        :parameters ()
        :precondition (and
            (= (belief_state) 34)
        )
        :effect (and
            (assign (belief_state) 58)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_34_to_78
        :parameters ()
        :precondition (and
            (= (belief_state) 34)
        )
        :effect (and
            (assign (belief_state) 78)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_34_to_79
        :parameters ()
        :precondition (and
            (= (belief_state) 34)
        )
        :effect (and
            (assign (belief_state) 79)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_34_to_77
        :parameters ()
        :precondition (and
            (= (belief_state) 34)
        )
        :effect (and
            (assign (belief_state) 77)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_35_to_69
        :parameters ()
        :precondition (and
            (= (belief_state) 35)
        )
        :effect (and
            (assign (belief_state) 69)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_35_to_78
        :parameters ()
        :precondition (and
            (= (belief_state) 35)
        )
        :effect (and
            (assign (belief_state) 78)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_35_to_80
        :parameters ()
        :precondition (and
            (= (belief_state) 35)
        )
        :effect (and
            (assign (belief_state) 80)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_36_to_18
        :parameters ()
        :precondition (and
            (= (belief_state) 36)
        )
        :effect (and
            (assign (belief_state) 18)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_37_to_36
        :parameters ()
        :precondition (and
            (= (belief_state) 37)
        )
        :effect (and
            (assign (belief_state) 36)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_37_to_21
        :parameters ()
        :precondition (and
            (= (belief_state) 37)
        )
        :effect (and
            (assign (belief_state) 21)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_38_to_15
        :parameters ()
        :precondition (and
            (= (belief_state) 38)
        )
        :effect (and
            (assign (belief_state) 15)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_38_to_82
        :parameters ()
        :precondition (and
            (= (belief_state) 38)
        )
        :effect (and
            (assign (belief_state) 82)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_38_to_83
        :parameters ()
        :precondition (and
            (= (belief_state) 38)
        )
        :effect (and
            (assign (belief_state) 83)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_38_to_81
        :parameters ()
        :precondition (and
            (= (belief_state) 38)
        )
        :effect (and
            (assign (belief_state) 81)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_39_to_59
        :parameters ()
        :precondition (and
            (= (belief_state) 39)
        )
        :effect (and
            (assign (belief_state) 59)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_39_to_78
        :parameters ()
        :precondition (and
            (= (belief_state) 39)
        )
        :effect (and
            (assign (belief_state) 78)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_39_to_85
        :parameters ()
        :precondition (and
            (= (belief_state) 39)
        )
        :effect (and
            (assign (belief_state) 85)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_39_to_84
        :parameters ()
        :precondition (and
            (= (belief_state) 39)
        )
        :effect (and
            (assign (belief_state) 84)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_40_to_70
        :parameters ()
        :precondition (and
            (= (belief_state) 40)
        )
        :effect (and
            (assign (belief_state) 70)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_40_to_78
        :parameters ()
        :precondition (and
            (= (belief_state) 40)
        )
        :effect (and
            (assign (belief_state) 78)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_40_to_86
        :parameters ()
        :precondition (and
            (= (belief_state) 40)
        )
        :effect (and
            (assign (belief_state) 86)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_41_to_16
        :parameters ()
        :precondition (and
            (= (belief_state) 41)
        )
        :effect (and
            (assign (belief_state) 16)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_41_to_88
        :parameters ()
        :precondition (and
            (= (belief_state) 41)
        )
        :effect (and
            (assign (belief_state) 88)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_41_to_89
        :parameters ()
        :precondition (and
            (= (belief_state) 41)
        )
        :effect (and
            (assign (belief_state) 89)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_41_to_87
        :parameters ()
        :precondition (and
            (= (belief_state) 41)
        )
        :effect (and
            (assign (belief_state) 87)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_42_to_90
        :parameters ()
        :precondition (and
            (= (belief_state) 42)
        )
        :effect (and
            (assign (belief_state) 90)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_42_to_92
        :parameters ()
        :precondition (and
            (= (belief_state) 42)
        )
        :effect (and
            (assign (belief_state) 92)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_42_to_93
        :parameters ()
        :precondition (and
            (= (belief_state) 42)
        )
        :effect (and
            (assign (belief_state) 93)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_42_to_91
        :parameters ()
        :precondition (and
            (= (belief_state) 42)
        )
        :effect (and
            (assign (belief_state) 91)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_43_to_94
        :parameters ()
        :precondition (and
            (= (belief_state) 43)
        )
        :effect (and
            (assign (belief_state) 94)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_43_to_92
        :parameters ()
        :precondition (and
            (= (belief_state) 43)
        )
        :effect (and
            (assign (belief_state) 92)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_43_to_95
        :parameters ()
        :precondition (and
            (= (belief_state) 43)
        )
        :effect (and
            (assign (belief_state) 95)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_44_to_17
        :parameters ()
        :precondition (and
            (= (belief_state) 44)
        )
        :effect (and
            (assign (belief_state) 17)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_44_to_97
        :parameters ()
        :precondition (and
            (= (belief_state) 44)
        )
        :effect (and
            (assign (belief_state) 97)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_44_to_98
        :parameters ()
        :precondition (and
            (= (belief_state) 44)
        )
        :effect (and
            (assign (belief_state) 98)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_44_to_96
        :parameters ()
        :precondition (and
            (= (belief_state) 44)
        )
        :effect (and
            (assign (belief_state) 96)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_45_to_18
        :parameters ()
        :precondition (and
            (= (belief_state) 45)
        )
        :effect (and
            (assign (belief_state) 18)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_45_to_100
        :parameters ()
        :precondition (and
            (= (belief_state) 45)
        )
        :effect (and
            (assign (belief_state) 100)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_45_to_101
        :parameters ()
        :precondition (and
            (= (belief_state) 45)
        )
        :effect (and
            (assign (belief_state) 101)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_45_to_99
        :parameters ()
        :precondition (and
            (= (belief_state) 45)
        )
        :effect (and
            (assign (belief_state) 99)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_46_to_19
        :parameters ()
        :precondition (and
            (= (belief_state) 46)
        )
        :effect (and
            (assign (belief_state) 19)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_46_to_103
        :parameters ()
        :precondition (and
            (= (belief_state) 46)
        )
        :effect (and
            (assign (belief_state) 103)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_46_to_104
        :parameters ()
        :precondition (and
            (= (belief_state) 46)
        )
        :effect (and
            (assign (belief_state) 104)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_46_to_102
        :parameters ()
        :precondition (and
            (= (belief_state) 46)
        )
        :effect (and
            (assign (belief_state) 102)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_47_to_105
        :parameters ()
        :precondition (and
            (= (belief_state) 47)
        )
        :effect (and
            (assign (belief_state) 105)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_47_to_92
        :parameters ()
        :precondition (and
            (= (belief_state) 47)
        )
        :effect (and
            (assign (belief_state) 92)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_47_to_107
        :parameters ()
        :precondition (and
            (= (belief_state) 47)
        )
        :effect (and
            (assign (belief_state) 107)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_47_to_106
        :parameters ()
        :precondition (and
            (= (belief_state) 47)
        )
        :effect (and
            (assign (belief_state) 106)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_48_to_108
        :parameters ()
        :precondition (and
            (= (belief_state) 48)
        )
        :effect (and
            (assign (belief_state) 108)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_48_to_92
        :parameters ()
        :precondition (and
            (= (belief_state) 48)
        )
        :effect (and
            (assign (belief_state) 92)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_48_to_109
        :parameters ()
        :precondition (and
            (= (belief_state) 48)
        )
        :effect (and
            (assign (belief_state) 109)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_49_to_20
        :parameters ()
        :precondition (and
            (= (belief_state) 49)
        )
        :effect (and
            (assign (belief_state) 20)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_49_to_111
        :parameters ()
        :precondition (and
            (= (belief_state) 49)
        )
        :effect (and
            (assign (belief_state) 111)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_49_to_112
        :parameters ()
        :precondition (and
            (= (belief_state) 49)
        )
        :effect (and
            (assign (belief_state) 112)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_49_to_110
        :parameters ()
        :precondition (and
            (= (belief_state) 49)
        )
        :effect (and
            (assign (belief_state) 110)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_50_to_21
        :parameters ()
        :precondition (and
            (= (belief_state) 50)
        )
        :effect (and
            (assign (belief_state) 21)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_50_to_114
        :parameters ()
        :precondition (and
            (= (belief_state) 50)
        )
        :effect (and
            (assign (belief_state) 114)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_50_to_115
        :parameters ()
        :precondition (and
            (= (belief_state) 50)
        )
        :effect (and
            (assign (belief_state) 115)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_50_to_113
        :parameters ()
        :precondition (and
            (= (belief_state) 50)
        )
        :effect (and
            (assign (belief_state) 113)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_51_to_116
        :parameters ()
        :precondition (and
            (= (belief_state) 51)
        )
        :effect (and
            (assign (belief_state) 116)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_51_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 51)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_51_to_117
        :parameters ()
        :precondition (and
            (= (belief_state) 51)
        )
        :effect (and
            (assign (belief_state) 117)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_52_to_118
        :parameters ()
        :precondition (and
            (= (belief_state) 52)
        )
        :effect (and
            (assign (belief_state) 118)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_52_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 52)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_53_to_120
        :parameters ()
        :precondition (and
            (= (belief_state) 53)
        )
        :effect (and
            (assign (belief_state) 120)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_53_to_121
        :parameters ()
        :precondition (and
            (= (belief_state) 53)
        )
        :effect (and
            (assign (belief_state) 121)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_53_to_122
        :parameters ()
        :precondition (and
            (= (belief_state) 53)
        )
        :effect (and
            (assign (belief_state) 122)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_53_to_23
        :parameters ()
        :precondition (and
            (= (belief_state) 53)
        )
        :effect (and
            (assign (belief_state) 23)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_54_to_23
        :parameters ()
        :precondition (and
            (= (belief_state) 54)
        )
        :effect (and
            (assign (belief_state) 23)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_54_to_123
        :parameters ()
        :precondition (and
            (= (belief_state) 54)
        )
        :effect (and
            (assign (belief_state) 123)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_54_to_124
        :parameters ()
        :precondition (and
            (= (belief_state) 54)
        )
        :effect (and
            (assign (belief_state) 124)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_55_to_125
        :parameters ()
        :precondition (and
            (= (belief_state) 55)
        )
        :effect (and
            (assign (belief_state) 125)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_55_to_126
        :parameters ()
        :precondition (and
            (= (belief_state) 55)
        )
        :effect (and
            (assign (belief_state) 126)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_55_to_127
        :parameters ()
        :precondition (and
            (= (belief_state) 55)
        )
        :effect (and
            (assign (belief_state) 127)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_55_to_24
        :parameters ()
        :precondition (and
            (= (belief_state) 55)
        )
        :effect (and
            (assign (belief_state) 24)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_56_to_24
        :parameters ()
        :precondition (and
            (= (belief_state) 56)
        )
        :effect (and
            (assign (belief_state) 24)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_56_to_128
        :parameters ()
        :precondition (and
            (= (belief_state) 56)
        )
        :effect (and
            (assign (belief_state) 128)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_56_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 56)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_57_to_129
        :parameters ()
        :precondition (and
            (= (belief_state) 57)
        )
        :effect (and
            (assign (belief_state) 129)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_57_to_130
        :parameters ()
        :precondition (and
            (= (belief_state) 57)
        )
        :effect (and
            (assign (belief_state) 130)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_57_to_25
        :parameters ()
        :precondition (and
            (= (belief_state) 57)
        )
        :effect (and
            (assign (belief_state) 25)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_58_to_131
        :parameters ()
        :precondition (and
            (= (belief_state) 58)
        )
        :effect (and
            (assign (belief_state) 131)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_58_to_34
        :parameters ()
        :precondition (and
            (= (belief_state) 58)
        )
        :effect (and
            (assign (belief_state) 34)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_59_to_132
        :parameters ()
        :precondition (and
            (= (belief_state) 59)
        )
        :effect (and
            (assign (belief_state) 132)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_59_to_58
        :parameters ()
        :precondition (and
            (= (belief_state) 59)
        )
        :effect (and
            (assign (belief_state) 58)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_59_to_39
        :parameters ()
        :precondition (and
            (= (belief_state) 59)
        )
        :effect (and
            (assign (belief_state) 39)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_60_to_26
        :parameters ()
        :precondition (and
            (= (belief_state) 60)
        )
        :effect (and
            (assign (belief_state) 26)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_60_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 60)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_60_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 60)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_61_to_121
        :parameters ()
        :precondition (and
            (= (belief_state) 61)
        )
        :effect (and
            (assign (belief_state) 121)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_61_to_135
        :parameters ()
        :precondition (and
            (= (belief_state) 61)
        )
        :effect (and
            (assign (belief_state) 135)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_62_to_126
        :parameters ()
        :precondition (and
            (= (belief_state) 62)
        )
        :effect (and
            (assign (belief_state) 126)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_62_to_61
        :parameters ()
        :precondition (and
            (= (belief_state) 62)
        )
        :effect (and
            (assign (belief_state) 61)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_62_to_136
        :parameters ()
        :precondition (and
            (= (belief_state) 62)
        )
        :effect (and
            (assign (belief_state) 136)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_63_to_137
        :parameters ()
        :precondition (and
            (= (belief_state) 63)
        )
        :effect (and
            (assign (belief_state) 137)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_63_to_138
        :parameters ()
        :precondition (and
            (= (belief_state) 63)
        )
        :effect (and
            (assign (belief_state) 138)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_63_to_138
        :parameters ()
        :precondition (and
            (= (belief_state) 63)
        )
        :effect (and
            (assign (belief_state) 138)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_63_to_27
        :parameters ()
        :precondition (and
            (= (belief_state) 63)
        )
        :effect (and
            (assign (belief_state) 27)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_64_to_27
        :parameters ()
        :precondition (and
            (= (belief_state) 64)
        )
        :effect (and
            (assign (belief_state) 27)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_64_to_140
        :parameters ()
        :precondition (and
            (= (belief_state) 64)
        )
        :effect (and
            (assign (belief_state) 140)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_64_to_140
        :parameters ()
        :precondition (and
            (= (belief_state) 64)
        )
        :effect (and
            (assign (belief_state) 140)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_64_to_139
        :parameters ()
        :precondition (and
            (= (belief_state) 64)
        )
        :effect (and
            (assign (belief_state) 139)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_65_to_141
        :parameters ()
        :precondition (and
            (= (belief_state) 65)
        )
        :effect (and
            (assign (belief_state) 141)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_65_to_142
        :parameters ()
        :precondition (and
            (= (belief_state) 65)
        )
        :effect (and
            (assign (belief_state) 142)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_66_to_143
        :parameters ()
        :precondition (and
            (= (belief_state) 66)
        )
        :effect (and
            (assign (belief_state) 143)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_66_to_144
        :parameters ()
        :precondition (and
            (= (belief_state) 66)
        )
        :effect (and
            (assign (belief_state) 144)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_66_to_145
        :parameters ()
        :precondition (and
            (= (belief_state) 66)
        )
        :effect (and
            (assign (belief_state) 145)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_66_to_28
        :parameters ()
        :precondition (and
            (= (belief_state) 66)
        )
        :effect (and
            (assign (belief_state) 28)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_67_to_28
        :parameters ()
        :precondition (and
            (= (belief_state) 67)
        )
        :effect (and
            (assign (belief_state) 28)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_67_to_147
        :parameters ()
        :precondition (and
            (= (belief_state) 67)
        )
        :effect (and
            (assign (belief_state) 147)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_67_to_148
        :parameters ()
        :precondition (and
            (= (belief_state) 67)
        )
        :effect (and
            (assign (belief_state) 148)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_67_to_146
        :parameters ()
        :precondition (and
            (= (belief_state) 67)
        )
        :effect (and
            (assign (belief_state) 146)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_68_to_149
        :parameters ()
        :precondition (and
            (= (belief_state) 68)
        )
        :effect (and
            (assign (belief_state) 149)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_68_to_150
        :parameters ()
        :precondition (and
            (= (belief_state) 68)
        )
        :effect (and
            (assign (belief_state) 150)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_68_to_29
        :parameters ()
        :precondition (and
            (= (belief_state) 68)
        )
        :effect (and
            (assign (belief_state) 29)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_69_to_151
        :parameters ()
        :precondition (and
            (= (belief_state) 69)
        )
        :effect (and
            (assign (belief_state) 151)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_69_to_35
        :parameters ()
        :precondition (and
            (= (belief_state) 69)
        )
        :effect (and
            (assign (belief_state) 35)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_70_to_152
        :parameters ()
        :precondition (and
            (= (belief_state) 70)
        )
        :effect (and
            (assign (belief_state) 152)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_70_to_69
        :parameters ()
        :precondition (and
            (= (belief_state) 70)
        )
        :effect (and
            (assign (belief_state) 69)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_70_to_40
        :parameters ()
        :precondition (and
            (= (belief_state) 70)
        )
        :effect (and
            (assign (belief_state) 40)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_71_to_30
        :parameters ()
        :precondition (and
            (= (belief_state) 71)
        )
        :effect (and
            (assign (belief_state) 30)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_71_to_153
        :parameters ()
        :precondition (and
            (= (belief_state) 71)
        )
        :effect (and
            (assign (belief_state) 153)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_71_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 71)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_72_to_122
        :parameters ()
        :precondition (and
            (= (belief_state) 72)
        )
        :effect (and
            (assign (belief_state) 122)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_72_to_154
        :parameters ()
        :precondition (and
            (= (belief_state) 72)
        )
        :effect (and
            (assign (belief_state) 154)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_73_to_127
        :parameters ()
        :precondition (and
            (= (belief_state) 73)
        )
        :effect (and
            (assign (belief_state) 127)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_73_to_72
        :parameters ()
        :precondition (and
            (= (belief_state) 73)
        )
        :effect (and
            (assign (belief_state) 72)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_73_to_155
        :parameters ()
        :precondition (and
            (= (belief_state) 73)
        )
        :effect (and
            (assign (belief_state) 155)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_74_to_33
        :parameters ()
        :precondition (and
            (= (belief_state) 74)
        )
        :effect (and
            (assign (belief_state) 33)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_74_to_156
        :parameters ()
        :precondition (and
            (= (belief_state) 74)
        )
        :effect (and
            (assign (belief_state) 156)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_74_to_157
        :parameters ()
        :precondition (and
            (= (belief_state) 74)
        )
        :effect (and
            (assign (belief_state) 157)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_75_to_158
        :parameters ()
        :precondition (and
            (= (belief_state) 75)
        )
        :effect (and
            (assign (belief_state) 158)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_75_to_159
        :parameters ()
        :precondition (and
            (= (belief_state) 75)
        )
        :effect (and
            (assign (belief_state) 159)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_76_to_160
        :parameters ()
        :precondition (and
            (= (belief_state) 76)
        )
        :effect (and
            (assign (belief_state) 160)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_76_to_75
        :parameters ()
        :precondition (and
            (= (belief_state) 76)
        )
        :effect (and
            (assign (belief_state) 75)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_76_to_161
        :parameters ()
        :precondition (and
            (= (belief_state) 76)
        )
        :effect (and
            (assign (belief_state) 161)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_77_to_34
        :parameters ()
        :precondition (and
            (= (belief_state) 77)
        )
        :effect (and
            (assign (belief_state) 34)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_77_to_163
        :parameters ()
        :precondition (and
            (= (belief_state) 77)
        )
        :effect (and
            (assign (belief_state) 163)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_77_to_164
        :parameters ()
        :precondition (and
            (= (belief_state) 77)
        )
        :effect (and
            (assign (belief_state) 164)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_77_to_162
        :parameters ()
        :precondition (and
            (= (belief_state) 77)
        )
        :effect (and
            (assign (belief_state) 162)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_78_to_138
        :parameters ()
        :precondition (and
            (= (belief_state) 78)
        )
        :effect (and
            (assign (belief_state) 138)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_78_to_166
        :parameters ()
        :precondition (and
            (= (belief_state) 78)
        )
        :effect (and
            (assign (belief_state) 166)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_78_to_165
        :parameters ()
        :precondition (and
            (= (belief_state) 78)
        )
        :effect (and
            (assign (belief_state) 165)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_79_to_144
        :parameters ()
        :precondition (and
            (= (belief_state) 79)
        )
        :effect (and
            (assign (belief_state) 144)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_79_to_166
        :parameters ()
        :precondition (and
            (= (belief_state) 79)
        )
        :effect (and
            (assign (belief_state) 166)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_79_to_167
        :parameters ()
        :precondition (and
            (= (belief_state) 79)
        )
        :effect (and
            (assign (belief_state) 167)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_80_to_35
        :parameters ()
        :precondition (and
            (= (belief_state) 80)
        )
        :effect (and
            (assign (belief_state) 35)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_80_to_169
        :parameters ()
        :precondition (and
            (= (belief_state) 80)
        )
        :effect (and
            (assign (belief_state) 169)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_80_to_170
        :parameters ()
        :precondition (and
            (= (belief_state) 80)
        )
        :effect (and
            (assign (belief_state) 170)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_80_to_168
        :parameters ()
        :precondition (and
            (= (belief_state) 80)
        )
        :effect (and
            (assign (belief_state) 168)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_81_to_38
        :parameters ()
        :precondition (and
            (= (belief_state) 81)
        )
        :effect (and
            (assign (belief_state) 38)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_81_to_171
        :parameters ()
        :precondition (and
            (= (belief_state) 81)
        )
        :effect (and
            (assign (belief_state) 171)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_81_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 81)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_82_to_172
        :parameters ()
        :precondition (and
            (= (belief_state) 82)
        )
        :effect (and
            (assign (belief_state) 172)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_82_to_173
        :parameters ()
        :precondition (and
            (= (belief_state) 82)
        )
        :effect (and
            (assign (belief_state) 173)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_83_to_174
        :parameters ()
        :precondition (and
            (= (belief_state) 83)
        )
        :effect (and
            (assign (belief_state) 174)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_83_to_82
        :parameters ()
        :precondition (and
            (= (belief_state) 83)
        )
        :effect (and
            (assign (belief_state) 82)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_83_to_175
        :parameters ()
        :precondition (and
            (= (belief_state) 83)
        )
        :effect (and
            (assign (belief_state) 175)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_84_to_39
        :parameters ()
        :precondition (and
            (= (belief_state) 84)
        )
        :effect (and
            (assign (belief_state) 39)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_84_to_177
        :parameters ()
        :precondition (and
            (= (belief_state) 84)
        )
        :effect (and
            (assign (belief_state) 177)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_84_to_178
        :parameters ()
        :precondition (and
            (= (belief_state) 84)
        )
        :effect (and
            (assign (belief_state) 178)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_84_to_176
        :parameters ()
        :precondition (and
            (= (belief_state) 84)
        )
        :effect (and
            (assign (belief_state) 176)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_85_to_145
        :parameters ()
        :precondition (and
            (= (belief_state) 85)
        )
        :effect (and
            (assign (belief_state) 145)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_85_to_166
        :parameters ()
        :precondition (and
            (= (belief_state) 85)
        )
        :effect (and
            (assign (belief_state) 166)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_85_to_179
        :parameters ()
        :precondition (and
            (= (belief_state) 85)
        )
        :effect (and
            (assign (belief_state) 179)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_86_to_40
        :parameters ()
        :precondition (and
            (= (belief_state) 86)
        )
        :effect (and
            (assign (belief_state) 40)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_86_to_181
        :parameters ()
        :precondition (and
            (= (belief_state) 86)
        )
        :effect (and
            (assign (belief_state) 181)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_86_to_182
        :parameters ()
        :precondition (and
            (= (belief_state) 86)
        )
        :effect (and
            (assign (belief_state) 182)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_86_to_180
        :parameters ()
        :precondition (and
            (= (belief_state) 86)
        )
        :effect (and
            (assign (belief_state) 180)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_87_to_41
        :parameters ()
        :precondition (and
            (= (belief_state) 87)
        )
        :effect (and
            (assign (belief_state) 41)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_87_to_183
        :parameters ()
        :precondition (and
            (= (belief_state) 87)
        )
        :effect (and
            (assign (belief_state) 183)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_87_to_184
        :parameters ()
        :precondition (and
            (= (belief_state) 87)
        )
        :effect (and
            (assign (belief_state) 184)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_88_to_185
        :parameters ()
        :precondition (and
            (= (belief_state) 88)
        )
        :effect (and
            (assign (belief_state) 185)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_88_to_186
        :parameters ()
        :precondition (and
            (= (belief_state) 88)
        )
        :effect (and
            (assign (belief_state) 186)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_89_to_187
        :parameters ()
        :precondition (and
            (= (belief_state) 89)
        )
        :effect (and
            (assign (belief_state) 187)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_89_to_88
        :parameters ()
        :precondition (and
            (= (belief_state) 89)
        )
        :effect (and
            (assign (belief_state) 88)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_89_to_188
        :parameters ()
        :precondition (and
            (= (belief_state) 89)
        )
        :effect (and
            (assign (belief_state) 188)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_90_to_129
        :parameters ()
        :precondition (and
            (= (belief_state) 90)
        )
        :effect (and
            (assign (belief_state) 129)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_90_to_189
        :parameters ()
        :precondition (and
            (= (belief_state) 90)
        )
        :effect (and
            (assign (belief_state) 189)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_90_to_190
        :parameters ()
        :precondition (and
            (= (belief_state) 90)
        )
        :effect (and
            (assign (belief_state) 190)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_90_to_42
        :parameters ()
        :precondition (and
            (= (belief_state) 90)
        )
        :effect (and
            (assign (belief_state) 42)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_91_to_42
        :parameters ()
        :precondition (and
            (= (belief_state) 91)
        )
        :effect (and
            (assign (belief_state) 42)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_91_to_192
        :parameters ()
        :precondition (and
            (= (belief_state) 91)
        )
        :effect (and
            (assign (belief_state) 192)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_91_to_193
        :parameters ()
        :precondition (and
            (= (belief_state) 91)
        )
        :effect (and
            (assign (belief_state) 193)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_91_to_191
        :parameters ()
        :precondition (and
            (= (belief_state) 91)
        )
        :effect (and
            (assign (belief_state) 191)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_92_to_194
        :parameters ()
        :precondition (and
            (= (belief_state) 92)
        )
        :effect (and
            (assign (belief_state) 194)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_92_to_196
        :parameters ()
        :precondition (and
            (= (belief_state) 92)
        )
        :effect (and
            (assign (belief_state) 196)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_92_to_195
        :parameters ()
        :precondition (and
            (= (belief_state) 92)
        )
        :effect (and
            (assign (belief_state) 195)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_93_to_197
        :parameters ()
        :precondition (and
            (= (belief_state) 93)
        )
        :effect (and
            (assign (belief_state) 197)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_93_to_196
        :parameters ()
        :precondition (and
            (= (belief_state) 93)
        )
        :effect (and
            (assign (belief_state) 196)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_93_to_198
        :parameters ()
        :precondition (and
            (= (belief_state) 93)
        )
        :effect (and
            (assign (belief_state) 198)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_94_to_149
        :parameters ()
        :precondition (and
            (= (belief_state) 94)
        )
        :effect (and
            (assign (belief_state) 149)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_94_to_199
        :parameters ()
        :precondition (and
            (= (belief_state) 94)
        )
        :effect (and
            (assign (belief_state) 199)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_94_to_200
        :parameters ()
        :precondition (and
            (= (belief_state) 94)
        )
        :effect (and
            (assign (belief_state) 200)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_94_to_43
        :parameters ()
        :precondition (and
            (= (belief_state) 94)
        )
        :effect (and
            (assign (belief_state) 43)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_95_to_43
        :parameters ()
        :precondition (and
            (= (belief_state) 95)
        )
        :effect (and
            (assign (belief_state) 43)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_95_to_202
        :parameters ()
        :precondition (and
            (= (belief_state) 95)
        )
        :effect (and
            (assign (belief_state) 202)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_95_to_203
        :parameters ()
        :precondition (and
            (= (belief_state) 95)
        )
        :effect (and
            (assign (belief_state) 203)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_95_to_201
        :parameters ()
        :precondition (and
            (= (belief_state) 95)
        )
        :effect (and
            (assign (belief_state) 201)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_96_to_44
        :parameters ()
        :precondition (and
            (= (belief_state) 96)
        )
        :effect (and
            (assign (belief_state) 44)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_96_to_205
        :parameters ()
        :precondition (and
            (= (belief_state) 96)
        )
        :effect (and
            (assign (belief_state) 205)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_96_to_206
        :parameters ()
        :precondition (and
            (= (belief_state) 96)
        )
        :effect (and
            (assign (belief_state) 206)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_96_to_204
        :parameters ()
        :precondition (and
            (= (belief_state) 96)
        )
        :effect (and
            (assign (belief_state) 204)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_97_to_189
        :parameters ()
        :precondition (and
            (= (belief_state) 97)
        )
        :effect (and
            (assign (belief_state) 189)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_97_to_208
        :parameters ()
        :precondition (and
            (= (belief_state) 97)
        )
        :effect (and
            (assign (belief_state) 208)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_97_to_209
        :parameters ()
        :precondition (and
            (= (belief_state) 97)
        )
        :effect (and
            (assign (belief_state) 209)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_97_to_207
        :parameters ()
        :precondition (and
            (= (belief_state) 97)
        )
        :effect (and
            (assign (belief_state) 207)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_98_to_199
        :parameters ()
        :precondition (and
            (= (belief_state) 98)
        )
        :effect (and
            (assign (belief_state) 199)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_98_to_208
        :parameters ()
        :precondition (and
            (= (belief_state) 98)
        )
        :effect (and
            (assign (belief_state) 208)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_98_to_210
        :parameters ()
        :precondition (and
            (= (belief_state) 98)
        )
        :effect (and
            (assign (belief_state) 210)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_99_to_45
        :parameters ()
        :precondition (and
            (= (belief_state) 99)
        )
        :effect (and
            (assign (belief_state) 45)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_99_to_212
        :parameters ()
        :precondition (and
            (= (belief_state) 99)
        )
        :effect (and
            (assign (belief_state) 212)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_99_to_213
        :parameters ()
        :precondition (and
            (= (belief_state) 99)
        )
        :effect (and
            (assign (belief_state) 213)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_99_to_211
        :parameters ()
        :precondition (and
            (= (belief_state) 99)
        )
        :effect (and
            (assign (belief_state) 211)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_100_to_190
        :parameters ()
        :precondition (and
            (= (belief_state) 100)
        )
        :effect (and
            (assign (belief_state) 190)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_100_to_208
        :parameters ()
        :precondition (and
            (= (belief_state) 100)
        )
        :effect (and
            (assign (belief_state) 208)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_100_to_215
        :parameters ()
        :precondition (and
            (= (belief_state) 100)
        )
        :effect (and
            (assign (belief_state) 215)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_100_to_214
        :parameters ()
        :precondition (and
            (= (belief_state) 100)
        )
        :effect (and
            (assign (belief_state) 214)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_101_to_200
        :parameters ()
        :precondition (and
            (= (belief_state) 101)
        )
        :effect (and
            (assign (belief_state) 200)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_101_to_208
        :parameters ()
        :precondition (and
            (= (belief_state) 101)
        )
        :effect (and
            (assign (belief_state) 208)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_101_to_216
        :parameters ()
        :precondition (and
            (= (belief_state) 101)
        )
        :effect (and
            (assign (belief_state) 216)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_102_to_46
        :parameters ()
        :precondition (and
            (= (belief_state) 102)
        )
        :effect (and
            (assign (belief_state) 46)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_102_to_217
        :parameters ()
        :precondition (and
            (= (belief_state) 102)
        )
        :effect (and
            (assign (belief_state) 217)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_102_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 102)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_103_to_218
        :parameters ()
        :precondition (and
            (= (belief_state) 103)
        )
        :effect (and
            (assign (belief_state) 218)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_103_to_219
        :parameters ()
        :precondition (and
            (= (belief_state) 103)
        )
        :effect (and
            (assign (belief_state) 219)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_104_to_220
        :parameters ()
        :precondition (and
            (= (belief_state) 104)
        )
        :effect (and
            (assign (belief_state) 220)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_104_to_103
        :parameters ()
        :precondition (and
            (= (belief_state) 104)
        )
        :effect (and
            (assign (belief_state) 103)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_104_to_221
        :parameters ()
        :precondition (and
            (= (belief_state) 104)
        )
        :effect (and
            (assign (belief_state) 221)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_105_to_130
        :parameters ()
        :precondition (and
            (= (belief_state) 105)
        )
        :effect (and
            (assign (belief_state) 130)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_105_to_222
        :parameters ()
        :precondition (and
            (= (belief_state) 105)
        )
        :effect (and
            (assign (belief_state) 222)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_105_to_223
        :parameters ()
        :precondition (and
            (= (belief_state) 105)
        )
        :effect (and
            (assign (belief_state) 223)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_105_to_47
        :parameters ()
        :precondition (and
            (= (belief_state) 105)
        )
        :effect (and
            (assign (belief_state) 47)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_106_to_47
        :parameters ()
        :precondition (and
            (= (belief_state) 106)
        )
        :effect (and
            (assign (belief_state) 47)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_106_to_225
        :parameters ()
        :precondition (and
            (= (belief_state) 106)
        )
        :effect (and
            (assign (belief_state) 225)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_106_to_226
        :parameters ()
        :precondition (and
            (= (belief_state) 106)
        )
        :effect (and
            (assign (belief_state) 226)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_106_to_224
        :parameters ()
        :precondition (and
            (= (belief_state) 106)
        )
        :effect (and
            (assign (belief_state) 224)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_107_to_227
        :parameters ()
        :precondition (and
            (= (belief_state) 107)
        )
        :effect (and
            (assign (belief_state) 227)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_107_to_196
        :parameters ()
        :precondition (and
            (= (belief_state) 107)
        )
        :effect (and
            (assign (belief_state) 196)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_107_to_228
        :parameters ()
        :precondition (and
            (= (belief_state) 107)
        )
        :effect (and
            (assign (belief_state) 228)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_108_to_150
        :parameters ()
        :precondition (and
            (= (belief_state) 108)
        )
        :effect (and
            (assign (belief_state) 150)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_108_to_229
        :parameters ()
        :precondition (and
            (= (belief_state) 108)
        )
        :effect (and
            (assign (belief_state) 229)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_108_to_230
        :parameters ()
        :precondition (and
            (= (belief_state) 108)
        )
        :effect (and
            (assign (belief_state) 230)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_108_to_48
        :parameters ()
        :precondition (and
            (= (belief_state) 108)
        )
        :effect (and
            (assign (belief_state) 48)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_109_to_48
        :parameters ()
        :precondition (and
            (= (belief_state) 109)
        )
        :effect (and
            (assign (belief_state) 48)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_109_to_232
        :parameters ()
        :precondition (and
            (= (belief_state) 109)
        )
        :effect (and
            (assign (belief_state) 232)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_109_to_233
        :parameters ()
        :precondition (and
            (= (belief_state) 109)
        )
        :effect (and
            (assign (belief_state) 233)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_109_to_231
        :parameters ()
        :precondition (and
            (= (belief_state) 109)
        )
        :effect (and
            (assign (belief_state) 231)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_110_to_49
        :parameters ()
        :precondition (and
            (= (belief_state) 110)
        )
        :effect (and
            (assign (belief_state) 49)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_110_to_235
        :parameters ()
        :precondition (and
            (= (belief_state) 110)
        )
        :effect (and
            (assign (belief_state) 235)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_110_to_236
        :parameters ()
        :precondition (and
            (= (belief_state) 110)
        )
        :effect (and
            (assign (belief_state) 236)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_110_to_234
        :parameters ()
        :precondition (and
            (= (belief_state) 110)
        )
        :effect (and
            (assign (belief_state) 234)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_111_to_222
        :parameters ()
        :precondition (and
            (= (belief_state) 111)
        )
        :effect (and
            (assign (belief_state) 222)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_111_to_208
        :parameters ()
        :precondition (and
            (= (belief_state) 111)
        )
        :effect (and
            (assign (belief_state) 208)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_111_to_238
        :parameters ()
        :precondition (and
            (= (belief_state) 111)
        )
        :effect (and
            (assign (belief_state) 238)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_111_to_237
        :parameters ()
        :precondition (and
            (= (belief_state) 111)
        )
        :effect (and
            (assign (belief_state) 237)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_112_to_229
        :parameters ()
        :precondition (and
            (= (belief_state) 112)
        )
        :effect (and
            (assign (belief_state) 229)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_112_to_208
        :parameters ()
        :precondition (and
            (= (belief_state) 112)
        )
        :effect (and
            (assign (belief_state) 208)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_112_to_239
        :parameters ()
        :precondition (and
            (= (belief_state) 112)
        )
        :effect (and
            (assign (belief_state) 239)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_113_to_50
        :parameters ()
        :precondition (and
            (= (belief_state) 113)
        )
        :effect (and
            (assign (belief_state) 50)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_113_to_241
        :parameters ()
        :precondition (and
            (= (belief_state) 113)
        )
        :effect (and
            (assign (belief_state) 241)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_113_to_242
        :parameters ()
        :precondition (and
            (= (belief_state) 113)
        )
        :effect (and
            (assign (belief_state) 242)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_113_to_240
        :parameters ()
        :precondition (and
            (= (belief_state) 113)
        )
        :effect (and
            (assign (belief_state) 240)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_114_to_223
        :parameters ()
        :precondition (and
            (= (belief_state) 114)
        )
        :effect (and
            (assign (belief_state) 223)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_114_to_208
        :parameters ()
        :precondition (and
            (= (belief_state) 114)
        )
        :effect (and
            (assign (belief_state) 208)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_114_to_244
        :parameters ()
        :precondition (and
            (= (belief_state) 114)
        )
        :effect (and
            (assign (belief_state) 244)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_114_to_243
        :parameters ()
        :precondition (and
            (= (belief_state) 114)
        )
        :effect (and
            (assign (belief_state) 243)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_115_to_230
        :parameters ()
        :precondition (and
            (= (belief_state) 115)
        )
        :effect (and
            (assign (belief_state) 230)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_115_to_208
        :parameters ()
        :precondition (and
            (= (belief_state) 115)
        )
        :effect (and
            (assign (belief_state) 208)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_115_to_245
        :parameters ()
        :precondition (and
            (= (belief_state) 115)
        )
        :effect (and
            (assign (belief_state) 245)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_116_to_246
        :parameters ()
        :precondition (and
            (= (belief_state) 116)
        )
        :effect (and
            (assign (belief_state) 246)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_116_to_247
        :parameters ()
        :precondition (and
            (= (belief_state) 116)
        )
        :effect (and
            (assign (belief_state) 247)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_116_to_248
        :parameters ()
        :precondition (and
            (= (belief_state) 116)
        )
        :effect (and
            (assign (belief_state) 248)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_116_to_51
        :parameters ()
        :precondition (and
            (= (belief_state) 116)
        )
        :effect (and
            (assign (belief_state) 51)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_117_to_249
        :parameters ()
        :precondition (and
            (= (belief_state) 117)
        )
        :effect (and
            (assign (belief_state) 249)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_117_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 117)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_118_to_250
        :parameters ()
        :precondition (and
            (= (belief_state) 118)
        )
        :effect (and
            (assign (belief_state) 250)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_118_to_251
        :parameters ()
        :precondition (and
            (= (belief_state) 118)
        )
        :effect (and
            (assign (belief_state) 251)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_118_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 118)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_119_to_252
        :parameters ()
        :precondition (and
            (= (belief_state) 119)
        )
        :effect (and
            (assign (belief_state) 252)
            (assign (goal_reached) 'f')
        )
    )

    (:action save_princess_room5__from_119_to_253
        :parameters ()
        :precondition (and
            (= (belief_state) 119)
        )
        :effect (and
            (assign (belief_state) 253)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_120_to_254
        :parameters ()
        :precondition (and
            (= (belief_state) 120)
        )
        :effect (and
            (assign (belief_state) 254)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_120_to_255
        :parameters ()
        :precondition (and
            (= (belief_state) 120)
        )
        :effect (and
            (assign (belief_state) 255)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_120_to_256
        :parameters ()
        :precondition (and
            (= (belief_state) 120)
        )
        :effect (and
            (assign (belief_state) 256)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_120_to_53
        :parameters ()
        :precondition (and
            (= (belief_state) 120)
        )
        :effect (and
            (assign (belief_state) 53)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_121_to_257
        :parameters ()
        :precondition (and
            (= (belief_state) 121)
        )
        :effect (and
            (assign (belief_state) 257)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_121_to_258
        :parameters ()
        :precondition (and
            (= (belief_state) 121)
        )
        :effect (and
            (assign (belief_state) 258)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_121_to_259
        :parameters ()
        :precondition (and
            (= (belief_state) 121)
        )
        :effect (and
            (assign (belief_state) 259)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_121_to_61
        :parameters ()
        :precondition (and
            (= (belief_state) 121)
        )
        :effect (and
            (assign (belief_state) 61)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_122_to_260
        :parameters ()
        :precondition (and
            (= (belief_state) 122)
        )
        :effect (and
            (assign (belief_state) 260)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_122_to_258
        :parameters ()
        :precondition (and
            (= (belief_state) 122)
        )
        :effect (and
            (assign (belief_state) 258)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_122_to_72
        :parameters ()
        :precondition (and
            (= (belief_state) 122)
        )
        :effect (and
            (assign (belief_state) 72)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_123_to_247
        :parameters ()
        :precondition (and
            (= (belief_state) 123)
        )
        :effect (and
            (assign (belief_state) 247)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_123_to_124
        :parameters ()
        :precondition (and
            (= (belief_state) 123)
        )
        :effect (and
            (assign (belief_state) 124)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_123_to_261
        :parameters ()
        :precondition (and
            (= (belief_state) 123)
        )
        :effect (and
            (assign (belief_state) 261)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_124_to_251
        :parameters ()
        :precondition (and
            (= (belief_state) 124)
        )
        :effect (and
            (assign (belief_state) 251)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_124_to_262
        :parameters ()
        :precondition (and
            (= (belief_state) 124)
        )
        :effect (and
            (assign (belief_state) 262)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_125_to_263
        :parameters ()
        :precondition (and
            (= (belief_state) 125)
        )
        :effect (and
            (assign (belief_state) 263)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_125_to_264
        :parameters ()
        :precondition (and
            (= (belief_state) 125)
        )
        :effect (and
            (assign (belief_state) 264)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_125_to_265
        :parameters ()
        :precondition (and
            (= (belief_state) 125)
        )
        :effect (and
            (assign (belief_state) 265)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_125_to_55
        :parameters ()
        :precondition (and
            (= (belief_state) 125)
        )
        :effect (and
            (assign (belief_state) 55)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_126_to_266
        :parameters ()
        :precondition (and
            (= (belief_state) 126)
        )
        :effect (and
            (assign (belief_state) 266)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_126_to_258
        :parameters ()
        :precondition (and
            (= (belief_state) 126)
        )
        :effect (and
            (assign (belief_state) 258)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_126_to_267
        :parameters ()
        :precondition (and
            (= (belief_state) 126)
        )
        :effect (and
            (assign (belief_state) 267)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_126_to_62
        :parameters ()
        :precondition (and
            (= (belief_state) 126)
        )
        :effect (and
            (assign (belief_state) 62)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_127_to_268
        :parameters ()
        :precondition (and
            (= (belief_state) 127)
        )
        :effect (and
            (assign (belief_state) 268)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_127_to_258
        :parameters ()
        :precondition (and
            (= (belief_state) 127)
        )
        :effect (and
            (assign (belief_state) 258)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_127_to_73
        :parameters ()
        :precondition (and
            (= (belief_state) 127)
        )
        :effect (and
            (assign (belief_state) 73)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_128_to_248
        :parameters ()
        :precondition (and
            (= (belief_state) 128)
        )
        :effect (and
            (assign (belief_state) 248)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_128_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 128)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_128_to_269
        :parameters ()
        :precondition (and
            (= (belief_state) 128)
        )
        :effect (and
            (assign (belief_state) 269)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_129_to_90
        :parameters ()
        :precondition (and
            (= (belief_state) 129)
        )
        :effect (and
            (assign (belief_state) 90)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_130_to_129
        :parameters ()
        :precondition (and
            (= (belief_state) 130)
        )
        :effect (and
            (assign (belief_state) 129)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_130_to_105
        :parameters ()
        :precondition (and
            (= (belief_state) 130)
        )
        :effect (and
            (assign (belief_state) 105)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_131_to_270
        :parameters ()
        :precondition (and
            (= (belief_state) 131)
        )
        :effect (and
            (assign (belief_state) 270)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_131_to_271
        :parameters ()
        :precondition (and
            (= (belief_state) 131)
        )
        :effect (and
            (assign (belief_state) 271)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_131_to_58
        :parameters ()
        :precondition (and
            (= (belief_state) 131)
        )
        :effect (and
            (assign (belief_state) 58)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_132_to_272
        :parameters ()
        :precondition (and
            (= (belief_state) 132)
        )
        :effect (and
            (assign (belief_state) 272)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_132_to_273
        :parameters ()
        :precondition (and
            (= (belief_state) 132)
        )
        :effect (and
            (assign (belief_state) 273)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_132_to_59
        :parameters ()
        :precondition (and
            (= (belief_state) 132)
        )
        :effect (and
            (assign (belief_state) 59)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_133_to_205
        :parameters ()
        :precondition (and
            (= (belief_state) 133)
        )
        :effect (and
            (assign (belief_state) 205)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_133_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 133)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_133_to_274
        :parameters ()
        :precondition (and
            (= (belief_state) 133)
        )
        :effect (and
            (assign (belief_state) 274)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_134_to_275
        :parameters ()
        :precondition (and
            (= (belief_state) 134)
        )
        :effect (and
            (assign (belief_state) 275)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_134_to_276
        :parameters ()
        :precondition (and
            (= (belief_state) 134)
        )
        :effect (and
            (assign (belief_state) 276)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_135_to_61
        :parameters ()
        :precondition (and
            (= (belief_state) 135)
        )
        :effect (and
            (assign (belief_state) 61)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_135_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 135)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_135_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 135)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_136_to_62
        :parameters ()
        :precondition (and
            (= (belief_state) 136)
        )
        :effect (and
            (assign (belief_state) 62)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_136_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 136)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_136_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 136)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_137_to_277
        :parameters ()
        :precondition (and
            (= (belief_state) 137)
        )
        :effect (and
            (assign (belief_state) 277)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_137_to_277
        :parameters ()
        :precondition (and
            (= (belief_state) 137)
        )
        :effect (and
            (assign (belief_state) 277)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_137_to_63
        :parameters ()
        :precondition (and
            (= (belief_state) 137)
        )
        :effect (and
            (assign (belief_state) 63)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_138_to_278
        :parameters ()
        :precondition (and
            (= (belief_state) 138)
        )
        :effect (and
            (assign (belief_state) 278)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_138_to_78
        :parameters ()
        :precondition (and
            (= (belief_state) 138)
        )
        :effect (and
            (assign (belief_state) 78)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_139_to_64
        :parameters ()
        :precondition (and
            (= (belief_state) 139)
        )
        :effect (and
            (assign (belief_state) 64)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_139_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 139)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_139_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 139)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_140_to_258
        :parameters ()
        :precondition (and
            (= (belief_state) 140)
        )
        :effect (and
            (assign (belief_state) 258)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_140_to_279
        :parameters ()
        :precondition (and
            (= (belief_state) 140)
        )
        :effect (and
            (assign (belief_state) 279)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_141_to_280
        :parameters ()
        :precondition (and
            (= (belief_state) 141)
        )
        :effect (and
            (assign (belief_state) 280)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_141_to_281
        :parameters ()
        :precondition (and
            (= (belief_state) 141)
        )
        :effect (and
            (assign (belief_state) 281)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_141_to_281
        :parameters ()
        :precondition (and
            (= (belief_state) 141)
        )
        :effect (and
            (assign (belief_state) 281)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_141_to_65
        :parameters ()
        :precondition (and
            (= (belief_state) 141)
        )
        :effect (and
            (assign (belief_state) 65)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_142_to_65
        :parameters ()
        :precondition (and
            (= (belief_state) 142)
        )
        :effect (and
            (assign (belief_state) 65)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_142_to_283
        :parameters ()
        :precondition (and
            (= (belief_state) 142)
        )
        :effect (and
            (assign (belief_state) 283)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_142_to_283
        :parameters ()
        :precondition (and
            (= (belief_state) 142)
        )
        :effect (and
            (assign (belief_state) 283)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_142_to_282
        :parameters ()
        :precondition (and
            (= (belief_state) 142)
        )
        :effect (and
            (assign (belief_state) 282)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_143_to_284
        :parameters ()
        :precondition (and
            (= (belief_state) 143)
        )
        :effect (and
            (assign (belief_state) 284)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_143_to_285
        :parameters ()
        :precondition (and
            (= (belief_state) 143)
        )
        :effect (and
            (assign (belief_state) 285)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_143_to_66
        :parameters ()
        :precondition (and
            (= (belief_state) 143)
        )
        :effect (and
            (assign (belief_state) 66)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_144_to_286
        :parameters ()
        :precondition (and
            (= (belief_state) 144)
        )
        :effect (and
            (assign (belief_state) 286)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_144_to_79
        :parameters ()
        :precondition (and
            (= (belief_state) 144)
        )
        :effect (and
            (assign (belief_state) 79)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_145_to_287
        :parameters ()
        :precondition (and
            (= (belief_state) 145)
        )
        :effect (and
            (assign (belief_state) 287)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_145_to_144
        :parameters ()
        :precondition (and
            (= (belief_state) 145)
        )
        :effect (and
            (assign (belief_state) 144)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_145_to_85
        :parameters ()
        :precondition (and
            (= (belief_state) 145)
        )
        :effect (and
            (assign (belief_state) 85)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_146_to_67
        :parameters ()
        :precondition (and
            (= (belief_state) 146)
        )
        :effect (and
            (assign (belief_state) 67)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_146_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 146)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_146_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 146)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_147_to_259
        :parameters ()
        :precondition (and
            (= (belief_state) 147)
        )
        :effect (and
            (assign (belief_state) 259)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_147_to_290
        :parameters ()
        :precondition (and
            (= (belief_state) 147)
        )
        :effect (and
            (assign (belief_state) 290)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_148_to_267
        :parameters ()
        :precondition (and
            (= (belief_state) 148)
        )
        :effect (and
            (assign (belief_state) 267)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_148_to_147
        :parameters ()
        :precondition (and
            (= (belief_state) 148)
        )
        :effect (and
            (assign (belief_state) 147)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_148_to_291
        :parameters ()
        :precondition (and
            (= (belief_state) 148)
        )
        :effect (and
            (assign (belief_state) 291)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_149_to_94
        :parameters ()
        :precondition (and
            (= (belief_state) 149)
        )
        :effect (and
            (assign (belief_state) 94)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_150_to_149
        :parameters ()
        :precondition (and
            (= (belief_state) 150)
        )
        :effect (and
            (assign (belief_state) 149)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_150_to_108
        :parameters ()
        :precondition (and
            (= (belief_state) 150)
        )
        :effect (and
            (assign (belief_state) 108)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_151_to_292
        :parameters ()
        :precondition (and
            (= (belief_state) 151)
        )
        :effect (and
            (assign (belief_state) 292)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_151_to_293
        :parameters ()
        :precondition (and
            (= (belief_state) 151)
        )
        :effect (and
            (assign (belief_state) 293)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_151_to_69
        :parameters ()
        :precondition (and
            (= (belief_state) 151)
        )
        :effect (and
            (assign (belief_state) 69)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_152_to_294
        :parameters ()
        :precondition (and
            (= (belief_state) 152)
        )
        :effect (and
            (assign (belief_state) 294)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_152_to_295
        :parameters ()
        :precondition (and
            (= (belief_state) 152)
        )
        :effect (and
            (assign (belief_state) 295)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_152_to_70
        :parameters ()
        :precondition (and
            (= (belief_state) 152)
        )
        :effect (and
            (assign (belief_state) 70)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_153_to_296
        :parameters ()
        :precondition (and
            (= (belief_state) 153)
        )
        :effect (and
            (assign (belief_state) 296)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_153_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 153)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_153_to_297
        :parameters ()
        :precondition (and
            (= (belief_state) 153)
        )
        :effect (and
            (assign (belief_state) 297)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_154_to_72
        :parameters ()
        :precondition (and
            (= (belief_state) 154)
        )
        :effect (and
            (assign (belief_state) 72)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_154_to_298
        :parameters ()
        :precondition (and
            (= (belief_state) 154)
        )
        :effect (and
            (assign (belief_state) 298)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_154_to_124
        :parameters ()
        :precondition (and
            (= (belief_state) 154)
        )
        :effect (and
            (assign (belief_state) 124)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_155_to_73
        :parameters ()
        :precondition (and
            (= (belief_state) 155)
        )
        :effect (and
            (assign (belief_state) 73)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_155_to_299
        :parameters ()
        :precondition (and
            (= (belief_state) 155)
        )
        :effect (and
            (assign (belief_state) 299)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_155_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 155)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_156_to_300
        :parameters ()
        :precondition (and
            (= (belief_state) 156)
        )
        :effect (and
            (assign (belief_state) 300)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_156_to_157
        :parameters ()
        :precondition (and
            (= (belief_state) 156)
        )
        :effect (and
            (assign (belief_state) 157)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_156_to_301
        :parameters ()
        :precondition (and
            (= (belief_state) 156)
        )
        :effect (and
            (assign (belief_state) 301)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_157_to_302
        :parameters ()
        :precondition (and
            (= (belief_state) 157)
        )
        :effect (and
            (assign (belief_state) 302)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_157_to_303
        :parameters ()
        :precondition (and
            (= (belief_state) 157)
        )
        :effect (and
            (assign (belief_state) 303)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_158_to_255
        :parameters ()
        :precondition (and
            (= (belief_state) 158)
        )
        :effect (and
            (assign (belief_state) 255)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_158_to_304
        :parameters ()
        :precondition (and
            (= (belief_state) 158)
        )
        :effect (and
            (assign (belief_state) 304)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_158_to_305
        :parameters ()
        :precondition (and
            (= (belief_state) 158)
        )
        :effect (and
            (assign (belief_state) 305)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_158_to_75
        :parameters ()
        :precondition (and
            (= (belief_state) 158)
        )
        :effect (and
            (assign (belief_state) 75)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_159_to_75
        :parameters ()
        :precondition (and
            (= (belief_state) 159)
        )
        :effect (and
            (assign (belief_state) 75)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_159_to_306
        :parameters ()
        :precondition (and
            (= (belief_state) 159)
        )
        :effect (and
            (assign (belief_state) 306)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_159_to_307
        :parameters ()
        :precondition (and
            (= (belief_state) 159)
        )
        :effect (and
            (assign (belief_state) 307)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_160_to_264
        :parameters ()
        :precondition (and
            (= (belief_state) 160)
        )
        :effect (and
            (assign (belief_state) 264)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_160_to_308
        :parameters ()
        :precondition (and
            (= (belief_state) 160)
        )
        :effect (and
            (assign (belief_state) 308)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_160_to_309
        :parameters ()
        :precondition (and
            (= (belief_state) 160)
        )
        :effect (and
            (assign (belief_state) 309)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_160_to_76
        :parameters ()
        :precondition (and
            (= (belief_state) 160)
        )
        :effect (and
            (assign (belief_state) 76)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_161_to_76
        :parameters ()
        :precondition (and
            (= (belief_state) 161)
        )
        :effect (and
            (assign (belief_state) 76)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_161_to_310
        :parameters ()
        :precondition (and
            (= (belief_state) 161)
        )
        :effect (and
            (assign (belief_state) 310)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_161_to_157
        :parameters ()
        :precondition (and
            (= (belief_state) 161)
        )
        :effect (and
            (assign (belief_state) 157)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_162_to_77
        :parameters ()
        :precondition (and
            (= (belief_state) 162)
        )
        :effect (and
            (assign (belief_state) 77)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_162_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 162)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_162_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 162)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_163_to_304
        :parameters ()
        :precondition (and
            (= (belief_state) 163)
        )
        :effect (and
            (assign (belief_state) 304)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_163_to_311
        :parameters ()
        :precondition (and
            (= (belief_state) 163)
        )
        :effect (and
            (assign (belief_state) 311)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_164_to_308
        :parameters ()
        :precondition (and
            (= (belief_state) 164)
        )
        :effect (and
            (assign (belief_state) 308)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_164_to_163
        :parameters ()
        :precondition (and
            (= (belief_state) 164)
        )
        :effect (and
            (assign (belief_state) 163)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_164_to_312
        :parameters ()
        :precondition (and
            (= (belief_state) 164)
        )
        :effect (and
            (assign (belief_state) 312)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_165_to_78
        :parameters ()
        :precondition (and
            (= (belief_state) 165)
        )
        :effect (and
            (assign (belief_state) 78)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_165_to_314
        :parameters ()
        :precondition (and
            (= (belief_state) 165)
        )
        :effect (and
            (assign (belief_state) 314)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_165_to_314
        :parameters ()
        :precondition (and
            (= (belief_state) 165)
        )
        :effect (and
            (assign (belief_state) 314)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_165_to_313
        :parameters ()
        :precondition (and
            (= (belief_state) 165)
        )
        :effect (and
            (assign (belief_state) 313)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_166_to_281
        :parameters ()
        :precondition (and
            (= (belief_state) 166)
        )
        :effect (and
            (assign (belief_state) 281)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_166_to_315
        :parameters ()
        :precondition (and
            (= (belief_state) 166)
        )
        :effect (and
            (assign (belief_state) 315)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_167_to_79
        :parameters ()
        :precondition (and
            (= (belief_state) 167)
        )
        :effect (and
            (assign (belief_state) 79)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_167_to_317
        :parameters ()
        :precondition (and
            (= (belief_state) 167)
        )
        :effect (and
            (assign (belief_state) 317)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_167_to_318
        :parameters ()
        :precondition (and
            (= (belief_state) 167)
        )
        :effect (and
            (assign (belief_state) 318)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_167_to_316
        :parameters ()
        :precondition (and
            (= (belief_state) 167)
        )
        :effect (and
            (assign (belief_state) 316)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_168_to_80
        :parameters ()
        :precondition (and
            (= (belief_state) 168)
        )
        :effect (and
            (assign (belief_state) 80)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_168_to_319
        :parameters ()
        :precondition (and
            (= (belief_state) 168)
        )
        :effect (and
            (assign (belief_state) 319)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_168_to_157
        :parameters ()
        :precondition (and
            (= (belief_state) 168)
        )
        :effect (and
            (assign (belief_state) 157)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_169_to_305
        :parameters ()
        :precondition (and
            (= (belief_state) 169)
        )
        :effect (and
            (assign (belief_state) 305)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_169_to_320
        :parameters ()
        :precondition (and
            (= (belief_state) 169)
        )
        :effect (and
            (assign (belief_state) 320)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_170_to_309
        :parameters ()
        :precondition (and
            (= (belief_state) 170)
        )
        :effect (and
            (assign (belief_state) 309)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_170_to_169
        :parameters ()
        :precondition (and
            (= (belief_state) 170)
        )
        :effect (and
            (assign (belief_state) 169)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_170_to_321
        :parameters ()
        :precondition (and
            (= (belief_state) 170)
        )
        :effect (and
            (assign (belief_state) 321)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_171_to_322
        :parameters ()
        :precondition (and
            (= (belief_state) 171)
        )
        :effect (and
            (assign (belief_state) 322)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_171_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 171)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_171_to_323
        :parameters ()
        :precondition (and
            (= (belief_state) 171)
        )
        :effect (and
            (assign (belief_state) 323)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_172_to_256
        :parameters ()
        :precondition (and
            (= (belief_state) 172)
        )
        :effect (and
            (assign (belief_state) 256)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_172_to_324
        :parameters ()
        :precondition (and
            (= (belief_state) 172)
        )
        :effect (and
            (assign (belief_state) 324)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_172_to_325
        :parameters ()
        :precondition (and
            (= (belief_state) 172)
        )
        :effect (and
            (assign (belief_state) 325)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_172_to_82
        :parameters ()
        :precondition (and
            (= (belief_state) 172)
        )
        :effect (and
            (assign (belief_state) 82)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_173_to_82
        :parameters ()
        :precondition (and
            (= (belief_state) 173)
        )
        :effect (and
            (assign (belief_state) 82)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_173_to_326
        :parameters ()
        :precondition (and
            (= (belief_state) 173)
        )
        :effect (and
            (assign (belief_state) 326)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_173_to_124
        :parameters ()
        :precondition (and
            (= (belief_state) 173)
        )
        :effect (and
            (assign (belief_state) 124)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_174_to_265
        :parameters ()
        :precondition (and
            (= (belief_state) 174)
        )
        :effect (and
            (assign (belief_state) 265)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_174_to_327
        :parameters ()
        :precondition (and
            (= (belief_state) 174)
        )
        :effect (and
            (assign (belief_state) 327)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_174_to_328
        :parameters ()
        :precondition (and
            (= (belief_state) 174)
        )
        :effect (and
            (assign (belief_state) 328)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_174_to_83
        :parameters ()
        :precondition (and
            (= (belief_state) 174)
        )
        :effect (and
            (assign (belief_state) 83)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_175_to_83
        :parameters ()
        :precondition (and
            (= (belief_state) 175)
        )
        :effect (and
            (assign (belief_state) 83)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_175_to_329
        :parameters ()
        :precondition (and
            (= (belief_state) 175)
        )
        :effect (and
            (assign (belief_state) 329)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_175_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 175)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_176_to_84
        :parameters ()
        :precondition (and
            (= (belief_state) 176)
        )
        :effect (and
            (assign (belief_state) 84)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_176_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 176)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_176_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 176)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_177_to_324
        :parameters ()
        :precondition (and
            (= (belief_state) 177)
        )
        :effect (and
            (assign (belief_state) 324)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_177_to_330
        :parameters ()
        :precondition (and
            (= (belief_state) 177)
        )
        :effect (and
            (assign (belief_state) 330)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_178_to_327
        :parameters ()
        :precondition (and
            (= (belief_state) 178)
        )
        :effect (and
            (assign (belief_state) 327)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_178_to_177
        :parameters ()
        :precondition (and
            (= (belief_state) 178)
        )
        :effect (and
            (assign (belief_state) 177)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_178_to_331
        :parameters ()
        :precondition (and
            (= (belief_state) 178)
        )
        :effect (and
            (assign (belief_state) 331)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_179_to_85
        :parameters ()
        :precondition (and
            (= (belief_state) 179)
        )
        :effect (and
            (assign (belief_state) 85)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_179_to_333
        :parameters ()
        :precondition (and
            (= (belief_state) 179)
        )
        :effect (and
            (assign (belief_state) 333)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_179_to_334
        :parameters ()
        :precondition (and
            (= (belief_state) 179)
        )
        :effect (and
            (assign (belief_state) 334)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_179_to_332
        :parameters ()
        :precondition (and
            (= (belief_state) 179)
        )
        :effect (and
            (assign (belief_state) 332)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_180_to_86
        :parameters ()
        :precondition (and
            (= (belief_state) 180)
        )
        :effect (and
            (assign (belief_state) 86)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_180_to_335
        :parameters ()
        :precondition (and
            (= (belief_state) 180)
        )
        :effect (and
            (assign (belief_state) 335)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_180_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 180)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_181_to_325
        :parameters ()
        :precondition (and
            (= (belief_state) 181)
        )
        :effect (and
            (assign (belief_state) 325)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_181_to_336
        :parameters ()
        :precondition (and
            (= (belief_state) 181)
        )
        :effect (and
            (assign (belief_state) 336)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_182_to_328
        :parameters ()
        :precondition (and
            (= (belief_state) 182)
        )
        :effect (and
            (assign (belief_state) 328)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_182_to_181
        :parameters ()
        :precondition (and
            (= (belief_state) 182)
        )
        :effect (and
            (assign (belief_state) 181)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_182_to_337
        :parameters ()
        :precondition (and
            (= (belief_state) 182)
        )
        :effect (and
            (assign (belief_state) 337)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_183_to_338
        :parameters ()
        :precondition (and
            (= (belief_state) 183)
        )
        :effect (and
            (assign (belief_state) 338)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_183_to_184
        :parameters ()
        :precondition (and
            (= (belief_state) 183)
        )
        :effect (and
            (assign (belief_state) 184)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_183_to_339
        :parameters ()
        :precondition (and
            (= (belief_state) 183)
        )
        :effect (and
            (assign (belief_state) 339)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_184_to_340
        :parameters ()
        :precondition (and
            (= (belief_state) 184)
        )
        :effect (and
            (assign (belief_state) 340)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_184_to_341
        :parameters ()
        :precondition (and
            (= (belief_state) 184)
        )
        :effect (and
            (assign (belief_state) 341)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_185_to_342
        :parameters ()
        :precondition (and
            (= (belief_state) 185)
        )
        :effect (and
            (assign (belief_state) 342)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_185_to_343
        :parameters ()
        :precondition (and
            (= (belief_state) 185)
        )
        :effect (and
            (assign (belief_state) 343)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_185_to_344
        :parameters ()
        :precondition (and
            (= (belief_state) 185)
        )
        :effect (and
            (assign (belief_state) 344)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_185_to_88
        :parameters ()
        :precondition (and
            (= (belief_state) 185)
        )
        :effect (and
            (assign (belief_state) 88)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_186_to_88
        :parameters ()
        :precondition (and
            (= (belief_state) 186)
        )
        :effect (and
            (assign (belief_state) 88)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_186_to_345
        :parameters ()
        :precondition (and
            (= (belief_state) 186)
        )
        :effect (and
            (assign (belief_state) 345)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_186_to_346
        :parameters ()
        :precondition (and
            (= (belief_state) 186)
        )
        :effect (and
            (assign (belief_state) 346)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_187_to_347
        :parameters ()
        :precondition (and
            (= (belief_state) 187)
        )
        :effect (and
            (assign (belief_state) 347)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_187_to_348
        :parameters ()
        :precondition (and
            (= (belief_state) 187)
        )
        :effect (and
            (assign (belief_state) 348)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_187_to_349
        :parameters ()
        :precondition (and
            (= (belief_state) 187)
        )
        :effect (and
            (assign (belief_state) 349)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_187_to_89
        :parameters ()
        :precondition (and
            (= (belief_state) 187)
        )
        :effect (and
            (assign (belief_state) 89)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_188_to_89
        :parameters ()
        :precondition (and
            (= (belief_state) 188)
        )
        :effect (and
            (assign (belief_state) 89)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_188_to_350
        :parameters ()
        :precondition (and
            (= (belief_state) 188)
        )
        :effect (and
            (assign (belief_state) 350)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_188_to_184
        :parameters ()
        :precondition (and
            (= (belief_state) 188)
        )
        :effect (and
            (assign (belief_state) 184)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_189_to_270
        :parameters ()
        :precondition (and
            (= (belief_state) 189)
        )
        :effect (and
            (assign (belief_state) 270)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_189_to_97
        :parameters ()
        :precondition (and
            (= (belief_state) 189)
        )
        :effect (and
            (assign (belief_state) 97)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_190_to_272
        :parameters ()
        :precondition (and
            (= (belief_state) 190)
        )
        :effect (and
            (assign (belief_state) 272)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_190_to_189
        :parameters ()
        :precondition (and
            (= (belief_state) 190)
        )
        :effect (and
            (assign (belief_state) 189)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_190_to_100
        :parameters ()
        :precondition (and
            (= (belief_state) 190)
        )
        :effect (and
            (assign (belief_state) 100)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_191_to_91
        :parameters ()
        :precondition (and
            (= (belief_state) 191)
        )
        :effect (and
            (assign (belief_state) 91)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_191_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 191)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_191_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 191)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_192_to_343
        :parameters ()
        :precondition (and
            (= (belief_state) 192)
        )
        :effect (and
            (assign (belief_state) 343)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_192_to_351
        :parameters ()
        :precondition (and
            (= (belief_state) 192)
        )
        :effect (and
            (assign (belief_state) 351)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_193_to_348
        :parameters ()
        :precondition (and
            (= (belief_state) 193)
        )
        :effect (and
            (assign (belief_state) 348)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_193_to_192
        :parameters ()
        :precondition (and
            (= (belief_state) 193)
        )
        :effect (and
            (assign (belief_state) 192)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_193_to_352
        :parameters ()
        :precondition (and
            (= (belief_state) 193)
        )
        :effect (and
            (assign (belief_state) 352)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_194_to_277
        :parameters ()
        :precondition (and
            (= (belief_state) 194)
        )
        :effect (and
            (assign (belief_state) 277)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_194_to_353
        :parameters ()
        :precondition (and
            (= (belief_state) 194)
        )
        :effect (and
            (assign (belief_state) 353)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_194_to_353
        :parameters ()
        :precondition (and
            (= (belief_state) 194)
        )
        :effect (and
            (assign (belief_state) 353)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_194_to_92
        :parameters ()
        :precondition (and
            (= (belief_state) 194)
        )
        :effect (and
            (assign (belief_state) 92)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_195_to_92
        :parameters ()
        :precondition (and
            (= (belief_state) 195)
        )
        :effect (and
            (assign (belief_state) 92)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_195_to_355
        :parameters ()
        :precondition (and
            (= (belief_state) 195)
        )
        :effect (and
            (assign (belief_state) 355)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_195_to_355
        :parameters ()
        :precondition (and
            (= (belief_state) 195)
        )
        :effect (and
            (assign (belief_state) 355)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_195_to_354
        :parameters ()
        :precondition (and
            (= (belief_state) 195)
        )
        :effect (and
            (assign (belief_state) 354)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_196_to_356
        :parameters ()
        :precondition (and
            (= (belief_state) 196)
        )
        :effect (and
            (assign (belief_state) 356)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_196_to_357
        :parameters ()
        :precondition (and
            (= (belief_state) 196)
        )
        :effect (and
            (assign (belief_state) 357)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_197_to_284
        :parameters ()
        :precondition (and
            (= (belief_state) 197)
        )
        :effect (and
            (assign (belief_state) 284)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_197_to_358
        :parameters ()
        :precondition (and
            (= (belief_state) 197)
        )
        :effect (and
            (assign (belief_state) 358)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_197_to_359
        :parameters ()
        :precondition (and
            (= (belief_state) 197)
        )
        :effect (and
            (assign (belief_state) 359)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_197_to_93
        :parameters ()
        :precondition (and
            (= (belief_state) 197)
        )
        :effect (and
            (assign (belief_state) 93)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_198_to_93
        :parameters ()
        :precondition (and
            (= (belief_state) 198)
        )
        :effect (and
            (assign (belief_state) 93)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_198_to_361
        :parameters ()
        :precondition (and
            (= (belief_state) 198)
        )
        :effect (and
            (assign (belief_state) 361)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_198_to_362
        :parameters ()
        :precondition (and
            (= (belief_state) 198)
        )
        :effect (and
            (assign (belief_state) 362)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_198_to_360
        :parameters ()
        :precondition (and
            (= (belief_state) 198)
        )
        :effect (and
            (assign (belief_state) 360)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_199_to_292
        :parameters ()
        :precondition (and
            (= (belief_state) 199)
        )
        :effect (and
            (assign (belief_state) 292)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_199_to_98
        :parameters ()
        :precondition (and
            (= (belief_state) 199)
        )
        :effect (and
            (assign (belief_state) 98)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_200_to_294
        :parameters ()
        :precondition (and
            (= (belief_state) 200)
        )
        :effect (and
            (assign (belief_state) 294)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_200_to_199
        :parameters ()
        :precondition (and
            (= (belief_state) 200)
        )
        :effect (and
            (assign (belief_state) 199)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_200_to_101
        :parameters ()
        :precondition (and
            (= (belief_state) 200)
        )
        :effect (and
            (assign (belief_state) 101)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_201_to_95
        :parameters ()
        :precondition (and
            (= (belief_state) 201)
        )
        :effect (and
            (assign (belief_state) 95)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_201_to_363
        :parameters ()
        :precondition (and
            (= (belief_state) 201)
        )
        :effect (and
            (assign (belief_state) 363)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_201_to_184
        :parameters ()
        :precondition (and
            (= (belief_state) 201)
        )
        :effect (and
            (assign (belief_state) 184)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_202_to_344
        :parameters ()
        :precondition (and
            (= (belief_state) 202)
        )
        :effect (and
            (assign (belief_state) 344)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_202_to_364
        :parameters ()
        :precondition (and
            (= (belief_state) 202)
        )
        :effect (and
            (assign (belief_state) 364)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_203_to_349
        :parameters ()
        :precondition (and
            (= (belief_state) 203)
        )
        :effect (and
            (assign (belief_state) 349)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_203_to_202
        :parameters ()
        :precondition (and
            (= (belief_state) 203)
        )
        :effect (and
            (assign (belief_state) 202)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_203_to_365
        :parameters ()
        :precondition (and
            (= (belief_state) 203)
        )
        :effect (and
            (assign (belief_state) 365)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_204_to_96
        :parameters ()
        :precondition (and
            (= (belief_state) 204)
        )
        :effect (and
            (assign (belief_state) 96)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_204_to_366
        :parameters ()
        :precondition (and
            (= (belief_state) 204)
        )
        :effect (and
            (assign (belief_state) 366)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_204_to_367
        :parameters ()
        :precondition (and
            (= (belief_state) 204)
        )
        :effect (and
            (assign (belief_state) 367)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_205_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 205)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_205_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 205)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_206_to_369
        :parameters ()
        :precondition (and
            (= (belief_state) 206)
        )
        :effect (and
            (assign (belief_state) 369)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_206_to_205
        :parameters ()
        :precondition (and
            (= (belief_state) 206)
        )
        :effect (and
            (assign (belief_state) 205)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_206_to_370
        :parameters ()
        :precondition (and
            (= (belief_state) 206)
        )
        :effect (and
            (assign (belief_state) 370)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_207_to_97
        :parameters ()
        :precondition (and
            (= (belief_state) 207)
        )
        :effect (and
            (assign (belief_state) 97)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_207_to_205
        :parameters ()
        :precondition (and
            (= (belief_state) 207)
        )
        :effect (and
            (assign (belief_state) 205)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_207_to_372
        :parameters ()
        :precondition (and
            (= (belief_state) 207)
        )
        :effect (and
            (assign (belief_state) 372)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_207_to_371
        :parameters ()
        :precondition (and
            (= (belief_state) 207)
        )
        :effect (and
            (assign (belief_state) 371)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_208_to_353
        :parameters ()
        :precondition (and
            (= (belief_state) 208)
        )
        :effect (and
            (assign (belief_state) 353)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_208_to_374
        :parameters ()
        :precondition (and
            (= (belief_state) 208)
        )
        :effect (and
            (assign (belief_state) 374)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_208_to_373
        :parameters ()
        :precondition (and
            (= (belief_state) 208)
        )
        :effect (and
            (assign (belief_state) 373)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_209_to_358
        :parameters ()
        :precondition (and
            (= (belief_state) 209)
        )
        :effect (and
            (assign (belief_state) 358)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_209_to_374
        :parameters ()
        :precondition (and
            (= (belief_state) 209)
        )
        :effect (and
            (assign (belief_state) 374)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_209_to_375
        :parameters ()
        :precondition (and
            (= (belief_state) 209)
        )
        :effect (and
            (assign (belief_state) 375)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_210_to_98
        :parameters ()
        :precondition (and
            (= (belief_state) 210)
        )
        :effect (and
            (assign (belief_state) 98)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_210_to_275
        :parameters ()
        :precondition (and
            (= (belief_state) 210)
        )
        :effect (and
            (assign (belief_state) 275)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_210_to_377
        :parameters ()
        :precondition (and
            (= (belief_state) 210)
        )
        :effect (and
            (assign (belief_state) 377)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_210_to_376
        :parameters ()
        :precondition (and
            (= (belief_state) 210)
        )
        :effect (and
            (assign (belief_state) 376)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_211_to_99
        :parameters ()
        :precondition (and
            (= (belief_state) 211)
        )
        :effect (and
            (assign (belief_state) 99)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_211_to_378
        :parameters ()
        :precondition (and
            (= (belief_state) 211)
        )
        :effect (and
            (assign (belief_state) 378)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_211_to_184
        :parameters ()
        :precondition (and
            (= (belief_state) 211)
        )
        :effect (and
            (assign (belief_state) 184)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_212_to_379
        :parameters ()
        :precondition (and
            (= (belief_state) 212)
        )
        :effect (and
            (assign (belief_state) 379)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_212_to_380
        :parameters ()
        :precondition (and
            (= (belief_state) 212)
        )
        :effect (and
            (assign (belief_state) 380)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_213_to_381
        :parameters ()
        :precondition (and
            (= (belief_state) 213)
        )
        :effect (and
            (assign (belief_state) 381)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_213_to_212
        :parameters ()
        :precondition (and
            (= (belief_state) 213)
        )
        :effect (and
            (assign (belief_state) 212)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_213_to_382
        :parameters ()
        :precondition (and
            (= (belief_state) 213)
        )
        :effect (and
            (assign (belief_state) 382)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_214_to_100
        :parameters ()
        :precondition (and
            (= (belief_state) 214)
        )
        :effect (and
            (assign (belief_state) 100)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_214_to_384
        :parameters ()
        :precondition (and
            (= (belief_state) 214)
        )
        :effect (and
            (assign (belief_state) 384)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_214_to_385
        :parameters ()
        :precondition (and
            (= (belief_state) 214)
        )
        :effect (and
            (assign (belief_state) 385)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_214_to_383
        :parameters ()
        :precondition (and
            (= (belief_state) 214)
        )
        :effect (and
            (assign (belief_state) 383)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_215_to_359
        :parameters ()
        :precondition (and
            (= (belief_state) 215)
        )
        :effect (and
            (assign (belief_state) 359)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_215_to_374
        :parameters ()
        :precondition (and
            (= (belief_state) 215)
        )
        :effect (and
            (assign (belief_state) 374)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_215_to_386
        :parameters ()
        :precondition (and
            (= (belief_state) 215)
        )
        :effect (and
            (assign (belief_state) 386)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_216_to_101
        :parameters ()
        :precondition (and
            (= (belief_state) 216)
        )
        :effect (and
            (assign (belief_state) 101)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_216_to_388
        :parameters ()
        :precondition (and
            (= (belief_state) 216)
        )
        :effect (and
            (assign (belief_state) 388)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_216_to_340
        :parameters ()
        :precondition (and
            (= (belief_state) 216)
        )
        :effect (and
            (assign (belief_state) 340)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_216_to_387
        :parameters ()
        :precondition (and
            (= (belief_state) 216)
        )
        :effect (and
            (assign (belief_state) 387)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_217_to_389
        :parameters ()
        :precondition (and
            (= (belief_state) 217)
        )
        :effect (and
            (assign (belief_state) 389)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_217_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 217)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_217_to_390
        :parameters ()
        :precondition (and
            (= (belief_state) 217)
        )
        :effect (and
            (assign (belief_state) 390)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_218_to_391
        :parameters ()
        :precondition (and
            (= (belief_state) 218)
        )
        :effect (and
            (assign (belief_state) 391)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_218_to_392
        :parameters ()
        :precondition (and
            (= (belief_state) 218)
        )
        :effect (and
            (assign (belief_state) 392)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_218_to_393
        :parameters ()
        :precondition (and
            (= (belief_state) 218)
        )
        :effect (and
            (assign (belief_state) 393)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_218_to_103
        :parameters ()
        :precondition (and
            (= (belief_state) 218)
        )
        :effect (and
            (assign (belief_state) 103)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_219_to_103
        :parameters ()
        :precondition (and
            (= (belief_state) 219)
        )
        :effect (and
            (assign (belief_state) 103)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_219_to_394
        :parameters ()
        :precondition (and
            (= (belief_state) 219)
        )
        :effect (and
            (assign (belief_state) 394)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_219_to_124
        :parameters ()
        :precondition (and
            (= (belief_state) 219)
        )
        :effect (and
            (assign (belief_state) 124)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_220_to_395
        :parameters ()
        :precondition (and
            (= (belief_state) 220)
        )
        :effect (and
            (assign (belief_state) 395)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_220_to_396
        :parameters ()
        :precondition (and
            (= (belief_state) 220)
        )
        :effect (and
            (assign (belief_state) 396)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_220_to_397
        :parameters ()
        :precondition (and
            (= (belief_state) 220)
        )
        :effect (and
            (assign (belief_state) 397)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_220_to_104
        :parameters ()
        :precondition (and
            (= (belief_state) 220)
        )
        :effect (and
            (assign (belief_state) 104)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_221_to_104
        :parameters ()
        :precondition (and
            (= (belief_state) 221)
        )
        :effect (and
            (assign (belief_state) 104)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_221_to_398
        :parameters ()
        :precondition (and
            (= (belief_state) 221)
        )
        :effect (and
            (assign (belief_state) 398)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_221_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 221)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_222_to_271
        :parameters ()
        :precondition (and
            (= (belief_state) 222)
        )
        :effect (and
            (assign (belief_state) 271)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_222_to_111
        :parameters ()
        :precondition (and
            (= (belief_state) 222)
        )
        :effect (and
            (assign (belief_state) 111)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_223_to_273
        :parameters ()
        :precondition (and
            (= (belief_state) 223)
        )
        :effect (and
            (assign (belief_state) 273)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_223_to_222
        :parameters ()
        :precondition (and
            (= (belief_state) 223)
        )
        :effect (and
            (assign (belief_state) 222)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_223_to_114
        :parameters ()
        :precondition (and
            (= (belief_state) 223)
        )
        :effect (and
            (assign (belief_state) 114)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_224_to_106
        :parameters ()
        :precondition (and
            (= (belief_state) 224)
        )
        :effect (and
            (assign (belief_state) 106)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_224_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 224)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_224_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 224)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_225_to_392
        :parameters ()
        :precondition (and
            (= (belief_state) 225)
        )
        :effect (and
            (assign (belief_state) 392)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_225_to_399
        :parameters ()
        :precondition (and
            (= (belief_state) 225)
        )
        :effect (and
            (assign (belief_state) 399)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_226_to_396
        :parameters ()
        :precondition (and
            (= (belief_state) 226)
        )
        :effect (and
            (assign (belief_state) 396)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_226_to_225
        :parameters ()
        :precondition (and
            (= (belief_state) 226)
        )
        :effect (and
            (assign (belief_state) 225)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_226_to_400
        :parameters ()
        :precondition (and
            (= (belief_state) 226)
        )
        :effect (and
            (assign (belief_state) 400)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_227_to_285
        :parameters ()
        :precondition (and
            (= (belief_state) 227)
        )
        :effect (and
            (assign (belief_state) 285)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_227_to_401
        :parameters ()
        :precondition (and
            (= (belief_state) 227)
        )
        :effect (and
            (assign (belief_state) 401)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_227_to_402
        :parameters ()
        :precondition (and
            (= (belief_state) 227)
        )
        :effect (and
            (assign (belief_state) 402)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_227_to_107
        :parameters ()
        :precondition (and
            (= (belief_state) 227)
        )
        :effect (and
            (assign (belief_state) 107)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_228_to_107
        :parameters ()
        :precondition (and
            (= (belief_state) 228)
        )
        :effect (and
            (assign (belief_state) 107)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_228_to_404
        :parameters ()
        :precondition (and
            (= (belief_state) 228)
        )
        :effect (and
            (assign (belief_state) 404)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_228_to_405
        :parameters ()
        :precondition (and
            (= (belief_state) 228)
        )
        :effect (and
            (assign (belief_state) 405)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_228_to_403
        :parameters ()
        :precondition (and
            (= (belief_state) 228)
        )
        :effect (and
            (assign (belief_state) 403)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_229_to_293
        :parameters ()
        :precondition (and
            (= (belief_state) 229)
        )
        :effect (and
            (assign (belief_state) 293)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_229_to_112
        :parameters ()
        :precondition (and
            (= (belief_state) 229)
        )
        :effect (and
            (assign (belief_state) 112)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_230_to_295
        :parameters ()
        :precondition (and
            (= (belief_state) 230)
        )
        :effect (and
            (assign (belief_state) 295)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_230_to_229
        :parameters ()
        :precondition (and
            (= (belief_state) 230)
        )
        :effect (and
            (assign (belief_state) 229)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_230_to_115
        :parameters ()
        :precondition (and
            (= (belief_state) 230)
        )
        :effect (and
            (assign (belief_state) 115)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_231_to_109
        :parameters ()
        :precondition (and
            (= (belief_state) 231)
        )
        :effect (and
            (assign (belief_state) 109)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_231_to_406
        :parameters ()
        :precondition (and
            (= (belief_state) 231)
        )
        :effect (and
            (assign (belief_state) 406)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_231_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 231)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_232_to_393
        :parameters ()
        :precondition (and
            (= (belief_state) 232)
        )
        :effect (and
            (assign (belief_state) 393)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_232_to_407
        :parameters ()
        :precondition (and
            (= (belief_state) 232)
        )
        :effect (and
            (assign (belief_state) 407)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_233_to_397
        :parameters ()
        :precondition (and
            (= (belief_state) 233)
        )
        :effect (and
            (assign (belief_state) 397)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_233_to_232
        :parameters ()
        :precondition (and
            (= (belief_state) 233)
        )
        :effect (and
            (assign (belief_state) 232)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_233_to_408
        :parameters ()
        :precondition (and
            (= (belief_state) 233)
        )
        :effect (and
            (assign (belief_state) 408)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_234_to_110
        :parameters ()
        :precondition (and
            (= (belief_state) 234)
        )
        :effect (and
            (assign (belief_state) 110)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_234_to_409
        :parameters ()
        :precondition (and
            (= (belief_state) 234)
        )
        :effect (and
            (assign (belief_state) 409)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_234_to_157
        :parameters ()
        :precondition (and
            (= (belief_state) 234)
        )
        :effect (and
            (assign (belief_state) 157)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_235_to_410
        :parameters ()
        :precondition (and
            (= (belief_state) 235)
        )
        :effect (and
            (assign (belief_state) 410)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_235_to_411
        :parameters ()
        :precondition (and
            (= (belief_state) 235)
        )
        :effect (and
            (assign (belief_state) 411)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_236_to_412
        :parameters ()
        :precondition (and
            (= (belief_state) 236)
        )
        :effect (and
            (assign (belief_state) 412)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_236_to_235
        :parameters ()
        :precondition (and
            (= (belief_state) 236)
        )
        :effect (and
            (assign (belief_state) 235)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_236_to_413
        :parameters ()
        :precondition (and
            (= (belief_state) 236)
        )
        :effect (and
            (assign (belief_state) 413)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_237_to_111
        :parameters ()
        :precondition (and
            (= (belief_state) 237)
        )
        :effect (and
            (assign (belief_state) 111)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_237_to_415
        :parameters ()
        :precondition (and
            (= (belief_state) 237)
        )
        :effect (and
            (assign (belief_state) 415)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_237_to_416
        :parameters ()
        :precondition (and
            (= (belief_state) 237)
        )
        :effect (and
            (assign (belief_state) 416)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_237_to_414
        :parameters ()
        :precondition (and
            (= (belief_state) 237)
        )
        :effect (and
            (assign (belief_state) 414)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_238_to_401
        :parameters ()
        :precondition (and
            (= (belief_state) 238)
        )
        :effect (and
            (assign (belief_state) 401)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_238_to_374
        :parameters ()
        :precondition (and
            (= (belief_state) 238)
        )
        :effect (and
            (assign (belief_state) 374)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_238_to_417
        :parameters ()
        :precondition (and
            (= (belief_state) 238)
        )
        :effect (and
            (assign (belief_state) 417)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_239_to_112
        :parameters ()
        :precondition (and
            (= (belief_state) 239)
        )
        :effect (and
            (assign (belief_state) 112)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_239_to_419
        :parameters ()
        :precondition (and
            (= (belief_state) 239)
        )
        :effect (and
            (assign (belief_state) 419)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_239_to_302
        :parameters ()
        :precondition (and
            (= (belief_state) 239)
        )
        :effect (and
            (assign (belief_state) 302)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_239_to_418
        :parameters ()
        :precondition (and
            (= (belief_state) 239)
        )
        :effect (and
            (assign (belief_state) 418)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_240_to_113
        :parameters ()
        :precondition (and
            (= (belief_state) 240)
        )
        :effect (and
            (assign (belief_state) 113)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_240_to_420
        :parameters ()
        :precondition (and
            (= (belief_state) 240)
        )
        :effect (and
            (assign (belief_state) 420)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_240_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 240)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_241_to_421
        :parameters ()
        :precondition (and
            (= (belief_state) 241)
        )
        :effect (and
            (assign (belief_state) 421)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_241_to_422
        :parameters ()
        :precondition (and
            (= (belief_state) 241)
        )
        :effect (and
            (assign (belief_state) 422)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_242_to_423
        :parameters ()
        :precondition (and
            (= (belief_state) 242)
        )
        :effect (and
            (assign (belief_state) 423)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_242_to_241
        :parameters ()
        :precondition (and
            (= (belief_state) 242)
        )
        :effect (and
            (assign (belief_state) 241)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_242_to_424
        :parameters ()
        :precondition (and
            (= (belief_state) 242)
        )
        :effect (and
            (assign (belief_state) 424)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_243_to_114
        :parameters ()
        :precondition (and
            (= (belief_state) 243)
        )
        :effect (and
            (assign (belief_state) 114)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_243_to_426
        :parameters ()
        :precondition (and
            (= (belief_state) 243)
        )
        :effect (and
            (assign (belief_state) 426)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_243_to_427
        :parameters ()
        :precondition (and
            (= (belief_state) 243)
        )
        :effect (and
            (assign (belief_state) 427)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_243_to_425
        :parameters ()
        :precondition (and
            (= (belief_state) 243)
        )
        :effect (and
            (assign (belief_state) 425)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_244_to_402
        :parameters ()
        :precondition (and
            (= (belief_state) 244)
        )
        :effect (and
            (assign (belief_state) 402)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_244_to_374
        :parameters ()
        :precondition (and
            (= (belief_state) 244)
        )
        :effect (and
            (assign (belief_state) 374)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_244_to_428
        :parameters ()
        :precondition (and
            (= (belief_state) 244)
        )
        :effect (and
            (assign (belief_state) 428)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_245_to_115
        :parameters ()
        :precondition (and
            (= (belief_state) 245)
        )
        :effect (and
            (assign (belief_state) 115)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_245_to_251
        :parameters ()
        :precondition (and
            (= (belief_state) 245)
        )
        :effect (and
            (assign (belief_state) 251)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_245_to_118
        :parameters ()
        :precondition (and
            (= (belief_state) 245)
        )
        :effect (and
            (assign (belief_state) 118)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_245_to_429
        :parameters ()
        :precondition (and
            (= (belief_state) 245)
        )
        :effect (and
            (assign (belief_state) 429)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_246_to_430
        :parameters ()
        :precondition (and
            (= (belief_state) 246)
        )
        :effect (and
            (assign (belief_state) 430)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_246_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 246)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_246_to_431
        :parameters ()
        :precondition (and
            (= (belief_state) 246)
        )
        :effect (and
            (assign (belief_state) 431)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_246_to_116
        :parameters ()
        :precondition (and
            (= (belief_state) 246)
        )
        :effect (and
            (assign (belief_state) 116)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_247_to_432
        :parameters ()
        :precondition (and
            (= (belief_state) 247)
        )
        :effect (and
            (assign (belief_state) 432)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_247_to_123
        :parameters ()
        :precondition (and
            (= (belief_state) 247)
        )
        :effect (and
            (assign (belief_state) 123)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_248_to_433
        :parameters ()
        :precondition (and
            (= (belief_state) 248)
        )
        :effect (and
            (assign (belief_state) 433)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_248_to_247
        :parameters ()
        :precondition (and
            (= (belief_state) 248)
        )
        :effect (and
            (assign (belief_state) 247)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_248_to_128
        :parameters ()
        :precondition (and
            (= (belief_state) 248)
        )
        :effect (and
            (assign (belief_state) 128)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_249_to_434
        :parameters ()
        :precondition (and
            (= (belief_state) 249)
        )
        :effect (and
            (assign (belief_state) 434)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_249_to_435
        :parameters ()
        :precondition (and
            (= (belief_state) 249)
        )
        :effect (and
            (assign (belief_state) 435)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_249_to_436
        :parameters ()
        :precondition (and
            (= (belief_state) 249)
        )
        :effect (and
            (assign (belief_state) 436)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_249_to_117
        :parameters ()
        :precondition (and
            (= (belief_state) 249)
        )
        :effect (and
            (assign (belief_state) 117)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_250_to_437
        :parameters ()
        :precondition (and
            (= (belief_state) 250)
        )
        :effect (and
            (assign (belief_state) 437)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_250_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 250)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_250_to_118
        :parameters ()
        :precondition (and
            (= (belief_state) 250)
        )
        :effect (and
            (assign (belief_state) 118)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_251_to_439
        :parameters ()
        :precondition (and
            (= (belief_state) 251)
        )
        :effect (and
            (assign (belief_state) 439)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_251_to_124
        :parameters ()
        :precondition (and
            (= (belief_state) 251)
        )
        :effect (and
            (assign (belief_state) 124)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_252_to_440
        :parameters ()
        :precondition (and
            (= (belief_state) 252)
        )
        :effect (and
            (assign (belief_state) 440)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_252_to_441
        :parameters ()
        :precondition (and
            (= (belief_state) 252)
        )
        :effect (and
            (assign (belief_state) 441)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_252_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 252)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_253_to_442
        :parameters ()
        :precondition (and
            (= (belief_state) 253)
        )
        :effect (and
            (assign (belief_state) 442)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_254_to_443
        :parameters ()
        :precondition (and
            (= (belief_state) 254)
        )
        :effect (and
            (assign (belief_state) 443)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_254_to_444
        :parameters ()
        :precondition (and
            (= (belief_state) 254)
        )
        :effect (and
            (assign (belief_state) 444)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_254_to_120
        :parameters ()
        :precondition (and
            (= (belief_state) 254)
        )
        :effect (and
            (assign (belief_state) 120)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_255_to_445
        :parameters ()
        :precondition (and
            (= (belief_state) 255)
        )
        :effect (and
            (assign (belief_state) 445)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_255_to_158
        :parameters ()
        :precondition (and
            (= (belief_state) 255)
        )
        :effect (and
            (assign (belief_state) 158)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_256_to_446
        :parameters ()
        :precondition (and
            (= (belief_state) 256)
        )
        :effect (and
            (assign (belief_state) 446)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_256_to_255
        :parameters ()
        :precondition (and
            (= (belief_state) 256)
        )
        :effect (and
            (assign (belief_state) 255)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_256_to_172
        :parameters ()
        :precondition (and
            (= (belief_state) 256)
        )
        :effect (and
            (assign (belief_state) 172)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_257_to_447
        :parameters ()
        :precondition (and
            (= (belief_state) 257)
        )
        :effect (and
            (assign (belief_state) 447)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_257_to_448
        :parameters ()
        :precondition (and
            (= (belief_state) 257)
        )
        :effect (and
            (assign (belief_state) 448)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_257_to_449
        :parameters ()
        :precondition (and
            (= (belief_state) 257)
        )
        :effect (and
            (assign (belief_state) 449)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_257_to_121
        :parameters ()
        :precondition (and
            (= (belief_state) 257)
        )
        :effect (and
            (assign (belief_state) 121)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_258_to_450
        :parameters ()
        :precondition (and
            (= (belief_state) 258)
        )
        :effect (and
            (assign (belief_state) 450)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_258_to_451
        :parameters ()
        :precondition (and
            (= (belief_state) 258)
        )
        :effect (and
            (assign (belief_state) 451)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_258_to_140
        :parameters ()
        :precondition (and
            (= (belief_state) 258)
        )
        :effect (and
            (assign (belief_state) 140)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_259_to_452
        :parameters ()
        :precondition (and
            (= (belief_state) 259)
        )
        :effect (and
            (assign (belief_state) 452)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_259_to_451
        :parameters ()
        :precondition (and
            (= (belief_state) 259)
        )
        :effect (and
            (assign (belief_state) 451)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_259_to_147
        :parameters ()
        :precondition (and
            (= (belief_state) 259)
        )
        :effect (and
            (assign (belief_state) 147)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_260_to_453
        :parameters ()
        :precondition (and
            (= (belief_state) 260)
        )
        :effect (and
            (assign (belief_state) 453)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_260_to_454
        :parameters ()
        :precondition (and
            (= (belief_state) 260)
        )
        :effect (and
            (assign (belief_state) 454)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_260_to_455
        :parameters ()
        :precondition (and
            (= (belief_state) 260)
        )
        :effect (and
            (assign (belief_state) 455)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_260_to_122
        :parameters ()
        :precondition (and
            (= (belief_state) 260)
        )
        :effect (and
            (assign (belief_state) 122)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_261_to_435
        :parameters ()
        :precondition (and
            (= (belief_state) 261)
        )
        :effect (and
            (assign (belief_state) 435)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_261_to_262
        :parameters ()
        :precondition (and
            (= (belief_state) 261)
        )
        :effect (and
            (assign (belief_state) 262)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_262_to_441
        :parameters ()
        :precondition (and
            (= (belief_state) 262)
        )
        :effect (and
            (assign (belief_state) 441)
            (assign (goal_reached) 'f')
        )
    )

    (:action save_princess_room5__from_262_to_456
        :parameters ()
        :precondition (and
            (= (belief_state) 262)
        )
        :effect (and
            (assign (belief_state) 456)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_263_to_457
        :parameters ()
        :precondition (and
            (= (belief_state) 263)
        )
        :effect (and
            (assign (belief_state) 457)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_263_to_458
        :parameters ()
        :precondition (and
            (= (belief_state) 263)
        )
        :effect (and
            (assign (belief_state) 458)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_263_to_125
        :parameters ()
        :precondition (and
            (= (belief_state) 263)
        )
        :effect (and
            (assign (belief_state) 125)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_264_to_459
        :parameters ()
        :precondition (and
            (= (belief_state) 264)
        )
        :effect (and
            (assign (belief_state) 459)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_264_to_160
        :parameters ()
        :precondition (and
            (= (belief_state) 264)
        )
        :effect (and
            (assign (belief_state) 160)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_265_to_460
        :parameters ()
        :precondition (and
            (= (belief_state) 265)
        )
        :effect (and
            (assign (belief_state) 460)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_265_to_264
        :parameters ()
        :precondition (and
            (= (belief_state) 265)
        )
        :effect (and
            (assign (belief_state) 264)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_265_to_174
        :parameters ()
        :precondition (and
            (= (belief_state) 265)
        )
        :effect (and
            (assign (belief_state) 174)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_266_to_461
        :parameters ()
        :precondition (and
            (= (belief_state) 266)
        )
        :effect (and
            (assign (belief_state) 461)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_266_to_462
        :parameters ()
        :precondition (and
            (= (belief_state) 266)
        )
        :effect (and
            (assign (belief_state) 462)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_266_to_463
        :parameters ()
        :precondition (and
            (= (belief_state) 266)
        )
        :effect (and
            (assign (belief_state) 463)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_266_to_126
        :parameters ()
        :precondition (and
            (= (belief_state) 266)
        )
        :effect (and
            (assign (belief_state) 126)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_267_to_464
        :parameters ()
        :precondition (and
            (= (belief_state) 267)
        )
        :effect (and
            (assign (belief_state) 464)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_267_to_451
        :parameters ()
        :precondition (and
            (= (belief_state) 267)
        )
        :effect (and
            (assign (belief_state) 451)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_267_to_148
        :parameters ()
        :precondition (and
            (= (belief_state) 267)
        )
        :effect (and
            (assign (belief_state) 148)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_268_to_465
        :parameters ()
        :precondition (and
            (= (belief_state) 268)
        )
        :effect (and
            (assign (belief_state) 465)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_268_to_466
        :parameters ()
        :precondition (and
            (= (belief_state) 268)
        )
        :effect (and
            (assign (belief_state) 466)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_268_to_467
        :parameters ()
        :precondition (and
            (= (belief_state) 268)
        )
        :effect (and
            (assign (belief_state) 467)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_268_to_127
        :parameters ()
        :precondition (and
            (= (belief_state) 268)
        )
        :effect (and
            (assign (belief_state) 127)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_269_to_436
        :parameters ()
        :precondition (and
            (= (belief_state) 269)
        )
        :effect (and
            (assign (belief_state) 436)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_269_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 269)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_270_to_189
        :parameters ()
        :precondition (and
            (= (belief_state) 270)
        )
        :effect (and
            (assign (belief_state) 189)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_271_to_270
        :parameters ()
        :precondition (and
            (= (belief_state) 271)
        )
        :effect (and
            (assign (belief_state) 270)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_271_to_222
        :parameters ()
        :precondition (and
            (= (belief_state) 271)
        )
        :effect (and
            (assign (belief_state) 222)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_272_to_190
        :parameters ()
        :precondition (and
            (= (belief_state) 272)
        )
        :effect (and
            (assign (belief_state) 190)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_273_to_272
        :parameters ()
        :precondition (and
            (= (belief_state) 273)
        )
        :effect (and
            (assign (belief_state) 272)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_273_to_223
        :parameters ()
        :precondition (and
            (= (belief_state) 273)
        )
        :effect (and
            (assign (belief_state) 223)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_274_to_468
        :parameters ()
        :precondition (and
            (= (belief_state) 274)
        )
        :effect (and
            (assign (belief_state) 468)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_274_to_276
        :parameters ()
        :precondition (and
            (= (belief_state) 274)
        )
        :effect (and
            (assign (belief_state) 276)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_275_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 275)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_275_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 275)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_276_to_469
        :parameters ()
        :precondition (and
            (= (belief_state) 276)
        )
        :effect (and
            (assign (belief_state) 469)
            (assign (goal_reached) 'f')
        )
    )

    (:action save_princess_room5__from_276_to_470
        :parameters ()
        :precondition (and
            (= (belief_state) 276)
        )
        :effect (and
            (assign (belief_state) 470)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room1_room2__from_277_to_194
        :parameters ()
        :precondition (and
            (= (belief_state) 277)
        )
        :effect (and
            (assign (belief_state) 194)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_278_to_471
        :parameters ()
        :precondition (and
            (= (belief_state) 278)
        )
        :effect (and
            (assign (belief_state) 471)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_278_to_471
        :parameters ()
        :precondition (and
            (= (belief_state) 278)
        )
        :effect (and
            (assign (belief_state) 471)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_278_to_138
        :parameters ()
        :precondition (and
            (= (belief_state) 278)
        )
        :effect (and
            (assign (belief_state) 138)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_279_to_140
        :parameters ()
        :precondition (and
            (= (belief_state) 279)
        )
        :effect (and
            (assign (belief_state) 140)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_279_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 279)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_279_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 279)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_280_to_472
        :parameters ()
        :precondition (and
            (= (belief_state) 280)
        )
        :effect (and
            (assign (belief_state) 472)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_280_to_472
        :parameters ()
        :precondition (and
            (= (belief_state) 280)
        )
        :effect (and
            (assign (belief_state) 472)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_280_to_141
        :parameters ()
        :precondition (and
            (= (belief_state) 280)
        )
        :effect (and
            (assign (belief_state) 141)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_281_to_473
        :parameters ()
        :precondition (and
            (= (belief_state) 281)
        )
        :effect (and
            (assign (belief_state) 473)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_281_to_166
        :parameters ()
        :precondition (and
            (= (belief_state) 281)
        )
        :effect (and
            (assign (belief_state) 166)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_282_to_142
        :parameters ()
        :precondition (and
            (= (belief_state) 282)
        )
        :effect (and
            (assign (belief_state) 142)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_282_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 282)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_282_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 282)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_283_to_451
        :parameters ()
        :precondition (and
            (= (belief_state) 283)
        )
        :effect (and
            (assign (belief_state) 451)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_283_to_474
        :parameters ()
        :precondition (and
            (= (belief_state) 283)
        )
        :effect (and
            (assign (belief_state) 474)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_284_to_197
        :parameters ()
        :precondition (and
            (= (belief_state) 284)
        )
        :effect (and
            (assign (belief_state) 197)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_285_to_284
        :parameters ()
        :precondition (and
            (= (belief_state) 285)
        )
        :effect (and
            (assign (belief_state) 284)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_285_to_227
        :parameters ()
        :precondition (and
            (= (belief_state) 285)
        )
        :effect (and
            (assign (belief_state) 227)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_286_to_475
        :parameters ()
        :precondition (and
            (= (belief_state) 286)
        )
        :effect (and
            (assign (belief_state) 475)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_286_to_476
        :parameters ()
        :precondition (and
            (= (belief_state) 286)
        )
        :effect (and
            (assign (belief_state) 476)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_286_to_144
        :parameters ()
        :precondition (and
            (= (belief_state) 286)
        )
        :effect (and
            (assign (belief_state) 144)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_287_to_477
        :parameters ()
        :precondition (and
            (= (belief_state) 287)
        )
        :effect (and
            (assign (belief_state) 477)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_287_to_478
        :parameters ()
        :precondition (and
            (= (belief_state) 287)
        )
        :effect (and
            (assign (belief_state) 478)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_287_to_145
        :parameters ()
        :precondition (and
            (= (belief_state) 287)
        )
        :effect (and
            (assign (belief_state) 145)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_288_to_479
        :parameters ()
        :precondition (and
            (= (belief_state) 288)
        )
        :effect (and
            (assign (belief_state) 479)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_288_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 288)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_288_to_480
        :parameters ()
        :precondition (and
            (= (belief_state) 288)
        )
        :effect (and
            (assign (belief_state) 480)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_289_to_481
        :parameters ()
        :precondition (and
            (= (belief_state) 289)
        )
        :effect (and
            (assign (belief_state) 481)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_289_to_482
        :parameters ()
        :precondition (and
            (= (belief_state) 289)
        )
        :effect (and
            (assign (belief_state) 482)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_290_to_147
        :parameters ()
        :precondition (and
            (= (belief_state) 290)
        )
        :effect (and
            (assign (belief_state) 147)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_290_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 290)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_290_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 290)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_291_to_148
        :parameters ()
        :precondition (and
            (= (belief_state) 291)
        )
        :effect (and
            (assign (belief_state) 148)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_291_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 291)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_291_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 291)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_292_to_199
        :parameters ()
        :precondition (and
            (= (belief_state) 292)
        )
        :effect (and
            (assign (belief_state) 199)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_293_to_292
        :parameters ()
        :precondition (and
            (= (belief_state) 293)
        )
        :effect (and
            (assign (belief_state) 292)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_293_to_229
        :parameters ()
        :precondition (and
            (= (belief_state) 293)
        )
        :effect (and
            (assign (belief_state) 229)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_294_to_200
        :parameters ()
        :precondition (and
            (= (belief_state) 294)
        )
        :effect (and
            (assign (belief_state) 200)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_295_to_294
        :parameters ()
        :precondition (and
            (= (belief_state) 295)
        )
        :effect (and
            (assign (belief_state) 294)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_295_to_230
        :parameters ()
        :precondition (and
            (= (belief_state) 295)
        )
        :effect (and
            (assign (belief_state) 230)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_296_to_431
        :parameters ()
        :precondition (and
            (= (belief_state) 296)
        )
        :effect (and
            (assign (belief_state) 431)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_296_to_483
        :parameters ()
        :precondition (and
            (= (belief_state) 296)
        )
        :effect (and
            (assign (belief_state) 483)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_296_to_484
        :parameters ()
        :precondition (and
            (= (belief_state) 296)
        )
        :effect (and
            (assign (belief_state) 484)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_296_to_153
        :parameters ()
        :precondition (and
            (= (belief_state) 296)
        )
        :effect (and
            (assign (belief_state) 153)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_297_to_485
        :parameters ()
        :precondition (and
            (= (belief_state) 297)
        )
        :effect (and
            (assign (belief_state) 485)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_297_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 297)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_298_to_483
        :parameters ()
        :precondition (and
            (= (belief_state) 298)
        )
        :effect (and
            (assign (belief_state) 483)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_298_to_124
        :parameters ()
        :precondition (and
            (= (belief_state) 298)
        )
        :effect (and
            (assign (belief_state) 124)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_298_to_486
        :parameters ()
        :precondition (and
            (= (belief_state) 298)
        )
        :effect (and
            (assign (belief_state) 486)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_299_to_484
        :parameters ()
        :precondition (and
            (= (belief_state) 299)
        )
        :effect (and
            (assign (belief_state) 484)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_299_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 299)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_299_to_487
        :parameters ()
        :precondition (and
            (= (belief_state) 299)
        )
        :effect (and
            (assign (belief_state) 487)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_300_to_488
        :parameters ()
        :precondition (and
            (= (belief_state) 300)
        )
        :effect (and
            (assign (belief_state) 488)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_300_to_489
        :parameters ()
        :precondition (and
            (= (belief_state) 300)
        )
        :effect (and
            (assign (belief_state) 489)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_300_to_490
        :parameters ()
        :precondition (and
            (= (belief_state) 300)
        )
        :effect (and
            (assign (belief_state) 490)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_300_to_156
        :parameters ()
        :precondition (and
            (= (belief_state) 300)
        )
        :effect (and
            (assign (belief_state) 156)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_301_to_491
        :parameters ()
        :precondition (and
            (= (belief_state) 301)
        )
        :effect (and
            (assign (belief_state) 491)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_301_to_303
        :parameters ()
        :precondition (and
            (= (belief_state) 301)
        )
        :effect (and
            (assign (belief_state) 303)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_302_to_492
        :parameters ()
        :precondition (and
            (= (belief_state) 302)
        )
        :effect (and
            (assign (belief_state) 492)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_302_to_419
        :parameters ()
        :precondition (and
            (= (belief_state) 302)
        )
        :effect (and
            (assign (belief_state) 419)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_302_to_157
        :parameters ()
        :precondition (and
            (= (belief_state) 302)
        )
        :effect (and
            (assign (belief_state) 157)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_303_to_493
        :parameters ()
        :precondition (and
            (= (belief_state) 303)
        )
        :effect (and
            (assign (belief_state) 493)
            (assign (goal_reached) 'f')
        )
    )

    (:action save_princess_room5__from_303_to_494
        :parameters ()
        :precondition (and
            (= (belief_state) 303)
        )
        :effect (and
            (assign (belief_state) 494)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_304_to_448
        :parameters ()
        :precondition (and
            (= (belief_state) 304)
        )
        :effect (and
            (assign (belief_state) 448)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_304_to_495
        :parameters ()
        :precondition (and
            (= (belief_state) 304)
        )
        :effect (and
            (assign (belief_state) 495)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_304_to_496
        :parameters ()
        :precondition (and
            (= (belief_state) 304)
        )
        :effect (and
            (assign (belief_state) 496)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_304_to_163
        :parameters ()
        :precondition (and
            (= (belief_state) 304)
        )
        :effect (and
            (assign (belief_state) 163)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_305_to_454
        :parameters ()
        :precondition (and
            (= (belief_state) 305)
        )
        :effect (and
            (assign (belief_state) 454)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_305_to_495
        :parameters ()
        :precondition (and
            (= (belief_state) 305)
        )
        :effect (and
            (assign (belief_state) 495)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_305_to_169
        :parameters ()
        :precondition (and
            (= (belief_state) 305)
        )
        :effect (and
            (assign (belief_state) 169)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_306_to_489
        :parameters ()
        :precondition (and
            (= (belief_state) 306)
        )
        :effect (and
            (assign (belief_state) 489)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_306_to_307
        :parameters ()
        :precondition (and
            (= (belief_state) 306)
        )
        :effect (and
            (assign (belief_state) 307)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_306_to_497
        :parameters ()
        :precondition (and
            (= (belief_state) 306)
        )
        :effect (and
            (assign (belief_state) 497)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_307_to_419
        :parameters ()
        :precondition (and
            (= (belief_state) 307)
        )
        :effect (and
            (assign (belief_state) 419)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_307_to_498
        :parameters ()
        :precondition (and
            (= (belief_state) 307)
        )
        :effect (and
            (assign (belief_state) 498)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_308_to_462
        :parameters ()
        :precondition (and
            (= (belief_state) 308)
        )
        :effect (and
            (assign (belief_state) 462)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_308_to_495
        :parameters ()
        :precondition (and
            (= (belief_state) 308)
        )
        :effect (and
            (assign (belief_state) 495)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_308_to_499
        :parameters ()
        :precondition (and
            (= (belief_state) 308)
        )
        :effect (and
            (assign (belief_state) 499)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_308_to_164
        :parameters ()
        :precondition (and
            (= (belief_state) 308)
        )
        :effect (and
            (assign (belief_state) 164)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_309_to_466
        :parameters ()
        :precondition (and
            (= (belief_state) 309)
        )
        :effect (and
            (assign (belief_state) 466)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_309_to_495
        :parameters ()
        :precondition (and
            (= (belief_state) 309)
        )
        :effect (and
            (assign (belief_state) 495)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_309_to_170
        :parameters ()
        :precondition (and
            (= (belief_state) 309)
        )
        :effect (and
            (assign (belief_state) 170)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_310_to_490
        :parameters ()
        :precondition (and
            (= (belief_state) 310)
        )
        :effect (and
            (assign (belief_state) 490)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_310_to_157
        :parameters ()
        :precondition (and
            (= (belief_state) 310)
        )
        :effect (and
            (assign (belief_state) 157)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_310_to_500
        :parameters ()
        :precondition (and
            (= (belief_state) 310)
        )
        :effect (and
            (assign (belief_state) 500)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_311_to_163
        :parameters ()
        :precondition (and
            (= (belief_state) 311)
        )
        :effect (and
            (assign (belief_state) 163)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_311_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 311)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_311_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 311)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_312_to_164
        :parameters ()
        :precondition (and
            (= (belief_state) 312)
        )
        :effect (and
            (assign (belief_state) 164)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_312_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 312)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_312_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 312)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_313_to_165
        :parameters ()
        :precondition (and
            (= (belief_state) 313)
        )
        :effect (and
            (assign (belief_state) 165)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_313_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 313)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_313_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 313)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_314_to_495
        :parameters ()
        :precondition (and
            (= (belief_state) 314)
        )
        :effect (and
            (assign (belief_state) 495)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_314_to_501
        :parameters ()
        :precondition (and
            (= (belief_state) 314)
        )
        :effect (and
            (assign (belief_state) 501)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_315_to_166
        :parameters ()
        :precondition (and
            (= (belief_state) 315)
        )
        :effect (and
            (assign (belief_state) 166)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_315_to_503
        :parameters ()
        :precondition (and
            (= (belief_state) 315)
        )
        :effect (and
            (assign (belief_state) 503)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_315_to_503
        :parameters ()
        :precondition (and
            (= (belief_state) 315)
        )
        :effect (and
            (assign (belief_state) 503)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_315_to_502
        :parameters ()
        :precondition (and
            (= (belief_state) 315)
        )
        :effect (and
            (assign (belief_state) 502)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_316_to_167
        :parameters ()
        :precondition (and
            (= (belief_state) 316)
        )
        :effect (and
            (assign (belief_state) 167)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_316_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 316)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_316_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 316)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_317_to_496
        :parameters ()
        :precondition (and
            (= (belief_state) 317)
        )
        :effect (and
            (assign (belief_state) 496)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_317_to_504
        :parameters ()
        :precondition (and
            (= (belief_state) 317)
        )
        :effect (and
            (assign (belief_state) 504)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_318_to_499
        :parameters ()
        :precondition (and
            (= (belief_state) 318)
        )
        :effect (and
            (assign (belief_state) 499)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_318_to_317
        :parameters ()
        :precondition (and
            (= (belief_state) 318)
        )
        :effect (and
            (assign (belief_state) 317)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_318_to_505
        :parameters ()
        :precondition (and
            (= (belief_state) 318)
        )
        :effect (and
            (assign (belief_state) 505)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_319_to_506
        :parameters ()
        :precondition (and
            (= (belief_state) 319)
        )
        :effect (and
            (assign (belief_state) 506)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_319_to_157
        :parameters ()
        :precondition (and
            (= (belief_state) 319)
        )
        :effect (and
            (assign (belief_state) 157)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_319_to_507
        :parameters ()
        :precondition (and
            (= (belief_state) 319)
        )
        :effect (and
            (assign (belief_state) 507)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_320_to_169
        :parameters ()
        :precondition (and
            (= (belief_state) 320)
        )
        :effect (and
            (assign (belief_state) 169)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_320_to_508
        :parameters ()
        :precondition (and
            (= (belief_state) 320)
        )
        :effect (and
            (assign (belief_state) 508)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_320_to_307
        :parameters ()
        :precondition (and
            (= (belief_state) 320)
        )
        :effect (and
            (assign (belief_state) 307)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_321_to_170
        :parameters ()
        :precondition (and
            (= (belief_state) 321)
        )
        :effect (and
            (assign (belief_state) 170)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_321_to_509
        :parameters ()
        :precondition (and
            (= (belief_state) 321)
        )
        :effect (and
            (assign (belief_state) 509)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_321_to_157
        :parameters ()
        :precondition (and
            (= (belief_state) 321)
        )
        :effect (and
            (assign (belief_state) 157)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_322_to_510
        :parameters ()
        :precondition (and
            (= (belief_state) 322)
        )
        :effect (and
            (assign (belief_state) 510)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_322_to_511
        :parameters ()
        :precondition (and
            (= (belief_state) 322)
        )
        :effect (and
            (assign (belief_state) 511)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_322_to_512
        :parameters ()
        :precondition (and
            (= (belief_state) 322)
        )
        :effect (and
            (assign (belief_state) 512)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_322_to_171
        :parameters ()
        :precondition (and
            (= (belief_state) 322)
        )
        :effect (and
            (assign (belief_state) 171)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_323_to_513
        :parameters ()
        :precondition (and
            (= (belief_state) 323)
        )
        :effect (and
            (assign (belief_state) 513)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_323_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 323)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_324_to_449
        :parameters ()
        :precondition (and
            (= (belief_state) 324)
        )
        :effect (and
            (assign (belief_state) 449)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_324_to_495
        :parameters ()
        :precondition (and
            (= (belief_state) 324)
        )
        :effect (and
            (assign (belief_state) 495)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_324_to_514
        :parameters ()
        :precondition (and
            (= (belief_state) 324)
        )
        :effect (and
            (assign (belief_state) 514)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_324_to_177
        :parameters ()
        :precondition (and
            (= (belief_state) 324)
        )
        :effect (and
            (assign (belief_state) 177)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_325_to_455
        :parameters ()
        :precondition (and
            (= (belief_state) 325)
        )
        :effect (and
            (assign (belief_state) 455)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_325_to_495
        :parameters ()
        :precondition (and
            (= (belief_state) 325)
        )
        :effect (and
            (assign (belief_state) 495)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_325_to_181
        :parameters ()
        :precondition (and
            (= (belief_state) 325)
        )
        :effect (and
            (assign (belief_state) 181)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_326_to_511
        :parameters ()
        :precondition (and
            (= (belief_state) 326)
        )
        :effect (and
            (assign (belief_state) 511)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_326_to_124
        :parameters ()
        :precondition (and
            (= (belief_state) 326)
        )
        :effect (and
            (assign (belief_state) 124)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_326_to_515
        :parameters ()
        :precondition (and
            (= (belief_state) 326)
        )
        :effect (and
            (assign (belief_state) 515)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_327_to_463
        :parameters ()
        :precondition (and
            (= (belief_state) 327)
        )
        :effect (and
            (assign (belief_state) 463)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_327_to_495
        :parameters ()
        :precondition (and
            (= (belief_state) 327)
        )
        :effect (and
            (assign (belief_state) 495)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_327_to_516
        :parameters ()
        :precondition (and
            (= (belief_state) 327)
        )
        :effect (and
            (assign (belief_state) 516)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_327_to_178
        :parameters ()
        :precondition (and
            (= (belief_state) 327)
        )
        :effect (and
            (assign (belief_state) 178)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_328_to_467
        :parameters ()
        :precondition (and
            (= (belief_state) 328)
        )
        :effect (and
            (assign (belief_state) 467)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_328_to_495
        :parameters ()
        :precondition (and
            (= (belief_state) 328)
        )
        :effect (and
            (assign (belief_state) 495)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_328_to_182
        :parameters ()
        :precondition (and
            (= (belief_state) 328)
        )
        :effect (and
            (assign (belief_state) 182)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_329_to_512
        :parameters ()
        :precondition (and
            (= (belief_state) 329)
        )
        :effect (and
            (assign (belief_state) 512)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_329_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 329)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_329_to_517
        :parameters ()
        :precondition (and
            (= (belief_state) 329)
        )
        :effect (and
            (assign (belief_state) 517)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_330_to_177
        :parameters ()
        :precondition (and
            (= (belief_state) 330)
        )
        :effect (and
            (assign (belief_state) 177)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_330_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 330)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_330_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 330)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_331_to_178
        :parameters ()
        :precondition (and
            (= (belief_state) 331)
        )
        :effect (and
            (assign (belief_state) 178)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_331_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 331)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_331_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 331)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_332_to_179
        :parameters ()
        :precondition (and
            (= (belief_state) 332)
        )
        :effect (and
            (assign (belief_state) 179)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_332_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 332)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_332_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 332)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_333_to_514
        :parameters ()
        :precondition (and
            (= (belief_state) 333)
        )
        :effect (and
            (assign (belief_state) 514)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_333_to_518
        :parameters ()
        :precondition (and
            (= (belief_state) 333)
        )
        :effect (and
            (assign (belief_state) 518)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_334_to_516
        :parameters ()
        :precondition (and
            (= (belief_state) 334)
        )
        :effect (and
            (assign (belief_state) 516)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_334_to_333
        :parameters ()
        :precondition (and
            (= (belief_state) 334)
        )
        :effect (and
            (assign (belief_state) 333)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_334_to_519
        :parameters ()
        :precondition (and
            (= (belief_state) 334)
        )
        :effect (and
            (assign (belief_state) 519)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_335_to_520
        :parameters ()
        :precondition (and
            (= (belief_state) 335)
        )
        :effect (and
            (assign (belief_state) 520)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_335_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 335)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_335_to_521
        :parameters ()
        :precondition (and
            (= (belief_state) 335)
        )
        :effect (and
            (assign (belief_state) 521)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_336_to_181
        :parameters ()
        :precondition (and
            (= (belief_state) 336)
        )
        :effect (and
            (assign (belief_state) 181)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_336_to_522
        :parameters ()
        :precondition (and
            (= (belief_state) 336)
        )
        :effect (and
            (assign (belief_state) 522)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_336_to_124
        :parameters ()
        :precondition (and
            (= (belief_state) 336)
        )
        :effect (and
            (assign (belief_state) 124)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_337_to_182
        :parameters ()
        :precondition (and
            (= (belief_state) 337)
        )
        :effect (and
            (assign (belief_state) 182)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_337_to_523
        :parameters ()
        :precondition (and
            (= (belief_state) 337)
        )
        :effect (and
            (assign (belief_state) 523)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_337_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 337)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_338_to_524
        :parameters ()
        :precondition (and
            (= (belief_state) 338)
        )
        :effect (and
            (assign (belief_state) 524)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_338_to_525
        :parameters ()
        :precondition (and
            (= (belief_state) 338)
        )
        :effect (and
            (assign (belief_state) 525)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_338_to_526
        :parameters ()
        :precondition (and
            (= (belief_state) 338)
        )
        :effect (and
            (assign (belief_state) 526)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_338_to_183
        :parameters ()
        :precondition (and
            (= (belief_state) 338)
        )
        :effect (and
            (assign (belief_state) 183)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_339_to_527
        :parameters ()
        :precondition (and
            (= (belief_state) 339)
        )
        :effect (and
            (assign (belief_state) 527)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_339_to_341
        :parameters ()
        :precondition (and
            (= (belief_state) 339)
        )
        :effect (and
            (assign (belief_state) 341)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_340_to_528
        :parameters ()
        :precondition (and
            (= (belief_state) 340)
        )
        :effect (and
            (assign (belief_state) 528)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_340_to_388
        :parameters ()
        :precondition (and
            (= (belief_state) 340)
        )
        :effect (and
            (assign (belief_state) 388)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_340_to_184
        :parameters ()
        :precondition (and
            (= (belief_state) 340)
        )
        :effect (and
            (assign (belief_state) 184)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_341_to_529
        :parameters ()
        :precondition (and
            (= (belief_state) 341)
        )
        :effect (and
            (assign (belief_state) 529)
            (assign (goal_reached) 'f')
        )
    )

    (:action save_princess_room5__from_341_to_530
        :parameters ()
        :precondition (and
            (= (belief_state) 341)
        )
        :effect (and
            (assign (belief_state) 530)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_342_to_443
        :parameters ()
        :precondition (and
            (= (belief_state) 342)
        )
        :effect (and
            (assign (belief_state) 443)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_342_to_531
        :parameters ()
        :precondition (and
            (= (belief_state) 342)
        )
        :effect (and
            (assign (belief_state) 531)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_342_to_532
        :parameters ()
        :precondition (and
            (= (belief_state) 342)
        )
        :effect (and
            (assign (belief_state) 532)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_342_to_185
        :parameters ()
        :precondition (and
            (= (belief_state) 342)
        )
        :effect (and
            (assign (belief_state) 185)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_343_to_533
        :parameters ()
        :precondition (and
            (= (belief_state) 343)
        )
        :effect (and
            (assign (belief_state) 533)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_343_to_534
        :parameters ()
        :precondition (and
            (= (belief_state) 343)
        )
        :effect (and
            (assign (belief_state) 534)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_343_to_535
        :parameters ()
        :precondition (and
            (= (belief_state) 343)
        )
        :effect (and
            (assign (belief_state) 535)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_343_to_192
        :parameters ()
        :precondition (and
            (= (belief_state) 343)
        )
        :effect (and
            (assign (belief_state) 192)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_344_to_536
        :parameters ()
        :precondition (and
            (= (belief_state) 344)
        )
        :effect (and
            (assign (belief_state) 536)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_344_to_534
        :parameters ()
        :precondition (and
            (= (belief_state) 344)
        )
        :effect (and
            (assign (belief_state) 534)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_344_to_202
        :parameters ()
        :precondition (and
            (= (belief_state) 344)
        )
        :effect (and
            (assign (belief_state) 202)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_345_to_525
        :parameters ()
        :precondition (and
            (= (belief_state) 345)
        )
        :effect (and
            (assign (belief_state) 525)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_345_to_346
        :parameters ()
        :precondition (and
            (= (belief_state) 345)
        )
        :effect (and
            (assign (belief_state) 346)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_345_to_537
        :parameters ()
        :precondition (and
            (= (belief_state) 345)
        )
        :effect (and
            (assign (belief_state) 537)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_346_to_388
        :parameters ()
        :precondition (and
            (= (belief_state) 346)
        )
        :effect (and
            (assign (belief_state) 388)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_346_to_538
        :parameters ()
        :precondition (and
            (= (belief_state) 346)
        )
        :effect (and
            (assign (belief_state) 538)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_347_to_457
        :parameters ()
        :precondition (and
            (= (belief_state) 347)
        )
        :effect (and
            (assign (belief_state) 457)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_347_to_539
        :parameters ()
        :precondition (and
            (= (belief_state) 347)
        )
        :effect (and
            (assign (belief_state) 539)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_347_to_540
        :parameters ()
        :precondition (and
            (= (belief_state) 347)
        )
        :effect (and
            (assign (belief_state) 540)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_347_to_187
        :parameters ()
        :precondition (and
            (= (belief_state) 347)
        )
        :effect (and
            (assign (belief_state) 187)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_348_to_541
        :parameters ()
        :precondition (and
            (= (belief_state) 348)
        )
        :effect (and
            (assign (belief_state) 541)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_348_to_534
        :parameters ()
        :precondition (and
            (= (belief_state) 348)
        )
        :effect (and
            (assign (belief_state) 534)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_348_to_542
        :parameters ()
        :precondition (and
            (= (belief_state) 348)
        )
        :effect (and
            (assign (belief_state) 542)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_348_to_193
        :parameters ()
        :precondition (and
            (= (belief_state) 348)
        )
        :effect (and
            (assign (belief_state) 193)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_349_to_543
        :parameters ()
        :precondition (and
            (= (belief_state) 349)
        )
        :effect (and
            (assign (belief_state) 543)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_349_to_534
        :parameters ()
        :precondition (and
            (= (belief_state) 349)
        )
        :effect (and
            (assign (belief_state) 534)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_349_to_203
        :parameters ()
        :precondition (and
            (= (belief_state) 349)
        )
        :effect (and
            (assign (belief_state) 203)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_350_to_526
        :parameters ()
        :precondition (and
            (= (belief_state) 350)
        )
        :effect (and
            (assign (belief_state) 526)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_350_to_184
        :parameters ()
        :precondition (and
            (= (belief_state) 350)
        )
        :effect (and
            (assign (belief_state) 184)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_350_to_544
        :parameters ()
        :precondition (and
            (= (belief_state) 350)
        )
        :effect (and
            (assign (belief_state) 544)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_351_to_192
        :parameters ()
        :precondition (and
            (= (belief_state) 351)
        )
        :effect (and
            (assign (belief_state) 192)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_351_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 351)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_351_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 351)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_352_to_193
        :parameters ()
        :precondition (and
            (= (belief_state) 352)
        )
        :effect (and
            (assign (belief_state) 193)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_352_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 352)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_352_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 352)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_353_to_471
        :parameters ()
        :precondition (and
            (= (belief_state) 353)
        )
        :effect (and
            (assign (belief_state) 471)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_353_to_208
        :parameters ()
        :precondition (and
            (= (belief_state) 353)
        )
        :effect (and
            (assign (belief_state) 208)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_354_to_195
        :parameters ()
        :precondition (and
            (= (belief_state) 354)
        )
        :effect (and
            (assign (belief_state) 195)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_354_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 354)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_354_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 354)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_355_to_534
        :parameters ()
        :precondition (and
            (= (belief_state) 355)
        )
        :effect (and
            (assign (belief_state) 534)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_355_to_545
        :parameters ()
        :precondition (and
            (= (belief_state) 355)
        )
        :effect (and
            (assign (belief_state) 545)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_356_to_472
        :parameters ()
        :precondition (and
            (= (belief_state) 356)
        )
        :effect (and
            (assign (belief_state) 472)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_356_to_546
        :parameters ()
        :precondition (and
            (= (belief_state) 356)
        )
        :effect (and
            (assign (belief_state) 546)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_356_to_546
        :parameters ()
        :precondition (and
            (= (belief_state) 356)
        )
        :effect (and
            (assign (belief_state) 546)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_356_to_196
        :parameters ()
        :precondition (and
            (= (belief_state) 356)
        )
        :effect (and
            (assign (belief_state) 196)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_357_to_196
        :parameters ()
        :precondition (and
            (= (belief_state) 357)
        )
        :effect (and
            (assign (belief_state) 196)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_357_to_548
        :parameters ()
        :precondition (and
            (= (belief_state) 357)
        )
        :effect (and
            (assign (belief_state) 548)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_357_to_548
        :parameters ()
        :precondition (and
            (= (belief_state) 357)
        )
        :effect (and
            (assign (belief_state) 548)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_357_to_547
        :parameters ()
        :precondition (and
            (= (belief_state) 357)
        )
        :effect (and
            (assign (belief_state) 547)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_358_to_475
        :parameters ()
        :precondition (and
            (= (belief_state) 358)
        )
        :effect (and
            (assign (belief_state) 475)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_358_to_209
        :parameters ()
        :precondition (and
            (= (belief_state) 358)
        )
        :effect (and
            (assign (belief_state) 209)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_359_to_477
        :parameters ()
        :precondition (and
            (= (belief_state) 359)
        )
        :effect (and
            (assign (belief_state) 477)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_359_to_358
        :parameters ()
        :precondition (and
            (= (belief_state) 359)
        )
        :effect (and
            (assign (belief_state) 358)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_359_to_215
        :parameters ()
        :precondition (and
            (= (belief_state) 359)
        )
        :effect (and
            (assign (belief_state) 215)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_360_to_198
        :parameters ()
        :precondition (and
            (= (belief_state) 360)
        )
        :effect (and
            (assign (belief_state) 198)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_360_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 360)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_360_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 360)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_361_to_535
        :parameters ()
        :precondition (and
            (= (belief_state) 361)
        )
        :effect (and
            (assign (belief_state) 535)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_361_to_549
        :parameters ()
        :precondition (and
            (= (belief_state) 361)
        )
        :effect (and
            (assign (belief_state) 549)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_362_to_542
        :parameters ()
        :precondition (and
            (= (belief_state) 362)
        )
        :effect (and
            (assign (belief_state) 542)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_362_to_361
        :parameters ()
        :precondition (and
            (= (belief_state) 362)
        )
        :effect (and
            (assign (belief_state) 361)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_362_to_550
        :parameters ()
        :precondition (and
            (= (belief_state) 362)
        )
        :effect (and
            (assign (belief_state) 550)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_363_to_551
        :parameters ()
        :precondition (and
            (= (belief_state) 363)
        )
        :effect (and
            (assign (belief_state) 551)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_363_to_184
        :parameters ()
        :precondition (and
            (= (belief_state) 363)
        )
        :effect (and
            (assign (belief_state) 184)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_363_to_552
        :parameters ()
        :precondition (and
            (= (belief_state) 363)
        )
        :effect (and
            (assign (belief_state) 552)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_364_to_202
        :parameters ()
        :precondition (and
            (= (belief_state) 364)
        )
        :effect (and
            (assign (belief_state) 202)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_364_to_553
        :parameters ()
        :precondition (and
            (= (belief_state) 364)
        )
        :effect (and
            (assign (belief_state) 553)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_364_to_346
        :parameters ()
        :precondition (and
            (= (belief_state) 364)
        )
        :effect (and
            (assign (belief_state) 346)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_365_to_203
        :parameters ()
        :precondition (and
            (= (belief_state) 365)
        )
        :effect (and
            (assign (belief_state) 203)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_365_to_554
        :parameters ()
        :precondition (and
            (= (belief_state) 365)
        )
        :effect (and
            (assign (belief_state) 554)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_365_to_184
        :parameters ()
        :precondition (and
            (= (belief_state) 365)
        )
        :effect (and
            (assign (belief_state) 184)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_366_to_555
        :parameters ()
        :precondition (and
            (= (belief_state) 366)
        )
        :effect (and
            (assign (belief_state) 555)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_366_to_367
        :parameters ()
        :precondition (and
            (= (belief_state) 366)
        )
        :effect (and
            (assign (belief_state) 367)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_366_to_556
        :parameters ()
        :precondition (and
            (= (belief_state) 366)
        )
        :effect (and
            (assign (belief_state) 556)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_367_to_377
        :parameters ()
        :precondition (and
            (= (belief_state) 367)
        )
        :effect (and
            (assign (belief_state) 377)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_367_to_557
        :parameters ()
        :precondition (and
            (= (belief_state) 367)
        )
        :effect (and
            (assign (belief_state) 557)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_368_to_531
        :parameters ()
        :precondition (and
            (= (belief_state) 368)
        )
        :effect (and
            (assign (belief_state) 531)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_368_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 368)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_368_to_558
        :parameters ()
        :precondition (and
            (= (belief_state) 368)
        )
        :effect (and
            (assign (belief_state) 558)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_368_to_205
        :parameters ()
        :precondition (and
            (= (belief_state) 368)
        )
        :effect (and
            (assign (belief_state) 205)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_369_to_539
        :parameters ()
        :precondition (and
            (= (belief_state) 369)
        )
        :effect (and
            (assign (belief_state) 539)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_369_to_559
        :parameters ()
        :precondition (and
            (= (belief_state) 369)
        )
        :effect (and
            (assign (belief_state) 559)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_369_to_560
        :parameters ()
        :precondition (and
            (= (belief_state) 369)
        )
        :effect (and
            (assign (belief_state) 560)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_369_to_206
        :parameters ()
        :precondition (and
            (= (belief_state) 369)
        )
        :effect (and
            (assign (belief_state) 206)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_370_to_206
        :parameters ()
        :precondition (and
            (= (belief_state) 370)
        )
        :effect (and
            (assign (belief_state) 206)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_370_to_561
        :parameters ()
        :precondition (and
            (= (belief_state) 370)
        )
        :effect (and
            (assign (belief_state) 561)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_370_to_367
        :parameters ()
        :precondition (and
            (= (belief_state) 370)
        )
        :effect (and
            (assign (belief_state) 367)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_371_to_207
        :parameters ()
        :precondition (and
            (= (belief_state) 371)
        )
        :effect (and
            (assign (belief_state) 207)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_371_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 371)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_371_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 371)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_372_to_559
        :parameters ()
        :precondition (and
            (= (belief_state) 372)
        )
        :effect (and
            (assign (belief_state) 559)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_372_to_205
        :parameters ()
        :precondition (and
            (= (belief_state) 372)
        )
        :effect (and
            (assign (belief_state) 205)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_372_to_562
        :parameters ()
        :precondition (and
            (= (belief_state) 372)
        )
        :effect (and
            (assign (belief_state) 562)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_373_to_208
        :parameters ()
        :precondition (and
            (= (belief_state) 373)
        )
        :effect (and
            (assign (belief_state) 208)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_373_to_275
        :parameters ()
        :precondition (and
            (= (belief_state) 373)
        )
        :effect (and
            (assign (belief_state) 275)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_373_to_275
        :parameters ()
        :precondition (and
            (= (belief_state) 373)
        )
        :effect (and
            (assign (belief_state) 275)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_373_to_563
        :parameters ()
        :precondition (and
            (= (belief_state) 373)
        )
        :effect (and
            (assign (belief_state) 563)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_374_to_546
        :parameters ()
        :precondition (and
            (= (belief_state) 374)
        )
        :effect (and
            (assign (belief_state) 546)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_374_to_564
        :parameters ()
        :precondition (and
            (= (belief_state) 374)
        )
        :effect (and
            (assign (belief_state) 564)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_375_to_209
        :parameters ()
        :precondition (and
            (= (belief_state) 375)
        )
        :effect (and
            (assign (belief_state) 209)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_375_to_479
        :parameters ()
        :precondition (and
            (= (belief_state) 375)
        )
        :effect (and
            (assign (belief_state) 479)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_375_to_566
        :parameters ()
        :precondition (and
            (= (belief_state) 375)
        )
        :effect (and
            (assign (belief_state) 566)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_375_to_565
        :parameters ()
        :precondition (and
            (= (belief_state) 375)
        )
        :effect (and
            (assign (belief_state) 565)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_376_to_210
        :parameters ()
        :precondition (and
            (= (belief_state) 376)
        )
        :effect (and
            (assign (belief_state) 210)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_376_to_567
        :parameters ()
        :precondition (and
            (= (belief_state) 376)
        )
        :effect (and
            (assign (belief_state) 567)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_376_to_367
        :parameters ()
        :precondition (and
            (= (belief_state) 376)
        )
        :effect (and
            (assign (belief_state) 367)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_377_to_560
        :parameters ()
        :precondition (and
            (= (belief_state) 377)
        )
        :effect (and
            (assign (belief_state) 560)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_377_to_275
        :parameters ()
        :precondition (and
            (= (belief_state) 377)
        )
        :effect (and
            (assign (belief_state) 275)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_377_to_367
        :parameters ()
        :precondition (and
            (= (belief_state) 377)
        )
        :effect (and
            (assign (belief_state) 367)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_378_to_568
        :parameters ()
        :precondition (and
            (= (belief_state) 378)
        )
        :effect (and
            (assign (belief_state) 568)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_378_to_184
        :parameters ()
        :precondition (and
            (= (belief_state) 378)
        )
        :effect (and
            (assign (belief_state) 184)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_378_to_569
        :parameters ()
        :precondition (and
            (= (belief_state) 378)
        )
        :effect (and
            (assign (belief_state) 569)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_379_to_532
        :parameters ()
        :precondition (and
            (= (belief_state) 379)
        )
        :effect (and
            (assign (belief_state) 532)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_379_to_570
        :parameters ()
        :precondition (and
            (= (belief_state) 379)
        )
        :effect (and
            (assign (belief_state) 570)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_379_to_571
        :parameters ()
        :precondition (and
            (= (belief_state) 379)
        )
        :effect (and
            (assign (belief_state) 571)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_379_to_212
        :parameters ()
        :precondition (and
            (= (belief_state) 379)
        )
        :effect (and
            (assign (belief_state) 212)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_380_to_212
        :parameters ()
        :precondition (and
            (= (belief_state) 380)
        )
        :effect (and
            (assign (belief_state) 212)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_380_to_572
        :parameters ()
        :precondition (and
            (= (belief_state) 380)
        )
        :effect (and
            (assign (belief_state) 572)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_380_to_346
        :parameters ()
        :precondition (and
            (= (belief_state) 380)
        )
        :effect (and
            (assign (belief_state) 346)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_381_to_540
        :parameters ()
        :precondition (and
            (= (belief_state) 381)
        )
        :effect (and
            (assign (belief_state) 540)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_381_to_573
        :parameters ()
        :precondition (and
            (= (belief_state) 381)
        )
        :effect (and
            (assign (belief_state) 573)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_381_to_528
        :parameters ()
        :precondition (and
            (= (belief_state) 381)
        )
        :effect (and
            (assign (belief_state) 528)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_381_to_213
        :parameters ()
        :precondition (and
            (= (belief_state) 381)
        )
        :effect (and
            (assign (belief_state) 213)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_382_to_213
        :parameters ()
        :precondition (and
            (= (belief_state) 382)
        )
        :effect (and
            (assign (belief_state) 213)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_382_to_574
        :parameters ()
        :precondition (and
            (= (belief_state) 382)
        )
        :effect (and
            (assign (belief_state) 574)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_382_to_184
        :parameters ()
        :precondition (and
            (= (belief_state) 382)
        )
        :effect (and
            (assign (belief_state) 184)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_383_to_214
        :parameters ()
        :precondition (and
            (= (belief_state) 383)
        )
        :effect (and
            (assign (belief_state) 214)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_383_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 383)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_383_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 383)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_384_to_570
        :parameters ()
        :precondition (and
            (= (belief_state) 384)
        )
        :effect (and
            (assign (belief_state) 570)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_384_to_575
        :parameters ()
        :precondition (and
            (= (belief_state) 384)
        )
        :effect (and
            (assign (belief_state) 575)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_385_to_573
        :parameters ()
        :precondition (and
            (= (belief_state) 385)
        )
        :effect (and
            (assign (belief_state) 573)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_385_to_384
        :parameters ()
        :precondition (and
            (= (belief_state) 385)
        )
        :effect (and
            (assign (belief_state) 384)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_385_to_576
        :parameters ()
        :precondition (and
            (= (belief_state) 385)
        )
        :effect (and
            (assign (belief_state) 576)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_386_to_215
        :parameters ()
        :precondition (and
            (= (belief_state) 386)
        )
        :effect (and
            (assign (belief_state) 215)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_386_to_578
        :parameters ()
        :precondition (and
            (= (belief_state) 386)
        )
        :effect (and
            (assign (belief_state) 578)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_386_to_579
        :parameters ()
        :precondition (and
            (= (belief_state) 386)
        )
        :effect (and
            (assign (belief_state) 579)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_386_to_577
        :parameters ()
        :precondition (and
            (= (belief_state) 386)
        )
        :effect (and
            (assign (belief_state) 577)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_387_to_216
        :parameters ()
        :precondition (and
            (= (belief_state) 387)
        )
        :effect (and
            (assign (belief_state) 216)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_387_to_580
        :parameters ()
        :precondition (and
            (= (belief_state) 387)
        )
        :effect (and
            (assign (belief_state) 580)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_387_to_184
        :parameters ()
        :precondition (and
            (= (belief_state) 387)
        )
        :effect (and
            (assign (belief_state) 184)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_388_to_571
        :parameters ()
        :precondition (and
            (= (belief_state) 388)
        )
        :effect (and
            (assign (belief_state) 571)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_388_to_346
        :parameters ()
        :precondition (and
            (= (belief_state) 388)
        )
        :effect (and
            (assign (belief_state) 346)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_389_to_581
        :parameters ()
        :precondition (and
            (= (belief_state) 389)
        )
        :effect (and
            (assign (belief_state) 581)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_389_to_582
        :parameters ()
        :precondition (and
            (= (belief_state) 389)
        )
        :effect (and
            (assign (belief_state) 582)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_389_to_583
        :parameters ()
        :precondition (and
            (= (belief_state) 389)
        )
        :effect (and
            (assign (belief_state) 583)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_389_to_217
        :parameters ()
        :precondition (and
            (= (belief_state) 389)
        )
        :effect (and
            (assign (belief_state) 217)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_390_to_584
        :parameters ()
        :precondition (and
            (= (belief_state) 390)
        )
        :effect (and
            (assign (belief_state) 584)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_390_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 390)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_391_to_444
        :parameters ()
        :precondition (and
            (= (belief_state) 391)
        )
        :effect (and
            (assign (belief_state) 444)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_391_to_585
        :parameters ()
        :precondition (and
            (= (belief_state) 391)
        )
        :effect (and
            (assign (belief_state) 585)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_391_to_586
        :parameters ()
        :precondition (and
            (= (belief_state) 391)
        )
        :effect (and
            (assign (belief_state) 586)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_391_to_218
        :parameters ()
        :precondition (and
            (= (belief_state) 391)
        )
        :effect (and
            (assign (belief_state) 218)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_392_to_587
        :parameters ()
        :precondition (and
            (= (belief_state) 392)
        )
        :effect (and
            (assign (belief_state) 587)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_392_to_534
        :parameters ()
        :precondition (and
            (= (belief_state) 392)
        )
        :effect (and
            (assign (belief_state) 534)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_392_to_588
        :parameters ()
        :precondition (and
            (= (belief_state) 392)
        )
        :effect (and
            (assign (belief_state) 588)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_392_to_225
        :parameters ()
        :precondition (and
            (= (belief_state) 392)
        )
        :effect (and
            (assign (belief_state) 225)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_393_to_589
        :parameters ()
        :precondition (and
            (= (belief_state) 393)
        )
        :effect (and
            (assign (belief_state) 589)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_393_to_534
        :parameters ()
        :precondition (and
            (= (belief_state) 393)
        )
        :effect (and
            (assign (belief_state) 534)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_393_to_232
        :parameters ()
        :precondition (and
            (= (belief_state) 393)
        )
        :effect (and
            (assign (belief_state) 232)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_394_to_582
        :parameters ()
        :precondition (and
            (= (belief_state) 394)
        )
        :effect (and
            (assign (belief_state) 582)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_394_to_124
        :parameters ()
        :precondition (and
            (= (belief_state) 394)
        )
        :effect (and
            (assign (belief_state) 124)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_394_to_590
        :parameters ()
        :precondition (and
            (= (belief_state) 394)
        )
        :effect (and
            (assign (belief_state) 590)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_395_to_458
        :parameters ()
        :precondition (and
            (= (belief_state) 395)
        )
        :effect (and
            (assign (belief_state) 458)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_395_to_591
        :parameters ()
        :precondition (and
            (= (belief_state) 395)
        )
        :effect (and
            (assign (belief_state) 591)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_395_to_592
        :parameters ()
        :precondition (and
            (= (belief_state) 395)
        )
        :effect (and
            (assign (belief_state) 592)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_395_to_220
        :parameters ()
        :precondition (and
            (= (belief_state) 395)
        )
        :effect (and
            (assign (belief_state) 220)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_396_to_593
        :parameters ()
        :precondition (and
            (= (belief_state) 396)
        )
        :effect (and
            (assign (belief_state) 593)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_396_to_534
        :parameters ()
        :precondition (and
            (= (belief_state) 396)
        )
        :effect (and
            (assign (belief_state) 534)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_396_to_594
        :parameters ()
        :precondition (and
            (= (belief_state) 396)
        )
        :effect (and
            (assign (belief_state) 594)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_396_to_226
        :parameters ()
        :precondition (and
            (= (belief_state) 396)
        )
        :effect (and
            (assign (belief_state) 226)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_397_to_595
        :parameters ()
        :precondition (and
            (= (belief_state) 397)
        )
        :effect (and
            (assign (belief_state) 595)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_397_to_534
        :parameters ()
        :precondition (and
            (= (belief_state) 397)
        )
        :effect (and
            (assign (belief_state) 534)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_397_to_233
        :parameters ()
        :precondition (and
            (= (belief_state) 397)
        )
        :effect (and
            (assign (belief_state) 233)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_398_to_583
        :parameters ()
        :precondition (and
            (= (belief_state) 398)
        )
        :effect (and
            (assign (belief_state) 583)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_398_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 398)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_398_to_596
        :parameters ()
        :precondition (and
            (= (belief_state) 398)
        )
        :effect (and
            (assign (belief_state) 596)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_399_to_225
        :parameters ()
        :precondition (and
            (= (belief_state) 399)
        )
        :effect (and
            (assign (belief_state) 225)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_399_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 399)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_399_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 399)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_400_to_226
        :parameters ()
        :precondition (and
            (= (belief_state) 400)
        )
        :effect (and
            (assign (belief_state) 226)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_400_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 400)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_400_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 400)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_401_to_476
        :parameters ()
        :precondition (and
            (= (belief_state) 401)
        )
        :effect (and
            (assign (belief_state) 476)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_401_to_238
        :parameters ()
        :precondition (and
            (= (belief_state) 401)
        )
        :effect (and
            (assign (belief_state) 238)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_402_to_478
        :parameters ()
        :precondition (and
            (= (belief_state) 402)
        )
        :effect (and
            (assign (belief_state) 478)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_402_to_401
        :parameters ()
        :precondition (and
            (= (belief_state) 402)
        )
        :effect (and
            (assign (belief_state) 401)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_402_to_244
        :parameters ()
        :precondition (and
            (= (belief_state) 402)
        )
        :effect (and
            (assign (belief_state) 244)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_403_to_228
        :parameters ()
        :precondition (and
            (= (belief_state) 403)
        )
        :effect (and
            (assign (belief_state) 228)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_403_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 403)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_403_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 403)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_404_to_588
        :parameters ()
        :precondition (and
            (= (belief_state) 404)
        )
        :effect (and
            (assign (belief_state) 588)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_404_to_597
        :parameters ()
        :precondition (and
            (= (belief_state) 404)
        )
        :effect (and
            (assign (belief_state) 597)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_405_to_594
        :parameters ()
        :precondition (and
            (= (belief_state) 405)
        )
        :effect (and
            (assign (belief_state) 594)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_405_to_404
        :parameters ()
        :precondition (and
            (= (belief_state) 405)
        )
        :effect (and
            (assign (belief_state) 404)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_405_to_598
        :parameters ()
        :precondition (and
            (= (belief_state) 405)
        )
        :effect (and
            (assign (belief_state) 598)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_406_to_599
        :parameters ()
        :precondition (and
            (= (belief_state) 406)
        )
        :effect (and
            (assign (belief_state) 599)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_406_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 406)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_406_to_600
        :parameters ()
        :precondition (and
            (= (belief_state) 406)
        )
        :effect (and
            (assign (belief_state) 600)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_407_to_232
        :parameters ()
        :precondition (and
            (= (belief_state) 407)
        )
        :effect (and
            (assign (belief_state) 232)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_407_to_601
        :parameters ()
        :precondition (and
            (= (belief_state) 407)
        )
        :effect (and
            (assign (belief_state) 601)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_407_to_124
        :parameters ()
        :precondition (and
            (= (belief_state) 407)
        )
        :effect (and
            (assign (belief_state) 124)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_408_to_233
        :parameters ()
        :precondition (and
            (= (belief_state) 408)
        )
        :effect (and
            (assign (belief_state) 233)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_408_to_602
        :parameters ()
        :precondition (and
            (= (belief_state) 408)
        )
        :effect (and
            (assign (belief_state) 602)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_408_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 408)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_409_to_603
        :parameters ()
        :precondition (and
            (= (belief_state) 409)
        )
        :effect (and
            (assign (belief_state) 603)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_409_to_157
        :parameters ()
        :precondition (and
            (= (belief_state) 409)
        )
        :effect (and
            (assign (belief_state) 157)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_409_to_604
        :parameters ()
        :precondition (and
            (= (belief_state) 409)
        )
        :effect (and
            (assign (belief_state) 604)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_410_to_585
        :parameters ()
        :precondition (and
            (= (belief_state) 410)
        )
        :effect (and
            (assign (belief_state) 585)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_410_to_605
        :parameters ()
        :precondition (and
            (= (belief_state) 410)
        )
        :effect (and
            (assign (belief_state) 605)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_410_to_606
        :parameters ()
        :precondition (and
            (= (belief_state) 410)
        )
        :effect (and
            (assign (belief_state) 606)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_410_to_235
        :parameters ()
        :precondition (and
            (= (belief_state) 410)
        )
        :effect (and
            (assign (belief_state) 235)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_411_to_235
        :parameters ()
        :precondition (and
            (= (belief_state) 411)
        )
        :effect (and
            (assign (belief_state) 235)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_411_to_607
        :parameters ()
        :precondition (and
            (= (belief_state) 411)
        )
        :effect (and
            (assign (belief_state) 607)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_411_to_307
        :parameters ()
        :precondition (and
            (= (belief_state) 411)
        )
        :effect (and
            (assign (belief_state) 307)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_412_to_591
        :parameters ()
        :precondition (and
            (= (belief_state) 412)
        )
        :effect (and
            (assign (belief_state) 591)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_412_to_608
        :parameters ()
        :precondition (and
            (= (belief_state) 412)
        )
        :effect (and
            (assign (belief_state) 608)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_412_to_492
        :parameters ()
        :precondition (and
            (= (belief_state) 412)
        )
        :effect (and
            (assign (belief_state) 492)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_412_to_236
        :parameters ()
        :precondition (and
            (= (belief_state) 412)
        )
        :effect (and
            (assign (belief_state) 236)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_413_to_236
        :parameters ()
        :precondition (and
            (= (belief_state) 413)
        )
        :effect (and
            (assign (belief_state) 236)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_413_to_609
        :parameters ()
        :precondition (and
            (= (belief_state) 413)
        )
        :effect (and
            (assign (belief_state) 609)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_413_to_157
        :parameters ()
        :precondition (and
            (= (belief_state) 413)
        )
        :effect (and
            (assign (belief_state) 157)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_414_to_237
        :parameters ()
        :precondition (and
            (= (belief_state) 414)
        )
        :effect (and
            (assign (belief_state) 237)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_414_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 414)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_414_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 414)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_415_to_605
        :parameters ()
        :precondition (and
            (= (belief_state) 415)
        )
        :effect (and
            (assign (belief_state) 605)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_415_to_610
        :parameters ()
        :precondition (and
            (= (belief_state) 415)
        )
        :effect (and
            (assign (belief_state) 610)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_416_to_608
        :parameters ()
        :precondition (and
            (= (belief_state) 416)
        )
        :effect (and
            (assign (belief_state) 608)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_416_to_415
        :parameters ()
        :precondition (and
            (= (belief_state) 416)
        )
        :effect (and
            (assign (belief_state) 415)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_416_to_611
        :parameters ()
        :precondition (and
            (= (belief_state) 416)
        )
        :effect (and
            (assign (belief_state) 611)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_417_to_238
        :parameters ()
        :precondition (and
            (= (belief_state) 417)
        )
        :effect (and
            (assign (belief_state) 238)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_417_to_613
        :parameters ()
        :precondition (and
            (= (belief_state) 417)
        )
        :effect (and
            (assign (belief_state) 613)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_417_to_614
        :parameters ()
        :precondition (and
            (= (belief_state) 417)
        )
        :effect (and
            (assign (belief_state) 614)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_417_to_612
        :parameters ()
        :precondition (and
            (= (belief_state) 417)
        )
        :effect (and
            (assign (belief_state) 612)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_418_to_239
        :parameters ()
        :precondition (and
            (= (belief_state) 418)
        )
        :effect (and
            (assign (belief_state) 239)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_418_to_615
        :parameters ()
        :precondition (and
            (= (belief_state) 418)
        )
        :effect (and
            (assign (belief_state) 615)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_418_to_157
        :parameters ()
        :precondition (and
            (= (belief_state) 418)
        )
        :effect (and
            (assign (belief_state) 157)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_419_to_606
        :parameters ()
        :precondition (and
            (= (belief_state) 419)
        )
        :effect (and
            (assign (belief_state) 606)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_419_to_307
        :parameters ()
        :precondition (and
            (= (belief_state) 419)
        )
        :effect (and
            (assign (belief_state) 307)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_420_to_616
        :parameters ()
        :precondition (and
            (= (belief_state) 420)
        )
        :effect (and
            (assign (belief_state) 616)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_420_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 420)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_420_to_617
        :parameters ()
        :precondition (and
            (= (belief_state) 420)
        )
        :effect (and
            (assign (belief_state) 617)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_421_to_586
        :parameters ()
        :precondition (and
            (= (belief_state) 421)
        )
        :effect (and
            (assign (belief_state) 586)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_421_to_618
        :parameters ()
        :precondition (and
            (= (belief_state) 421)
        )
        :effect (and
            (assign (belief_state) 618)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_421_to_439
        :parameters ()
        :precondition (and
            (= (belief_state) 421)
        )
        :effect (and
            (assign (belief_state) 439)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_421_to_241
        :parameters ()
        :precondition (and
            (= (belief_state) 421)
        )
        :effect (and
            (assign (belief_state) 241)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_422_to_241
        :parameters ()
        :precondition (and
            (= (belief_state) 422)
        )
        :effect (and
            (assign (belief_state) 241)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_422_to_619
        :parameters ()
        :precondition (and
            (= (belief_state) 422)
        )
        :effect (and
            (assign (belief_state) 619)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_422_to_124
        :parameters ()
        :precondition (and
            (= (belief_state) 422)
        )
        :effect (and
            (assign (belief_state) 124)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_423_to_592
        :parameters ()
        :precondition (and
            (= (belief_state) 423)
        )
        :effect (and
            (assign (belief_state) 592)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_423_to_620
        :parameters ()
        :precondition (and
            (= (belief_state) 423)
        )
        :effect (and
            (assign (belief_state) 620)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_423_to_250
        :parameters ()
        :precondition (and
            (= (belief_state) 423)
        )
        :effect (and
            (assign (belief_state) 250)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_423_to_242
        :parameters ()
        :precondition (and
            (= (belief_state) 423)
        )
        :effect (and
            (assign (belief_state) 242)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_424_to_242
        :parameters ()
        :precondition (and
            (= (belief_state) 424)
        )
        :effect (and
            (assign (belief_state) 242)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_424_to_621
        :parameters ()
        :precondition (and
            (= (belief_state) 424)
        )
        :effect (and
            (assign (belief_state) 621)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_424_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 424)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_425_to_243
        :parameters ()
        :precondition (and
            (= (belief_state) 425)
        )
        :effect (and
            (assign (belief_state) 243)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_425_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 425)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_425_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 425)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_426_to_618
        :parameters ()
        :precondition (and
            (= (belief_state) 426)
        )
        :effect (and
            (assign (belief_state) 618)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_426_to_622
        :parameters ()
        :precondition (and
            (= (belief_state) 426)
        )
        :effect (and
            (assign (belief_state) 622)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_427_to_620
        :parameters ()
        :precondition (and
            (= (belief_state) 427)
        )
        :effect (and
            (assign (belief_state) 620)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_427_to_426
        :parameters ()
        :precondition (and
            (= (belief_state) 427)
        )
        :effect (and
            (assign (belief_state) 426)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_427_to_623
        :parameters ()
        :precondition (and
            (= (belief_state) 427)
        )
        :effect (and
            (assign (belief_state) 623)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_428_to_244
        :parameters ()
        :precondition (and
            (= (belief_state) 428)
        )
        :effect (and
            (assign (belief_state) 244)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_428_to_625
        :parameters ()
        :precondition (and
            (= (belief_state) 428)
        )
        :effect (and
            (assign (belief_state) 625)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_428_to_626
        :parameters ()
        :precondition (and
            (= (belief_state) 428)
        )
        :effect (and
            (assign (belief_state) 626)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_428_to_624
        :parameters ()
        :precondition (and
            (= (belief_state) 428)
        )
        :effect (and
            (assign (belief_state) 624)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_429_to_245
        :parameters ()
        :precondition (and
            (= (belief_state) 429)
        )
        :effect (and
            (assign (belief_state) 245)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_429_to_627
        :parameters ()
        :precondition (and
            (= (belief_state) 429)
        )
        :effect (and
            (assign (belief_state) 627)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_429_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 429)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_430_to_628
        :parameters ()
        :precondition (and
            (= (belief_state) 430)
        )
        :effect (and
            (assign (belief_state) 628)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_430_to_629
        :parameters ()
        :precondition (and
            (= (belief_state) 430)
        )
        :effect (and
            (assign (belief_state) 629)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_430_to_630
        :parameters ()
        :precondition (and
            (= (belief_state) 430)
        )
        :effect (and
            (assign (belief_state) 630)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_430_to_246
        :parameters ()
        :precondition (and
            (= (belief_state) 430)
        )
        :effect (and
            (assign (belief_state) 246)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_431_to_631
        :parameters ()
        :precondition (and
            (= (belief_state) 431)
        )
        :effect (and
            (assign (belief_state) 631)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_431_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 431)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_431_to_296
        :parameters ()
        :precondition (and
            (= (belief_state) 431)
        )
        :effect (and
            (assign (belief_state) 296)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_432_to_632
        :parameters ()
        :precondition (and
            (= (belief_state) 432)
        )
        :effect (and
            (assign (belief_state) 632)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_432_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 432)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_432_to_633
        :parameters ()
        :precondition (and
            (= (belief_state) 432)
        )
        :effect (and
            (assign (belief_state) 633)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_432_to_247
        :parameters ()
        :precondition (and
            (= (belief_state) 432)
        )
        :effect (and
            (assign (belief_state) 247)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_433_to_634
        :parameters ()
        :precondition (and
            (= (belief_state) 433)
        )
        :effect (and
            (assign (belief_state) 634)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_433_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 433)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_433_to_635
        :parameters ()
        :precondition (and
            (= (belief_state) 433)
        )
        :effect (and
            (assign (belief_state) 635)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_433_to_248
        :parameters ()
        :precondition (and
            (= (belief_state) 433)
        )
        :effect (and
            (assign (belief_state) 248)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_434_to_636
        :parameters ()
        :precondition (and
            (= (belief_state) 434)
        )
        :effect (and
            (assign (belief_state) 636)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_434_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 434)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_434_to_638
        :parameters ()
        :precondition (and
            (= (belief_state) 434)
        )
        :effect (and
            (assign (belief_state) 638)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_434_to_249
        :parameters ()
        :precondition (and
            (= (belief_state) 434)
        )
        :effect (and
            (assign (belief_state) 249)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_435_to_639
        :parameters ()
        :precondition (and
            (= (belief_state) 435)
        )
        :effect (and
            (assign (belief_state) 639)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_435_to_261
        :parameters ()
        :precondition (and
            (= (belief_state) 435)
        )
        :effect (and
            (assign (belief_state) 261)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_436_to_640
        :parameters ()
        :precondition (and
            (= (belief_state) 436)
        )
        :effect (and
            (assign (belief_state) 640)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_436_to_435
        :parameters ()
        :precondition (and
            (= (belief_state) 436)
        )
        :effect (and
            (assign (belief_state) 435)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_436_to_269
        :parameters ()
        :precondition (and
            (= (belief_state) 436)
        )
        :effect (and
            (assign (belief_state) 269)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_437_to_641
        :parameters ()
        :precondition (and
            (= (belief_state) 437)
        )
        :effect (and
            (assign (belief_state) 641)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_437_to_642
        :parameters ()
        :precondition (and
            (= (belief_state) 437)
        )
        :effect (and
            (assign (belief_state) 642)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_437_to_250
        :parameters ()
        :precondition (and
            (= (belief_state) 437)
        )
        :effect (and
            (assign (belief_state) 250)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_438_to_643
        :parameters ()
        :precondition (and
            (= (belief_state) 438)
        )
        :effect (and
            (assign (belief_state) 643)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_438_to_644
        :parameters ()
        :precondition (and
            (= (belief_state) 438)
        )
        :effect (and
            (assign (belief_state) 644)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_438_to_275
        :parameters ()
        :precondition (and
            (= (belief_state) 438)
        )
        :effect (and
            (assign (belief_state) 275)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_439_to_645
        :parameters ()
        :precondition (and
            (= (belief_state) 439)
        )
        :effect (and
            (assign (belief_state) 645)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_439_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 439)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_439_to_251
        :parameters ()
        :precondition (and
            (= (belief_state) 439)
        )
        :effect (and
            (assign (belief_state) 251)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_440_to_646
        :parameters ()
        :precondition (and
            (= (belief_state) 440)
        )
        :effect (and
            (assign (belief_state) 646)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_440_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 440)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_440_to_252
        :parameters ()
        :precondition (and
            (= (belief_state) 440)
        )
        :effect (and
            (assign (belief_state) 252)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_441_to_648
        :parameters ()
        :precondition (and
            (= (belief_state) 441)
        )
        :effect (and
            (assign (belief_state) 648)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_441_to_262
        :parameters ()
        :precondition (and
            (= (belief_state) 441)
        )
        :effect (and
            (assign (belief_state) 262)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_442_to_649
        :parameters ()
        :precondition (and
            (= (belief_state) 442)
        )
        :effect (and
            (assign (belief_state) 649)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_442_to_650
        :parameters ()
        :precondition (and
            (= (belief_state) 442)
        )
        :effect (and
            (assign (belief_state) 650)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_442_to_253
        :parameters ()
        :precondition (and
            (= (belief_state) 442)
        )
        :effect (and
            (assign (belief_state) 253)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_443_to_342
        :parameters ()
        :precondition (and
            (= (belief_state) 443)
        )
        :effect (and
            (assign (belief_state) 342)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_444_to_443
        :parameters ()
        :precondition (and
            (= (belief_state) 444)
        )
        :effect (and
            (assign (belief_state) 443)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_444_to_391
        :parameters ()
        :precondition (and
            (= (belief_state) 444)
        )
        :effect (and
            (assign (belief_state) 391)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_445_to_651
        :parameters ()
        :precondition (and
            (= (belief_state) 445)
        )
        :effect (and
            (assign (belief_state) 651)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_445_to_652
        :parameters ()
        :precondition (and
            (= (belief_state) 445)
        )
        :effect (and
            (assign (belief_state) 652)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_445_to_255
        :parameters ()
        :precondition (and
            (= (belief_state) 445)
        )
        :effect (and
            (assign (belief_state) 255)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_446_to_653
        :parameters ()
        :precondition (and
            (= (belief_state) 446)
        )
        :effect (and
            (assign (belief_state) 653)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_446_to_654
        :parameters ()
        :precondition (and
            (= (belief_state) 446)
        )
        :effect (and
            (assign (belief_state) 654)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_446_to_256
        :parameters ()
        :precondition (and
            (= (belief_state) 446)
        )
        :effect (and
            (assign (belief_state) 256)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_447_to_655
        :parameters ()
        :precondition (and
            (= (belief_state) 447)
        )
        :effect (and
            (assign (belief_state) 655)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_447_to_656
        :parameters ()
        :precondition (and
            (= (belief_state) 447)
        )
        :effect (and
            (assign (belief_state) 656)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_447_to_257
        :parameters ()
        :precondition (and
            (= (belief_state) 447)
        )
        :effect (and
            (assign (belief_state) 257)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_448_to_657
        :parameters ()
        :precondition (and
            (= (belief_state) 448)
        )
        :effect (and
            (assign (belief_state) 657)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_448_to_304
        :parameters ()
        :precondition (and
            (= (belief_state) 448)
        )
        :effect (and
            (assign (belief_state) 304)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_449_to_658
        :parameters ()
        :precondition (and
            (= (belief_state) 449)
        )
        :effect (and
            (assign (belief_state) 658)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_449_to_448
        :parameters ()
        :precondition (and
            (= (belief_state) 449)
        )
        :effect (and
            (assign (belief_state) 448)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_449_to_324
        :parameters ()
        :precondition (and
            (= (belief_state) 449)
        )
        :effect (and
            (assign (belief_state) 324)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_450_to_659
        :parameters ()
        :precondition (and
            (= (belief_state) 450)
        )
        :effect (and
            (assign (belief_state) 659)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_450_to_660
        :parameters ()
        :precondition (and
            (= (belief_state) 450)
        )
        :effect (and
            (assign (belief_state) 660)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_450_to_660
        :parameters ()
        :precondition (and
            (= (belief_state) 450)
        )
        :effect (and
            (assign (belief_state) 660)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_450_to_258
        :parameters ()
        :precondition (and
            (= (belief_state) 450)
        )
        :effect (and
            (assign (belief_state) 258)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_451_to_661
        :parameters ()
        :precondition (and
            (= (belief_state) 451)
        )
        :effect (and
            (assign (belief_state) 661)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_451_to_283
        :parameters ()
        :precondition (and
            (= (belief_state) 451)
        )
        :effect (and
            (assign (belief_state) 283)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_452_to_662
        :parameters ()
        :precondition (and
            (= (belief_state) 452)
        )
        :effect (and
            (assign (belief_state) 662)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_452_to_663
        :parameters ()
        :precondition (and
            (= (belief_state) 452)
        )
        :effect (and
            (assign (belief_state) 663)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_452_to_664
        :parameters ()
        :precondition (and
            (= (belief_state) 452)
        )
        :effect (and
            (assign (belief_state) 664)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_452_to_259
        :parameters ()
        :precondition (and
            (= (belief_state) 452)
        )
        :effect (and
            (assign (belief_state) 259)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_453_to_665
        :parameters ()
        :precondition (and
            (= (belief_state) 453)
        )
        :effect (and
            (assign (belief_state) 665)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_453_to_666
        :parameters ()
        :precondition (and
            (= (belief_state) 453)
        )
        :effect (and
            (assign (belief_state) 666)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_453_to_260
        :parameters ()
        :precondition (and
            (= (belief_state) 453)
        )
        :effect (and
            (assign (belief_state) 260)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_454_to_667
        :parameters ()
        :precondition (and
            (= (belief_state) 454)
        )
        :effect (and
            (assign (belief_state) 667)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_454_to_305
        :parameters ()
        :precondition (and
            (= (belief_state) 454)
        )
        :effect (and
            (assign (belief_state) 305)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_455_to_668
        :parameters ()
        :precondition (and
            (= (belief_state) 455)
        )
        :effect (and
            (assign (belief_state) 668)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_455_to_454
        :parameters ()
        :precondition (and
            (= (belief_state) 455)
        )
        :effect (and
            (assign (belief_state) 454)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_455_to_325
        :parameters ()
        :precondition (and
            (= (belief_state) 455)
        )
        :effect (and
            (assign (belief_state) 325)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_456_to_650
        :parameters ()
        :precondition (and
            (= (belief_state) 456)
        )
        :effect (and
            (assign (belief_state) 650)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_457_to_347
        :parameters ()
        :precondition (and
            (= (belief_state) 457)
        )
        :effect (and
            (assign (belief_state) 347)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_458_to_457
        :parameters ()
        :precondition (and
            (= (belief_state) 458)
        )
        :effect (and
            (assign (belief_state) 457)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_458_to_395
        :parameters ()
        :precondition (and
            (= (belief_state) 458)
        )
        :effect (and
            (assign (belief_state) 395)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_459_to_669
        :parameters ()
        :precondition (and
            (= (belief_state) 459)
        )
        :effect (and
            (assign (belief_state) 669)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_459_to_670
        :parameters ()
        :precondition (and
            (= (belief_state) 459)
        )
        :effect (and
            (assign (belief_state) 670)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_459_to_264
        :parameters ()
        :precondition (and
            (= (belief_state) 459)
        )
        :effect (and
            (assign (belief_state) 264)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_460_to_671
        :parameters ()
        :precondition (and
            (= (belief_state) 460)
        )
        :effect (and
            (assign (belief_state) 671)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_460_to_672
        :parameters ()
        :precondition (and
            (= (belief_state) 460)
        )
        :effect (and
            (assign (belief_state) 672)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_460_to_265
        :parameters ()
        :precondition (and
            (= (belief_state) 460)
        )
        :effect (and
            (assign (belief_state) 265)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_461_to_673
        :parameters ()
        :precondition (and
            (= (belief_state) 461)
        )
        :effect (and
            (assign (belief_state) 673)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_461_to_674
        :parameters ()
        :precondition (and
            (= (belief_state) 461)
        )
        :effect (and
            (assign (belief_state) 674)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_461_to_266
        :parameters ()
        :precondition (and
            (= (belief_state) 461)
        )
        :effect (and
            (assign (belief_state) 266)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_462_to_675
        :parameters ()
        :precondition (and
            (= (belief_state) 462)
        )
        :effect (and
            (assign (belief_state) 675)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_462_to_308
        :parameters ()
        :precondition (and
            (= (belief_state) 462)
        )
        :effect (and
            (assign (belief_state) 308)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_463_to_676
        :parameters ()
        :precondition (and
            (= (belief_state) 463)
        )
        :effect (and
            (assign (belief_state) 676)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_463_to_462
        :parameters ()
        :precondition (and
            (= (belief_state) 463)
        )
        :effect (and
            (assign (belief_state) 462)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_463_to_327
        :parameters ()
        :precondition (and
            (= (belief_state) 463)
        )
        :effect (and
            (assign (belief_state) 327)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_464_to_677
        :parameters ()
        :precondition (and
            (= (belief_state) 464)
        )
        :effect (and
            (assign (belief_state) 677)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_464_to_678
        :parameters ()
        :precondition (and
            (= (belief_state) 464)
        )
        :effect (and
            (assign (belief_state) 678)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_464_to_679
        :parameters ()
        :precondition (and
            (= (belief_state) 464)
        )
        :effect (and
            (assign (belief_state) 679)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_464_to_267
        :parameters ()
        :precondition (and
            (= (belief_state) 464)
        )
        :effect (and
            (assign (belief_state) 267)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_465_to_680
        :parameters ()
        :precondition (and
            (= (belief_state) 465)
        )
        :effect (and
            (assign (belief_state) 680)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_465_to_681
        :parameters ()
        :precondition (and
            (= (belief_state) 465)
        )
        :effect (and
            (assign (belief_state) 681)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_465_to_268
        :parameters ()
        :precondition (and
            (= (belief_state) 465)
        )
        :effect (and
            (assign (belief_state) 268)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_466_to_682
        :parameters ()
        :precondition (and
            (= (belief_state) 466)
        )
        :effect (and
            (assign (belief_state) 682)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_466_to_309
        :parameters ()
        :precondition (and
            (= (belief_state) 466)
        )
        :effect (and
            (assign (belief_state) 309)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_467_to_683
        :parameters ()
        :precondition (and
            (= (belief_state) 467)
        )
        :effect (and
            (assign (belief_state) 683)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_467_to_466
        :parameters ()
        :precondition (and
            (= (belief_state) 467)
        )
        :effect (and
            (assign (belief_state) 466)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_467_to_328
        :parameters ()
        :precondition (and
            (= (belief_state) 467)
        )
        :effect (and
            (assign (belief_state) 328)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_468_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 468)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_468_to_274
        :parameters ()
        :precondition (and
            (= (belief_state) 468)
        )
        :effect (and
            (assign (belief_state) 274)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_469_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 469)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_469_to_276
        :parameters ()
        :precondition (and
            (= (belief_state) 469)
        )
        :effect (and
            (assign (belief_state) 276)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_470_to_684
        :parameters ()
        :precondition (and
            (= (belief_state) 470)
        )
        :effect (and
            (assign (belief_state) 684)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room1_room2__from_471_to_353
        :parameters ()
        :precondition (and
            (= (belief_state) 471)
        )
        :effect (and
            (assign (belief_state) 353)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_472_to_356
        :parameters ()
        :precondition (and
            (= (belief_state) 472)
        )
        :effect (and
            (assign (belief_state) 356)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_473_to_685
        :parameters ()
        :precondition (and
            (= (belief_state) 473)
        )
        :effect (and
            (assign (belief_state) 685)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_473_to_685
        :parameters ()
        :precondition (and
            (= (belief_state) 473)
        )
        :effect (and
            (assign (belief_state) 685)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_473_to_281
        :parameters ()
        :precondition (and
            (= (belief_state) 473)
        )
        :effect (and
            (assign (belief_state) 281)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_474_to_283
        :parameters ()
        :precondition (and
            (= (belief_state) 474)
        )
        :effect (and
            (assign (belief_state) 283)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_474_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 474)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_474_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 474)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_475_to_358
        :parameters ()
        :precondition (and
            (= (belief_state) 475)
        )
        :effect (and
            (assign (belief_state) 358)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_476_to_475
        :parameters ()
        :precondition (and
            (= (belief_state) 476)
        )
        :effect (and
            (assign (belief_state) 475)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_476_to_401
        :parameters ()
        :precondition (and
            (= (belief_state) 476)
        )
        :effect (and
            (assign (belief_state) 401)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_477_to_359
        :parameters ()
        :precondition (and
            (= (belief_state) 477)
        )
        :effect (and
            (assign (belief_state) 359)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_478_to_477
        :parameters ()
        :precondition (and
            (= (belief_state) 478)
        )
        :effect (and
            (assign (belief_state) 477)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_478_to_402
        :parameters ()
        :precondition (and
            (= (belief_state) 478)
        )
        :effect (and
            (assign (belief_state) 402)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_479_to_558
        :parameters ()
        :precondition (and
            (= (belief_state) 479)
        )
        :effect (and
            (assign (belief_state) 558)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_479_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 479)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_480_to_686
        :parameters ()
        :precondition (and
            (= (belief_state) 480)
        )
        :effect (and
            (assign (belief_state) 686)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_480_to_482
        :parameters ()
        :precondition (and
            (= (belief_state) 480)
        )
        :effect (and
            (assign (belief_state) 482)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_481_to_644
        :parameters ()
        :precondition (and
            (= (belief_state) 481)
        )
        :effect (and
            (assign (belief_state) 644)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_481_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 481)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_482_to_687
        :parameters ()
        :precondition (and
            (= (belief_state) 482)
        )
        :effect (and
            (assign (belief_state) 687)
            (assign (goal_reached) 'f')
        )
    )

    (:action save_princess_room5__from_482_to_688
        :parameters ()
        :precondition (and
            (= (belief_state) 482)
        )
        :effect (and
            (assign (belief_state) 688)
            (assign (goal_reached) 't')
        )
    )

    (:action left_room4_room3__from_483_to_633
        :parameters ()
        :precondition (and
            (= (belief_state) 483)
        )
        :effect (and
            (assign (belief_state) 633)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_483_to_298
        :parameters ()
        :precondition (and
            (= (belief_state) 483)
        )
        :effect (and
            (assign (belief_state) 298)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_484_to_635
        :parameters ()
        :precondition (and
            (= (belief_state) 484)
        )
        :effect (and
            (assign (belief_state) 635)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_484_to_483
        :parameters ()
        :precondition (and
            (= (belief_state) 484)
        )
        :effect (and
            (assign (belief_state) 483)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_484_to_299
        :parameters ()
        :precondition (and
            (= (belief_state) 484)
        )
        :effect (and
            (assign (belief_state) 299)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_485_to_638
        :parameters ()
        :precondition (and
            (= (belief_state) 485)
        )
        :effect (and
            (assign (belief_state) 638)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_485_to_689
        :parameters ()
        :precondition (and
            (= (belief_state) 485)
        )
        :effect (and
            (assign (belief_state) 689)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_485_to_690
        :parameters ()
        :precondition (and
            (= (belief_state) 485)
        )
        :effect (and
            (assign (belief_state) 690)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_485_to_297
        :parameters ()
        :precondition (and
            (= (belief_state) 485)
        )
        :effect (and
            (assign (belief_state) 297)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_486_to_689
        :parameters ()
        :precondition (and
            (= (belief_state) 486)
        )
        :effect (and
            (assign (belief_state) 689)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_486_to_262
        :parameters ()
        :precondition (and
            (= (belief_state) 486)
        )
        :effect (and
            (assign (belief_state) 262)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_487_to_690
        :parameters ()
        :precondition (and
            (= (belief_state) 487)
        )
        :effect (and
            (assign (belief_state) 690)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_487_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 487)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_488_to_629
        :parameters ()
        :precondition (and
            (= (belief_state) 488)
        )
        :effect (and
            (assign (belief_state) 629)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_488_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 488)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_488_to_691
        :parameters ()
        :precondition (and
            (= (belief_state) 488)
        )
        :effect (and
            (assign (belief_state) 691)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_488_to_300
        :parameters ()
        :precondition (and
            (= (belief_state) 488)
        )
        :effect (and
            (assign (belief_state) 300)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_489_to_692
        :parameters ()
        :precondition (and
            (= (belief_state) 489)
        )
        :effect (and
            (assign (belief_state) 692)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_489_to_306
        :parameters ()
        :precondition (and
            (= (belief_state) 489)
        )
        :effect (and
            (assign (belief_state) 306)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_490_to_693
        :parameters ()
        :precondition (and
            (= (belief_state) 490)
        )
        :effect (and
            (assign (belief_state) 693)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_490_to_489
        :parameters ()
        :precondition (and
            (= (belief_state) 490)
        )
        :effect (and
            (assign (belief_state) 489)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_490_to_310
        :parameters ()
        :precondition (and
            (= (belief_state) 490)
        )
        :effect (and
            (assign (belief_state) 310)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_491_to_694
        :parameters ()
        :precondition (and
            (= (belief_state) 491)
        )
        :effect (and
            (assign (belief_state) 694)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_491_to_695
        :parameters ()
        :precondition (and
            (= (belief_state) 491)
        )
        :effect (and
            (assign (belief_state) 695)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_491_to_696
        :parameters ()
        :precondition (and
            (= (belief_state) 491)
        )
        :effect (and
            (assign (belief_state) 696)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_491_to_301
        :parameters ()
        :precondition (and
            (= (belief_state) 491)
        )
        :effect (and
            (assign (belief_state) 301)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_492_to_642
        :parameters ()
        :precondition (and
            (= (belief_state) 492)
        )
        :effect (and
            (assign (belief_state) 642)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_492_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 492)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_492_to_302
        :parameters ()
        :precondition (and
            (= (belief_state) 492)
        )
        :effect (and
            (assign (belief_state) 302)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_493_to_697
        :parameters ()
        :precondition (and
            (= (belief_state) 493)
        )
        :effect (and
            (assign (belief_state) 697)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_493_to_698
        :parameters ()
        :precondition (and
            (= (belief_state) 493)
        )
        :effect (and
            (assign (belief_state) 698)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_493_to_303
        :parameters ()
        :precondition (and
            (= (belief_state) 493)
        )
        :effect (and
            (assign (belief_state) 303)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_494_to_699
        :parameters ()
        :precondition (and
            (= (belief_state) 494)
        )
        :effect (and
            (assign (belief_state) 699)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_495_to_660
        :parameters ()
        :precondition (and
            (= (belief_state) 495)
        )
        :effect (and
            (assign (belief_state) 660)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_495_to_700
        :parameters ()
        :precondition (and
            (= (belief_state) 495)
        )
        :effect (and
            (assign (belief_state) 700)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_495_to_314
        :parameters ()
        :precondition (and
            (= (belief_state) 495)
        )
        :effect (and
            (assign (belief_state) 314)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_496_to_663
        :parameters ()
        :precondition (and
            (= (belief_state) 496)
        )
        :effect (and
            (assign (belief_state) 663)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_496_to_700
        :parameters ()
        :precondition (and
            (= (belief_state) 496)
        )
        :effect (and
            (assign (belief_state) 700)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_496_to_317
        :parameters ()
        :precondition (and
            (= (belief_state) 496)
        )
        :effect (and
            (assign (belief_state) 317)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_497_to_695
        :parameters ()
        :precondition (and
            (= (belief_state) 497)
        )
        :effect (and
            (assign (belief_state) 695)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_497_to_498
        :parameters ()
        :precondition (and
            (= (belief_state) 497)
        )
        :effect (and
            (assign (belief_state) 498)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_498_to_698
        :parameters ()
        :precondition (and
            (= (belief_state) 498)
        )
        :effect (and
            (assign (belief_state) 698)
            (assign (goal_reached) 'f')
        )
    )

    (:action save_princess_room5__from_498_to_701
        :parameters ()
        :precondition (and
            (= (belief_state) 498)
        )
        :effect (and
            (assign (belief_state) 701)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_499_to_678
        :parameters ()
        :precondition (and
            (= (belief_state) 499)
        )
        :effect (and
            (assign (belief_state) 678)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_499_to_700
        :parameters ()
        :precondition (and
            (= (belief_state) 499)
        )
        :effect (and
            (assign (belief_state) 700)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_499_to_318
        :parameters ()
        :precondition (and
            (= (belief_state) 499)
        )
        :effect (and
            (assign (belief_state) 318)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_500_to_696
        :parameters ()
        :precondition (and
            (= (belief_state) 500)
        )
        :effect (and
            (assign (belief_state) 696)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_500_to_303
        :parameters ()
        :precondition (and
            (= (belief_state) 500)
        )
        :effect (and
            (assign (belief_state) 303)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_501_to_314
        :parameters ()
        :precondition (and
            (= (belief_state) 501)
        )
        :effect (and
            (assign (belief_state) 314)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_501_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 501)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_501_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 501)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_502_to_315
        :parameters ()
        :precondition (and
            (= (belief_state) 502)
        )
        :effect (and
            (assign (belief_state) 315)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_502_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 502)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_502_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 502)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_503_to_700
        :parameters ()
        :precondition (and
            (= (belief_state) 503)
        )
        :effect (and
            (assign (belief_state) 700)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_503_to_702
        :parameters ()
        :precondition (and
            (= (belief_state) 503)
        )
        :effect (and
            (assign (belief_state) 702)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_504_to_317
        :parameters ()
        :precondition (and
            (= (belief_state) 504)
        )
        :effect (and
            (assign (belief_state) 317)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_504_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 504)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_504_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 504)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_505_to_318
        :parameters ()
        :precondition (and
            (= (belief_state) 505)
        )
        :effect (and
            (assign (belief_state) 318)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_505_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 505)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_505_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 505)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_506_to_691
        :parameters ()
        :precondition (and
            (= (belief_state) 506)
        )
        :effect (and
            (assign (belief_state) 691)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_506_to_703
        :parameters ()
        :precondition (and
            (= (belief_state) 506)
        )
        :effect (and
            (assign (belief_state) 703)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_506_to_704
        :parameters ()
        :precondition (and
            (= (belief_state) 506)
        )
        :effect (and
            (assign (belief_state) 704)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_506_to_319
        :parameters ()
        :precondition (and
            (= (belief_state) 506)
        )
        :effect (and
            (assign (belief_state) 319)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_507_to_705
        :parameters ()
        :precondition (and
            (= (belief_state) 507)
        )
        :effect (and
            (assign (belief_state) 705)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_507_to_303
        :parameters ()
        :precondition (and
            (= (belief_state) 507)
        )
        :effect (and
            (assign (belief_state) 303)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_508_to_703
        :parameters ()
        :precondition (and
            (= (belief_state) 508)
        )
        :effect (and
            (assign (belief_state) 703)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_508_to_307
        :parameters ()
        :precondition (and
            (= (belief_state) 508)
        )
        :effect (and
            (assign (belief_state) 307)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_508_to_706
        :parameters ()
        :precondition (and
            (= (belief_state) 508)
        )
        :effect (and
            (assign (belief_state) 706)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_509_to_704
        :parameters ()
        :precondition (and
            (= (belief_state) 509)
        )
        :effect (and
            (assign (belief_state) 704)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_509_to_157
        :parameters ()
        :precondition (and
            (= (belief_state) 509)
        )
        :effect (and
            (assign (belief_state) 157)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_509_to_707
        :parameters ()
        :precondition (and
            (= (belief_state) 509)
        )
        :effect (and
            (assign (belief_state) 707)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_510_to_630
        :parameters ()
        :precondition (and
            (= (belief_state) 510)
        )
        :effect (and
            (assign (belief_state) 630)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_510_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 510)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_510_to_708
        :parameters ()
        :precondition (and
            (= (belief_state) 510)
        )
        :effect (and
            (assign (belief_state) 708)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_510_to_322
        :parameters ()
        :precondition (and
            (= (belief_state) 510)
        )
        :effect (and
            (assign (belief_state) 322)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_511_to_709
        :parameters ()
        :precondition (and
            (= (belief_state) 511)
        )
        :effect (and
            (assign (belief_state) 709)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_511_to_326
        :parameters ()
        :precondition (and
            (= (belief_state) 511)
        )
        :effect (and
            (assign (belief_state) 326)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_512_to_710
        :parameters ()
        :precondition (and
            (= (belief_state) 512)
        )
        :effect (and
            (assign (belief_state) 710)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_512_to_511
        :parameters ()
        :precondition (and
            (= (belief_state) 512)
        )
        :effect (and
            (assign (belief_state) 511)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_512_to_329
        :parameters ()
        :precondition (and
            (= (belief_state) 512)
        )
        :effect (and
            (assign (belief_state) 329)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_513_to_711
        :parameters ()
        :precondition (and
            (= (belief_state) 513)
        )
        :effect (and
            (assign (belief_state) 711)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_513_to_712
        :parameters ()
        :precondition (and
            (= (belief_state) 513)
        )
        :effect (and
            (assign (belief_state) 712)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_513_to_713
        :parameters ()
        :precondition (and
            (= (belief_state) 513)
        )
        :effect (and
            (assign (belief_state) 713)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_513_to_323
        :parameters ()
        :precondition (and
            (= (belief_state) 513)
        )
        :effect (and
            (assign (belief_state) 323)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_514_to_664
        :parameters ()
        :precondition (and
            (= (belief_state) 514)
        )
        :effect (and
            (assign (belief_state) 664)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_514_to_700
        :parameters ()
        :precondition (and
            (= (belief_state) 514)
        )
        :effect (and
            (assign (belief_state) 700)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_514_to_333
        :parameters ()
        :precondition (and
            (= (belief_state) 514)
        )
        :effect (and
            (assign (belief_state) 333)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_515_to_712
        :parameters ()
        :precondition (and
            (= (belief_state) 515)
        )
        :effect (and
            (assign (belief_state) 712)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_515_to_262
        :parameters ()
        :precondition (and
            (= (belief_state) 515)
        )
        :effect (and
            (assign (belief_state) 262)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_516_to_679
        :parameters ()
        :precondition (and
            (= (belief_state) 516)
        )
        :effect (and
            (assign (belief_state) 679)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_516_to_700
        :parameters ()
        :precondition (and
            (= (belief_state) 516)
        )
        :effect (and
            (assign (belief_state) 700)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_516_to_334
        :parameters ()
        :precondition (and
            (= (belief_state) 516)
        )
        :effect (and
            (assign (belief_state) 334)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_517_to_713
        :parameters ()
        :precondition (and
            (= (belief_state) 517)
        )
        :effect (and
            (assign (belief_state) 713)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_517_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 517)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_518_to_333
        :parameters ()
        :precondition (and
            (= (belief_state) 518)
        )
        :effect (and
            (assign (belief_state) 333)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_518_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 518)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_518_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 518)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_519_to_334
        :parameters ()
        :precondition (and
            (= (belief_state) 519)
        )
        :effect (and
            (assign (belief_state) 334)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_519_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 519)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_519_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 519)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_520_to_708
        :parameters ()
        :precondition (and
            (= (belief_state) 520)
        )
        :effect (and
            (assign (belief_state) 708)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_520_to_714
        :parameters ()
        :precondition (and
            (= (belief_state) 520)
        )
        :effect (and
            (assign (belief_state) 714)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_520_to_715
        :parameters ()
        :precondition (and
            (= (belief_state) 520)
        )
        :effect (and
            (assign (belief_state) 715)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_520_to_335
        :parameters ()
        :precondition (and
            (= (belief_state) 520)
        )
        :effect (and
            (assign (belief_state) 335)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_521_to_716
        :parameters ()
        :precondition (and
            (= (belief_state) 521)
        )
        :effect (and
            (assign (belief_state) 716)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_521_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 521)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_522_to_714
        :parameters ()
        :precondition (and
            (= (belief_state) 522)
        )
        :effect (and
            (assign (belief_state) 714)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_522_to_124
        :parameters ()
        :precondition (and
            (= (belief_state) 522)
        )
        :effect (and
            (assign (belief_state) 124)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_522_to_717
        :parameters ()
        :precondition (and
            (= (belief_state) 522)
        )
        :effect (and
            (assign (belief_state) 717)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_523_to_715
        :parameters ()
        :precondition (and
            (= (belief_state) 523)
        )
        :effect (and
            (assign (belief_state) 715)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_523_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 523)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_523_to_718
        :parameters ()
        :precondition (and
            (= (belief_state) 523)
        )
        :effect (and
            (assign (belief_state) 718)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_524_to_719
        :parameters ()
        :precondition (and
            (= (belief_state) 524)
        )
        :effect (and
            (assign (belief_state) 719)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_524_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 524)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_524_to_720
        :parameters ()
        :precondition (and
            (= (belief_state) 524)
        )
        :effect (and
            (assign (belief_state) 720)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_524_to_338
        :parameters ()
        :precondition (and
            (= (belief_state) 524)
        )
        :effect (and
            (assign (belief_state) 338)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_525_to_721
        :parameters ()
        :precondition (and
            (= (belief_state) 525)
        )
        :effect (and
            (assign (belief_state) 721)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_525_to_345
        :parameters ()
        :precondition (and
            (= (belief_state) 525)
        )
        :effect (and
            (assign (belief_state) 345)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_526_to_722
        :parameters ()
        :precondition (and
            (= (belief_state) 526)
        )
        :effect (and
            (assign (belief_state) 722)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_526_to_525
        :parameters ()
        :precondition (and
            (= (belief_state) 526)
        )
        :effect (and
            (assign (belief_state) 525)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_526_to_350
        :parameters ()
        :precondition (and
            (= (belief_state) 526)
        )
        :effect (and
            (assign (belief_state) 350)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_527_to_723
        :parameters ()
        :precondition (and
            (= (belief_state) 527)
        )
        :effect (and
            (assign (belief_state) 723)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_527_to_724
        :parameters ()
        :precondition (and
            (= (belief_state) 527)
        )
        :effect (and
            (assign (belief_state) 724)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_527_to_725
        :parameters ()
        :precondition (and
            (= (belief_state) 527)
        )
        :effect (and
            (assign (belief_state) 725)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_527_to_339
        :parameters ()
        :precondition (and
            (= (belief_state) 527)
        )
        :effect (and
            (assign (belief_state) 339)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_528_to_726
        :parameters ()
        :precondition (and
            (= (belief_state) 528)
        )
        :effect (and
            (assign (belief_state) 726)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_528_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 528)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_528_to_340
        :parameters ()
        :precondition (and
            (= (belief_state) 528)
        )
        :effect (and
            (assign (belief_state) 340)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_529_to_727
        :parameters ()
        :precondition (and
            (= (belief_state) 529)
        )
        :effect (and
            (assign (belief_state) 727)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_529_to_728
        :parameters ()
        :precondition (and
            (= (belief_state) 529)
        )
        :effect (and
            (assign (belief_state) 728)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_529_to_341
        :parameters ()
        :precondition (and
            (= (belief_state) 529)
        )
        :effect (and
            (assign (belief_state) 341)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_530_to_729
        :parameters ()
        :precondition (and
            (= (belief_state) 530)
        )
        :effect (and
            (assign (belief_state) 729)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_531_to_651
        :parameters ()
        :precondition (and
            (= (belief_state) 531)
        )
        :effect (and
            (assign (belief_state) 651)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_531_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 531)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_532_to_653
        :parameters ()
        :precondition (and
            (= (belief_state) 532)
        )
        :effect (and
            (assign (belief_state) 653)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_532_to_531
        :parameters ()
        :precondition (and
            (= (belief_state) 532)
        )
        :effect (and
            (assign (belief_state) 531)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_532_to_379
        :parameters ()
        :precondition (and
            (= (belief_state) 532)
        )
        :effect (and
            (assign (belief_state) 379)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_533_to_655
        :parameters ()
        :precondition (and
            (= (belief_state) 533)
        )
        :effect (and
            (assign (belief_state) 655)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_533_to_531
        :parameters ()
        :precondition (and
            (= (belief_state) 533)
        )
        :effect (and
            (assign (belief_state) 531)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_533_to_730
        :parameters ()
        :precondition (and
            (= (belief_state) 533)
        )
        :effect (and
            (assign (belief_state) 730)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_533_to_343
        :parameters ()
        :precondition (and
            (= (belief_state) 533)
        )
        :effect (and
            (assign (belief_state) 343)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_534_to_731
        :parameters ()
        :precondition (and
            (= (belief_state) 534)
        )
        :effect (and
            (assign (belief_state) 731)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_534_to_732
        :parameters ()
        :precondition (and
            (= (belief_state) 534)
        )
        :effect (and
            (assign (belief_state) 732)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_534_to_355
        :parameters ()
        :precondition (and
            (= (belief_state) 534)
        )
        :effect (and
            (assign (belief_state) 355)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_535_to_733
        :parameters ()
        :precondition (and
            (= (belief_state) 535)
        )
        :effect (and
            (assign (belief_state) 733)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_535_to_732
        :parameters ()
        :precondition (and
            (= (belief_state) 535)
        )
        :effect (and
            (assign (belief_state) 732)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_535_to_361
        :parameters ()
        :precondition (and
            (= (belief_state) 535)
        )
        :effect (and
            (assign (belief_state) 361)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_536_to_665
        :parameters ()
        :precondition (and
            (= (belief_state) 536)
        )
        :effect (and
            (assign (belief_state) 665)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_536_to_643
        :parameters ()
        :precondition (and
            (= (belief_state) 536)
        )
        :effect (and
            (assign (belief_state) 643)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_536_to_734
        :parameters ()
        :precondition (and
            (= (belief_state) 536)
        )
        :effect (and
            (assign (belief_state) 734)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_536_to_344
        :parameters ()
        :precondition (and
            (= (belief_state) 536)
        )
        :effect (and
            (assign (belief_state) 344)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_537_to_724
        :parameters ()
        :precondition (and
            (= (belief_state) 537)
        )
        :effect (and
            (assign (belief_state) 724)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_537_to_538
        :parameters ()
        :precondition (and
            (= (belief_state) 537)
        )
        :effect (and
            (assign (belief_state) 538)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_538_to_728
        :parameters ()
        :precondition (and
            (= (belief_state) 538)
        )
        :effect (and
            (assign (belief_state) 728)
            (assign (goal_reached) 'f')
        )
    )

    (:action save_princess_room5__from_538_to_735
        :parameters ()
        :precondition (and
            (= (belief_state) 538)
        )
        :effect (and
            (assign (belief_state) 735)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_539_to_669
        :parameters ()
        :precondition (and
            (= (belief_state) 539)
        )
        :effect (and
            (assign (belief_state) 669)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_539_to_369
        :parameters ()
        :precondition (and
            (= (belief_state) 539)
        )
        :effect (and
            (assign (belief_state) 369)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_540_to_671
        :parameters ()
        :precondition (and
            (= (belief_state) 540)
        )
        :effect (and
            (assign (belief_state) 671)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_540_to_539
        :parameters ()
        :precondition (and
            (= (belief_state) 540)
        )
        :effect (and
            (assign (belief_state) 539)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_540_to_381
        :parameters ()
        :precondition (and
            (= (belief_state) 540)
        )
        :effect (and
            (assign (belief_state) 381)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_541_to_673
        :parameters ()
        :precondition (and
            (= (belief_state) 541)
        )
        :effect (and
            (assign (belief_state) 673)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_541_to_736
        :parameters ()
        :precondition (and
            (= (belief_state) 541)
        )
        :effect (and
            (assign (belief_state) 736)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_541_to_737
        :parameters ()
        :precondition (and
            (= (belief_state) 541)
        )
        :effect (and
            (assign (belief_state) 737)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_541_to_348
        :parameters ()
        :precondition (and
            (= (belief_state) 541)
        )
        :effect (and
            (assign (belief_state) 348)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_542_to_738
        :parameters ()
        :precondition (and
            (= (belief_state) 542)
        )
        :effect (and
            (assign (belief_state) 738)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_542_to_732
        :parameters ()
        :precondition (and
            (= (belief_state) 542)
        )
        :effect (and
            (assign (belief_state) 732)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_542_to_362
        :parameters ()
        :precondition (and
            (= (belief_state) 542)
        )
        :effect (and
            (assign (belief_state) 362)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_543_to_680
        :parameters ()
        :precondition (and
            (= (belief_state) 543)
        )
        :effect (and
            (assign (belief_state) 680)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_543_to_739
        :parameters ()
        :precondition (and
            (= (belief_state) 543)
        )
        :effect (and
            (assign (belief_state) 739)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_543_to_726
        :parameters ()
        :precondition (and
            (= (belief_state) 543)
        )
        :effect (and
            (assign (belief_state) 726)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_543_to_349
        :parameters ()
        :precondition (and
            (= (belief_state) 543)
        )
        :effect (and
            (assign (belief_state) 349)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_544_to_725
        :parameters ()
        :precondition (and
            (= (belief_state) 544)
        )
        :effect (and
            (assign (belief_state) 725)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_544_to_341
        :parameters ()
        :precondition (and
            (= (belief_state) 544)
        )
        :effect (and
            (assign (belief_state) 341)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_545_to_355
        :parameters ()
        :precondition (and
            (= (belief_state) 545)
        )
        :effect (and
            (assign (belief_state) 355)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_545_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 545)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_545_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 545)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_546_to_685
        :parameters ()
        :precondition (and
            (= (belief_state) 546)
        )
        :effect (and
            (assign (belief_state) 685)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_546_to_374
        :parameters ()
        :precondition (and
            (= (belief_state) 546)
        )
        :effect (and
            (assign (belief_state) 374)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_547_to_357
        :parameters ()
        :precondition (and
            (= (belief_state) 547)
        )
        :effect (and
            (assign (belief_state) 357)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_547_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 547)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_547_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 547)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_548_to_732
        :parameters ()
        :precondition (and
            (= (belief_state) 548)
        )
        :effect (and
            (assign (belief_state) 732)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_548_to_740
        :parameters ()
        :precondition (and
            (= (belief_state) 548)
        )
        :effect (and
            (assign (belief_state) 740)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_549_to_361
        :parameters ()
        :precondition (and
            (= (belief_state) 549)
        )
        :effect (and
            (assign (belief_state) 361)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_549_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 549)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_549_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 549)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_550_to_362
        :parameters ()
        :precondition (and
            (= (belief_state) 550)
        )
        :effect (and
            (assign (belief_state) 362)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_550_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 550)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_550_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 550)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_551_to_720
        :parameters ()
        :precondition (and
            (= (belief_state) 551)
        )
        :effect (and
            (assign (belief_state) 720)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_551_to_741
        :parameters ()
        :precondition (and
            (= (belief_state) 551)
        )
        :effect (and
            (assign (belief_state) 741)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_551_to_742
        :parameters ()
        :precondition (and
            (= (belief_state) 551)
        )
        :effect (and
            (assign (belief_state) 742)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_551_to_363
        :parameters ()
        :precondition (and
            (= (belief_state) 551)
        )
        :effect (and
            (assign (belief_state) 363)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_552_to_743
        :parameters ()
        :precondition (and
            (= (belief_state) 552)
        )
        :effect (and
            (assign (belief_state) 743)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_552_to_341
        :parameters ()
        :precondition (and
            (= (belief_state) 552)
        )
        :effect (and
            (assign (belief_state) 341)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_553_to_741
        :parameters ()
        :precondition (and
            (= (belief_state) 553)
        )
        :effect (and
            (assign (belief_state) 741)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_553_to_346
        :parameters ()
        :precondition (and
            (= (belief_state) 553)
        )
        :effect (and
            (assign (belief_state) 346)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_553_to_744
        :parameters ()
        :precondition (and
            (= (belief_state) 553)
        )
        :effect (and
            (assign (belief_state) 744)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_554_to_742
        :parameters ()
        :precondition (and
            (= (belief_state) 554)
        )
        :effect (and
            (assign (belief_state) 742)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_554_to_184
        :parameters ()
        :precondition (and
            (= (belief_state) 554)
        )
        :effect (and
            (assign (belief_state) 184)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_554_to_745
        :parameters ()
        :precondition (and
            (= (belief_state) 554)
        )
        :effect (and
            (assign (belief_state) 745)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_555_to_746
        :parameters ()
        :precondition (and
            (= (belief_state) 555)
        )
        :effect (and
            (assign (belief_state) 746)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_555_to_205
        :parameters ()
        :precondition (and
            (= (belief_state) 555)
        )
        :effect (and
            (assign (belief_state) 205)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_555_to_747
        :parameters ()
        :precondition (and
            (= (belief_state) 555)
        )
        :effect (and
            (assign (belief_state) 747)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_555_to_366
        :parameters ()
        :precondition (and
            (= (belief_state) 555)
        )
        :effect (and
            (assign (belief_state) 366)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_556_to_748
        :parameters ()
        :precondition (and
            (= (belief_state) 556)
        )
        :effect (and
            (assign (belief_state) 748)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_556_to_557
        :parameters ()
        :precondition (and
            (= (belief_state) 556)
        )
        :effect (and
            (assign (belief_state) 557)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_557_to_749
        :parameters ()
        :precondition (and
            (= (belief_state) 557)
        )
        :effect (and
            (assign (belief_state) 749)
            (assign (goal_reached) 'f')
        )
    )

    (:action save_princess_room5__from_557_to_750
        :parameters ()
        :precondition (and
            (= (belief_state) 557)
        )
        :effect (and
            (assign (belief_state) 750)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_558_to_751
        :parameters ()
        :precondition (and
            (= (belief_state) 558)
        )
        :effect (and
            (assign (belief_state) 751)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_558_to_644
        :parameters ()
        :precondition (and
            (= (belief_state) 558)
        )
        :effect (and
            (assign (belief_state) 644)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_558_to_479
        :parameters ()
        :precondition (and
            (= (belief_state) 558)
        )
        :effect (and
            (assign (belief_state) 479)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_559_to_736
        :parameters ()
        :precondition (and
            (= (belief_state) 559)
        )
        :effect (and
            (assign (belief_state) 736)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_559_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 559)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_559_to_752
        :parameters ()
        :precondition (and
            (= (belief_state) 559)
        )
        :effect (and
            (assign (belief_state) 752)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_559_to_372
        :parameters ()
        :precondition (and
            (= (belief_state) 559)
        )
        :effect (and
            (assign (belief_state) 372)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_560_to_739
        :parameters ()
        :precondition (and
            (= (belief_state) 560)
        )
        :effect (and
            (assign (belief_state) 739)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_560_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 560)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_560_to_377
        :parameters ()
        :precondition (and
            (= (belief_state) 560)
        )
        :effect (and
            (assign (belief_state) 377)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_561_to_747
        :parameters ()
        :precondition (and
            (= (belief_state) 561)
        )
        :effect (and
            (assign (belief_state) 747)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_561_to_367
        :parameters ()
        :precondition (and
            (= (belief_state) 561)
        )
        :effect (and
            (assign (belief_state) 367)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_561_to_753
        :parameters ()
        :precondition (and
            (= (belief_state) 561)
        )
        :effect (and
            (assign (belief_state) 753)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_562_to_372
        :parameters ()
        :precondition (and
            (= (belief_state) 562)
        )
        :effect (and
            (assign (belief_state) 372)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_562_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 562)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_562_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 562)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_563_to_373
        :parameters ()
        :precondition (and
            (= (belief_state) 563)
        )
        :effect (and
            (assign (belief_state) 373)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_563_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 563)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_563_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 563)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_564_to_374
        :parameters ()
        :precondition (and
            (= (belief_state) 564)
        )
        :effect (and
            (assign (belief_state) 374)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_564_to_481
        :parameters ()
        :precondition (and
            (= (belief_state) 564)
        )
        :effect (and
            (assign (belief_state) 481)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_564_to_481
        :parameters ()
        :precondition (and
            (= (belief_state) 564)
        )
        :effect (and
            (assign (belief_state) 481)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_564_to_754
        :parameters ()
        :precondition (and
            (= (belief_state) 564)
        )
        :effect (and
            (assign (belief_state) 754)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_565_to_375
        :parameters ()
        :precondition (and
            (= (belief_state) 565)
        )
        :effect (and
            (assign (belief_state) 375)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_565_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 565)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_565_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 565)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_566_to_752
        :parameters ()
        :precondition (and
            (= (belief_state) 566)
        )
        :effect (and
            (assign (belief_state) 752)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_566_to_479
        :parameters ()
        :precondition (and
            (= (belief_state) 566)
        )
        :effect (and
            (assign (belief_state) 479)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_566_to_755
        :parameters ()
        :precondition (and
            (= (belief_state) 566)
        )
        :effect (and
            (assign (belief_state) 755)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_567_to_756
        :parameters ()
        :precondition (and
            (= (belief_state) 567)
        )
        :effect (and
            (assign (belief_state) 756)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_567_to_367
        :parameters ()
        :precondition (and
            (= (belief_state) 567)
        )
        :effect (and
            (assign (belief_state) 367)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_567_to_757
        :parameters ()
        :precondition (and
            (= (belief_state) 567)
        )
        :effect (and
            (assign (belief_state) 757)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_568_to_758
        :parameters ()
        :precondition (and
            (= (belief_state) 568)
        )
        :effect (and
            (assign (belief_state) 758)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_568_to_759
        :parameters ()
        :precondition (and
            (= (belief_state) 568)
        )
        :effect (and
            (assign (belief_state) 759)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_568_to_760
        :parameters ()
        :precondition (and
            (= (belief_state) 568)
        )
        :effect (and
            (assign (belief_state) 760)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_568_to_378
        :parameters ()
        :precondition (and
            (= (belief_state) 568)
        )
        :effect (and
            (assign (belief_state) 378)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_569_to_761
        :parameters ()
        :precondition (and
            (= (belief_state) 569)
        )
        :effect (and
            (assign (belief_state) 761)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_569_to_341
        :parameters ()
        :precondition (and
            (= (belief_state) 569)
        )
        :effect (and
            (assign (belief_state) 341)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_570_to_730
        :parameters ()
        :precondition (and
            (= (belief_state) 570)
        )
        :effect (and
            (assign (belief_state) 730)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_570_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 570)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_570_to_762
        :parameters ()
        :precondition (and
            (= (belief_state) 570)
        )
        :effect (and
            (assign (belief_state) 762)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_570_to_384
        :parameters ()
        :precondition (and
            (= (belief_state) 570)
        )
        :effect (and
            (assign (belief_state) 384)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_571_to_734
        :parameters ()
        :precondition (and
            (= (belief_state) 571)
        )
        :effect (and
            (assign (belief_state) 734)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_571_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 571)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_571_to_388
        :parameters ()
        :precondition (and
            (= (belief_state) 571)
        )
        :effect (and
            (assign (belief_state) 388)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_572_to_759
        :parameters ()
        :precondition (and
            (= (belief_state) 572)
        )
        :effect (and
            (assign (belief_state) 759)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_572_to_346
        :parameters ()
        :precondition (and
            (= (belief_state) 572)
        )
        :effect (and
            (assign (belief_state) 346)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_572_to_763
        :parameters ()
        :precondition (and
            (= (belief_state) 572)
        )
        :effect (and
            (assign (belief_state) 763)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_573_to_737
        :parameters ()
        :precondition (and
            (= (belief_state) 573)
        )
        :effect (and
            (assign (belief_state) 737)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_573_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 573)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_573_to_764
        :parameters ()
        :precondition (and
            (= (belief_state) 573)
        )
        :effect (and
            (assign (belief_state) 764)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_573_to_385
        :parameters ()
        :precondition (and
            (= (belief_state) 573)
        )
        :effect (and
            (assign (belief_state) 385)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_574_to_760
        :parameters ()
        :precondition (and
            (= (belief_state) 574)
        )
        :effect (and
            (assign (belief_state) 760)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_574_to_184
        :parameters ()
        :precondition (and
            (= (belief_state) 574)
        )
        :effect (and
            (assign (belief_state) 184)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_574_to_765
        :parameters ()
        :precondition (and
            (= (belief_state) 574)
        )
        :effect (and
            (assign (belief_state) 765)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_575_to_384
        :parameters ()
        :precondition (and
            (= (belief_state) 575)
        )
        :effect (and
            (assign (belief_state) 384)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_575_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 575)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_575_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 575)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_576_to_385
        :parameters ()
        :precondition (and
            (= (belief_state) 576)
        )
        :effect (and
            (assign (belief_state) 385)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_576_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 576)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_576_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 576)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_577_to_386
        :parameters ()
        :precondition (and
            (= (belief_state) 577)
        )
        :effect (and
            (assign (belief_state) 386)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_577_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 577)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_577_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 577)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_578_to_762
        :parameters ()
        :precondition (and
            (= (belief_state) 578)
        )
        :effect (and
            (assign (belief_state) 762)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_578_to_766
        :parameters ()
        :precondition (and
            (= (belief_state) 578)
        )
        :effect (and
            (assign (belief_state) 766)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_579_to_764
        :parameters ()
        :precondition (and
            (= (belief_state) 579)
        )
        :effect (and
            (assign (belief_state) 764)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_579_to_578
        :parameters ()
        :precondition (and
            (= (belief_state) 579)
        )
        :effect (and
            (assign (belief_state) 578)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_579_to_767
        :parameters ()
        :precondition (and
            (= (belief_state) 579)
        )
        :effect (and
            (assign (belief_state) 767)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_580_to_768
        :parameters ()
        :precondition (and
            (= (belief_state) 580)
        )
        :effect (and
            (assign (belief_state) 768)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_580_to_184
        :parameters ()
        :precondition (and
            (= (belief_state) 580)
        )
        :effect (and
            (assign (belief_state) 184)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_580_to_769
        :parameters ()
        :precondition (and
            (= (belief_state) 580)
        )
        :effect (and
            (assign (belief_state) 769)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_581_to_770
        :parameters ()
        :precondition (and
            (= (belief_state) 581)
        )
        :effect (and
            (assign (belief_state) 770)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_581_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 581)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_581_to_771
        :parameters ()
        :precondition (and
            (= (belief_state) 581)
        )
        :effect (and
            (assign (belief_state) 771)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_581_to_389
        :parameters ()
        :precondition (and
            (= (belief_state) 581)
        )
        :effect (and
            (assign (belief_state) 389)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_582_to_772
        :parameters ()
        :precondition (and
            (= (belief_state) 582)
        )
        :effect (and
            (assign (belief_state) 772)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_582_to_394
        :parameters ()
        :precondition (and
            (= (belief_state) 582)
        )
        :effect (and
            (assign (belief_state) 394)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_583_to_773
        :parameters ()
        :precondition (and
            (= (belief_state) 583)
        )
        :effect (and
            (assign (belief_state) 773)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_583_to_582
        :parameters ()
        :precondition (and
            (= (belief_state) 583)
        )
        :effect (and
            (assign (belief_state) 582)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_583_to_398
        :parameters ()
        :precondition (and
            (= (belief_state) 583)
        )
        :effect (and
            (assign (belief_state) 398)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_584_to_774
        :parameters ()
        :precondition (and
            (= (belief_state) 584)
        )
        :effect (and
            (assign (belief_state) 774)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_584_to_775
        :parameters ()
        :precondition (and
            (= (belief_state) 584)
        )
        :effect (and
            (assign (belief_state) 775)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_584_to_776
        :parameters ()
        :precondition (and
            (= (belief_state) 584)
        )
        :effect (and
            (assign (belief_state) 776)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_584_to_390
        :parameters ()
        :precondition (and
            (= (belief_state) 584)
        )
        :effect (and
            (assign (belief_state) 390)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_585_to_652
        :parameters ()
        :precondition (and
            (= (belief_state) 585)
        )
        :effect (and
            (assign (belief_state) 652)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_585_to_410
        :parameters ()
        :precondition (and
            (= (belief_state) 585)
        )
        :effect (and
            (assign (belief_state) 410)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_586_to_654
        :parameters ()
        :precondition (and
            (= (belief_state) 586)
        )
        :effect (and
            (assign (belief_state) 654)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_586_to_585
        :parameters ()
        :precondition (and
            (= (belief_state) 586)
        )
        :effect (and
            (assign (belief_state) 585)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_586_to_421
        :parameters ()
        :precondition (and
            (= (belief_state) 586)
        )
        :effect (and
            (assign (belief_state) 421)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_587_to_656
        :parameters ()
        :precondition (and
            (= (belief_state) 587)
        )
        :effect (and
            (assign (belief_state) 656)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_587_to_777
        :parameters ()
        :precondition (and
            (= (belief_state) 587)
        )
        :effect (and
            (assign (belief_state) 777)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_587_to_778
        :parameters ()
        :precondition (and
            (= (belief_state) 587)
        )
        :effect (and
            (assign (belief_state) 778)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_587_to_392
        :parameters ()
        :precondition (and
            (= (belief_state) 587)
        )
        :effect (and
            (assign (belief_state) 392)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_588_to_779
        :parameters ()
        :precondition (and
            (= (belief_state) 588)
        )
        :effect (and
            (assign (belief_state) 779)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_588_to_732
        :parameters ()
        :precondition (and
            (= (belief_state) 588)
        )
        :effect (and
            (assign (belief_state) 732)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_588_to_404
        :parameters ()
        :precondition (and
            (= (belief_state) 588)
        )
        :effect (and
            (assign (belief_state) 404)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_589_to_666
        :parameters ()
        :precondition (and
            (= (belief_state) 589)
        )
        :effect (and
            (assign (belief_state) 666)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_589_to_780
        :parameters ()
        :precondition (and
            (= (belief_state) 589)
        )
        :effect (and
            (assign (belief_state) 780)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_589_to_645
        :parameters ()
        :precondition (and
            (= (belief_state) 589)
        )
        :effect (and
            (assign (belief_state) 645)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_589_to_393
        :parameters ()
        :precondition (and
            (= (belief_state) 589)
        )
        :effect (and
            (assign (belief_state) 393)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_590_to_775
        :parameters ()
        :precondition (and
            (= (belief_state) 590)
        )
        :effect (and
            (assign (belief_state) 775)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_590_to_262
        :parameters ()
        :precondition (and
            (= (belief_state) 590)
        )
        :effect (and
            (assign (belief_state) 262)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_591_to_670
        :parameters ()
        :precondition (and
            (= (belief_state) 591)
        )
        :effect (and
            (assign (belief_state) 670)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_591_to_412
        :parameters ()
        :precondition (and
            (= (belief_state) 591)
        )
        :effect (and
            (assign (belief_state) 412)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_592_to_672
        :parameters ()
        :precondition (and
            (= (belief_state) 592)
        )
        :effect (and
            (assign (belief_state) 672)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_592_to_591
        :parameters ()
        :precondition (and
            (= (belief_state) 592)
        )
        :effect (and
            (assign (belief_state) 591)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_592_to_423
        :parameters ()
        :precondition (and
            (= (belief_state) 592)
        )
        :effect (and
            (assign (belief_state) 423)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_593_to_674
        :parameters ()
        :precondition (and
            (= (belief_state) 593)
        )
        :effect (and
            (assign (belief_state) 674)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_593_to_781
        :parameters ()
        :precondition (and
            (= (belief_state) 593)
        )
        :effect (and
            (assign (belief_state) 781)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_593_to_782
        :parameters ()
        :precondition (and
            (= (belief_state) 593)
        )
        :effect (and
            (assign (belief_state) 782)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_593_to_396
        :parameters ()
        :precondition (and
            (= (belief_state) 593)
        )
        :effect (and
            (assign (belief_state) 396)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_594_to_783
        :parameters ()
        :precondition (and
            (= (belief_state) 594)
        )
        :effect (and
            (assign (belief_state) 783)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_594_to_732
        :parameters ()
        :precondition (and
            (= (belief_state) 594)
        )
        :effect (and
            (assign (belief_state) 732)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_594_to_405
        :parameters ()
        :precondition (and
            (= (belief_state) 594)
        )
        :effect (and
            (assign (belief_state) 405)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_595_to_681
        :parameters ()
        :precondition (and
            (= (belief_state) 595)
        )
        :effect (and
            (assign (belief_state) 681)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_595_to_642
        :parameters ()
        :precondition (and
            (= (belief_state) 595)
        )
        :effect (and
            (assign (belief_state) 642)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_595_to_437
        :parameters ()
        :precondition (and
            (= (belief_state) 595)
        )
        :effect (and
            (assign (belief_state) 437)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_595_to_397
        :parameters ()
        :precondition (and
            (= (belief_state) 595)
        )
        :effect (and
            (assign (belief_state) 397)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_596_to_776
        :parameters ()
        :precondition (and
            (= (belief_state) 596)
        )
        :effect (and
            (assign (belief_state) 776)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_596_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 596)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_597_to_404
        :parameters ()
        :precondition (and
            (= (belief_state) 597)
        )
        :effect (and
            (assign (belief_state) 404)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_597_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 597)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_597_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 597)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_598_to_405
        :parameters ()
        :precondition (and
            (= (belief_state) 598)
        )
        :effect (and
            (assign (belief_state) 405)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_598_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 598)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_598_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 598)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_599_to_771
        :parameters ()
        :precondition (and
            (= (belief_state) 599)
        )
        :effect (and
            (assign (belief_state) 771)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_599_to_784
        :parameters ()
        :precondition (and
            (= (belief_state) 599)
        )
        :effect (and
            (assign (belief_state) 784)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_599_to_785
        :parameters ()
        :precondition (and
            (= (belief_state) 599)
        )
        :effect (and
            (assign (belief_state) 785)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_599_to_406
        :parameters ()
        :precondition (and
            (= (belief_state) 599)
        )
        :effect (and
            (assign (belief_state) 406)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_600_to_786
        :parameters ()
        :precondition (and
            (= (belief_state) 600)
        )
        :effect (and
            (assign (belief_state) 786)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_600_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 600)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_601_to_784
        :parameters ()
        :precondition (and
            (= (belief_state) 601)
        )
        :effect (and
            (assign (belief_state) 784)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_601_to_124
        :parameters ()
        :precondition (and
            (= (belief_state) 601)
        )
        :effect (and
            (assign (belief_state) 124)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_601_to_787
        :parameters ()
        :precondition (and
            (= (belief_state) 601)
        )
        :effect (and
            (assign (belief_state) 787)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_602_to_785
        :parameters ()
        :precondition (and
            (= (belief_state) 602)
        )
        :effect (and
            (assign (belief_state) 785)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_602_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 602)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_602_to_788
        :parameters ()
        :precondition (and
            (= (belief_state) 602)
        )
        :effect (and
            (assign (belief_state) 788)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_603_to_789
        :parameters ()
        :precondition (and
            (= (belief_state) 603)
        )
        :effect (and
            (assign (belief_state) 789)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_603_to_790
        :parameters ()
        :precondition (and
            (= (belief_state) 603)
        )
        :effect (and
            (assign (belief_state) 790)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_603_to_791
        :parameters ()
        :precondition (and
            (= (belief_state) 603)
        )
        :effect (and
            (assign (belief_state) 791)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_603_to_409
        :parameters ()
        :precondition (and
            (= (belief_state) 603)
        )
        :effect (and
            (assign (belief_state) 409)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_604_to_792
        :parameters ()
        :precondition (and
            (= (belief_state) 604)
        )
        :effect (and
            (assign (belief_state) 792)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_604_to_303
        :parameters ()
        :precondition (and
            (= (belief_state) 604)
        )
        :effect (and
            (assign (belief_state) 303)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_605_to_777
        :parameters ()
        :precondition (and
            (= (belief_state) 605)
        )
        :effect (and
            (assign (belief_state) 777)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_605_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 605)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_605_to_793
        :parameters ()
        :precondition (and
            (= (belief_state) 605)
        )
        :effect (and
            (assign (belief_state) 793)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_605_to_415
        :parameters ()
        :precondition (and
            (= (belief_state) 605)
        )
        :effect (and
            (assign (belief_state) 415)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_606_to_780
        :parameters ()
        :precondition (and
            (= (belief_state) 606)
        )
        :effect (and
            (assign (belief_state) 780)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_606_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 606)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_606_to_419
        :parameters ()
        :precondition (and
            (= (belief_state) 606)
        )
        :effect (and
            (assign (belief_state) 419)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_607_to_790
        :parameters ()
        :precondition (and
            (= (belief_state) 607)
        )
        :effect (and
            (assign (belief_state) 790)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_607_to_307
        :parameters ()
        :precondition (and
            (= (belief_state) 607)
        )
        :effect (and
            (assign (belief_state) 307)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_607_to_794
        :parameters ()
        :precondition (and
            (= (belief_state) 607)
        )
        :effect (and
            (assign (belief_state) 794)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_608_to_781
        :parameters ()
        :precondition (and
            (= (belief_state) 608)
        )
        :effect (and
            (assign (belief_state) 781)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_608_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 608)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_608_to_795
        :parameters ()
        :precondition (and
            (= (belief_state) 608)
        )
        :effect (and
            (assign (belief_state) 795)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_608_to_416
        :parameters ()
        :precondition (and
            (= (belief_state) 608)
        )
        :effect (and
            (assign (belief_state) 416)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_609_to_791
        :parameters ()
        :precondition (and
            (= (belief_state) 609)
        )
        :effect (and
            (assign (belief_state) 791)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_609_to_157
        :parameters ()
        :precondition (and
            (= (belief_state) 609)
        )
        :effect (and
            (assign (belief_state) 157)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_609_to_796
        :parameters ()
        :precondition (and
            (= (belief_state) 609)
        )
        :effect (and
            (assign (belief_state) 796)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_610_to_415
        :parameters ()
        :precondition (and
            (= (belief_state) 610)
        )
        :effect (and
            (assign (belief_state) 415)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_610_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 610)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_610_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 610)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_611_to_416
        :parameters ()
        :precondition (and
            (= (belief_state) 611)
        )
        :effect (and
            (assign (belief_state) 416)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_611_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 611)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_611_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 611)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_612_to_417
        :parameters ()
        :precondition (and
            (= (belief_state) 612)
        )
        :effect (and
            (assign (belief_state) 417)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_612_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 612)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_612_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 612)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_613_to_793
        :parameters ()
        :precondition (and
            (= (belief_state) 613)
        )
        :effect (and
            (assign (belief_state) 793)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_613_to_797
        :parameters ()
        :precondition (and
            (= (belief_state) 613)
        )
        :effect (and
            (assign (belief_state) 797)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_614_to_795
        :parameters ()
        :precondition (and
            (= (belief_state) 614)
        )
        :effect (and
            (assign (belief_state) 795)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_614_to_613
        :parameters ()
        :precondition (and
            (= (belief_state) 614)
        )
        :effect (and
            (assign (belief_state) 613)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_614_to_798
        :parameters ()
        :precondition (and
            (= (belief_state) 614)
        )
        :effect (and
            (assign (belief_state) 798)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_615_to_799
        :parameters ()
        :precondition (and
            (= (belief_state) 615)
        )
        :effect (and
            (assign (belief_state) 799)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_615_to_157
        :parameters ()
        :precondition (and
            (= (belief_state) 615)
        )
        :effect (and
            (assign (belief_state) 157)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_615_to_800
        :parameters ()
        :precondition (and
            (= (belief_state) 615)
        )
        :effect (and
            (assign (belief_state) 800)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_616_to_801
        :parameters ()
        :precondition (and
            (= (belief_state) 616)
        )
        :effect (and
            (assign (belief_state) 801)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_616_to_802
        :parameters ()
        :precondition (and
            (= (belief_state) 616)
        )
        :effect (and
            (assign (belief_state) 802)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_616_to_803
        :parameters ()
        :precondition (and
            (= (belief_state) 616)
        )
        :effect (and
            (assign (belief_state) 803)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_616_to_420
        :parameters ()
        :precondition (and
            (= (belief_state) 616)
        )
        :effect (and
            (assign (belief_state) 420)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_617_to_804
        :parameters ()
        :precondition (and
            (= (belief_state) 617)
        )
        :effect (and
            (assign (belief_state) 804)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_617_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 617)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_618_to_778
        :parameters ()
        :precondition (and
            (= (belief_state) 618)
        )
        :effect (and
            (assign (belief_state) 778)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_618_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 618)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_618_to_805
        :parameters ()
        :precondition (and
            (= (belief_state) 618)
        )
        :effect (and
            (assign (belief_state) 805)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_618_to_426
        :parameters ()
        :precondition (and
            (= (belief_state) 618)
        )
        :effect (and
            (assign (belief_state) 426)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_619_to_802
        :parameters ()
        :precondition (and
            (= (belief_state) 619)
        )
        :effect (and
            (assign (belief_state) 802)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_619_to_124
        :parameters ()
        :precondition (and
            (= (belief_state) 619)
        )
        :effect (and
            (assign (belief_state) 124)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_619_to_806
        :parameters ()
        :precondition (and
            (= (belief_state) 619)
        )
        :effect (and
            (assign (belief_state) 806)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_620_to_782
        :parameters ()
        :precondition (and
            (= (belief_state) 620)
        )
        :effect (and
            (assign (belief_state) 782)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_620_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 620)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_620_to_807
        :parameters ()
        :precondition (and
            (= (belief_state) 620)
        )
        :effect (and
            (assign (belief_state) 807)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_620_to_427
        :parameters ()
        :precondition (and
            (= (belief_state) 620)
        )
        :effect (and
            (assign (belief_state) 427)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_621_to_803
        :parameters ()
        :precondition (and
            (= (belief_state) 621)
        )
        :effect (and
            (assign (belief_state) 803)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_621_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 621)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_621_to_808
        :parameters ()
        :precondition (and
            (= (belief_state) 621)
        )
        :effect (and
            (assign (belief_state) 808)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_622_to_426
        :parameters ()
        :precondition (and
            (= (belief_state) 622)
        )
        :effect (and
            (assign (belief_state) 426)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_622_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 622)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_622_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 622)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_623_to_427
        :parameters ()
        :precondition (and
            (= (belief_state) 623)
        )
        :effect (and
            (assign (belief_state) 427)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_623_to_133
        :parameters ()
        :precondition (and
            (= (belief_state) 623)
        )
        :effect (and
            (assign (belief_state) 133)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_623_to_134
        :parameters ()
        :precondition (and
            (= (belief_state) 623)
        )
        :effect (and
            (assign (belief_state) 134)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_624_to_428
        :parameters ()
        :precondition (and
            (= (belief_state) 624)
        )
        :effect (and
            (assign (belief_state) 428)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_624_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 624)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_624_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 624)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_625_to_805
        :parameters ()
        :precondition (and
            (= (belief_state) 625)
        )
        :effect (and
            (assign (belief_state) 805)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_625_to_809
        :parameters ()
        :precondition (and
            (= (belief_state) 625)
        )
        :effect (and
            (assign (belief_state) 809)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_626_to_807
        :parameters ()
        :precondition (and
            (= (belief_state) 626)
        )
        :effect (and
            (assign (belief_state) 807)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_626_to_625
        :parameters ()
        :precondition (and
            (= (belief_state) 626)
        )
        :effect (and
            (assign (belief_state) 625)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_626_to_810
        :parameters ()
        :precondition (and
            (= (belief_state) 626)
        )
        :effect (and
            (assign (belief_state) 810)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_627_to_811
        :parameters ()
        :precondition (and
            (= (belief_state) 627)
        )
        :effect (and
            (assign (belief_state) 811)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_627_to_52
        :parameters ()
        :precondition (and
            (= (belief_state) 627)
        )
        :effect (and
            (assign (belief_state) 52)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room5__from_627_to_812
        :parameters ()
        :precondition (and
            (= (belief_state) 627)
        )
        :effect (and
            (assign (belief_state) 812)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_628_to_813
        :parameters ()
        :precondition (and
            (= (belief_state) 628)
        )
        :effect (and
            (assign (belief_state) 813)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_628_to_814
        :parameters ()
        :precondition (and
            (= (belief_state) 628)
        )
        :effect (and
            (assign (belief_state) 814)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_628_to_430
        :parameters ()
        :precondition (and
            (= (belief_state) 628)
        )
        :effect (and
            (assign (belief_state) 430)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_629_to_815
        :parameters ()
        :precondition (and
            (= (belief_state) 629)
        )
        :effect (and
            (assign (belief_state) 815)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_629_to_488
        :parameters ()
        :precondition (and
            (= (belief_state) 629)
        )
        :effect (and
            (assign (belief_state) 488)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_630_to_816
        :parameters ()
        :precondition (and
            (= (belief_state) 630)
        )
        :effect (and
            (assign (belief_state) 816)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_630_to_629
        :parameters ()
        :precondition (and
            (= (belief_state) 630)
        )
        :effect (and
            (assign (belief_state) 629)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_630_to_510
        :parameters ()
        :precondition (and
            (= (belief_state) 630)
        )
        :effect (and
            (assign (belief_state) 510)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_631_to_817
        :parameters ()
        :precondition (and
            (= (belief_state) 631)
        )
        :effect (and
            (assign (belief_state) 817)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_631_to_818
        :parameters ()
        :precondition (and
            (= (belief_state) 631)
        )
        :effect (and
            (assign (belief_state) 818)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_631_to_819
        :parameters ()
        :precondition (and
            (= (belief_state) 631)
        )
        :effect (and
            (assign (belief_state) 819)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_631_to_431
        :parameters ()
        :precondition (and
            (= (belief_state) 631)
        )
        :effect (and
            (assign (belief_state) 431)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_632_to_820
        :parameters ()
        :precondition (and
            (= (belief_state) 632)
        )
        :effect (and
            (assign (belief_state) 820)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_632_to_821
        :parameters ()
        :precondition (and
            (= (belief_state) 632)
        )
        :effect (and
            (assign (belief_state) 821)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_632_to_822
        :parameters ()
        :precondition (and
            (= (belief_state) 632)
        )
        :effect (and
            (assign (belief_state) 822)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_632_to_432
        :parameters ()
        :precondition (and
            (= (belief_state) 632)
        )
        :effect (and
            (assign (belief_state) 432)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_633_to_823
        :parameters ()
        :precondition (and
            (= (belief_state) 633)
        )
        :effect (and
            (assign (belief_state) 823)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_633_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 633)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_633_to_483
        :parameters ()
        :precondition (and
            (= (belief_state) 633)
        )
        :effect (and
            (assign (belief_state) 483)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_634_to_824
        :parameters ()
        :precondition (and
            (= (belief_state) 634)
        )
        :effect (and
            (assign (belief_state) 824)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_634_to_825
        :parameters ()
        :precondition (and
            (= (belief_state) 634)
        )
        :effect (and
            (assign (belief_state) 825)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_634_to_826
        :parameters ()
        :precondition (and
            (= (belief_state) 634)
        )
        :effect (and
            (assign (belief_state) 826)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_634_to_433
        :parameters ()
        :precondition (and
            (= (belief_state) 634)
        )
        :effect (and
            (assign (belief_state) 433)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_635_to_827
        :parameters ()
        :precondition (and
            (= (belief_state) 635)
        )
        :effect (and
            (assign (belief_state) 827)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_635_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 635)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_635_to_484
        :parameters ()
        :precondition (and
            (= (belief_state) 635)
        )
        :effect (and
            (assign (belief_state) 484)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_636_to_828
        :parameters ()
        :precondition (and
            (= (belief_state) 636)
        )
        :effect (and
            (assign (belief_state) 828)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_636_to_829
        :parameters ()
        :precondition (and
            (= (belief_state) 636)
        )
        :effect (and
            (assign (belief_state) 829)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_636_to_830
        :parameters ()
        :precondition (and
            (= (belief_state) 636)
        )
        :effect (and
            (assign (belief_state) 830)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_636_to_434
        :parameters ()
        :precondition (and
            (= (belief_state) 636)
        )
        :effect (and
            (assign (belief_state) 434)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_637_to_831
        :parameters ()
        :precondition (and
            (= (belief_state) 637)
        )
        :effect (and
            (assign (belief_state) 831)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_637_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 637)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_637_to_832
        :parameters ()
        :precondition (and
            (= (belief_state) 637)
        )
        :effect (and
            (assign (belief_state) 832)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_637_to_468
        :parameters ()
        :precondition (and
            (= (belief_state) 637)
        )
        :effect (and
            (assign (belief_state) 468)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_638_to_833
        :parameters ()
        :precondition (and
            (= (belief_state) 638)
        )
        :effect (and
            (assign (belief_state) 833)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_638_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 638)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_638_to_485
        :parameters ()
        :precondition (and
            (= (belief_state) 638)
        )
        :effect (and
            (assign (belief_state) 485)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_639_to_834
        :parameters ()
        :precondition (and
            (= (belief_state) 639)
        )
        :effect (and
            (assign (belief_state) 834)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_639_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 639)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_639_to_835
        :parameters ()
        :precondition (and
            (= (belief_state) 639)
        )
        :effect (and
            (assign (belief_state) 835)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_639_to_435
        :parameters ()
        :precondition (and
            (= (belief_state) 639)
        )
        :effect (and
            (assign (belief_state) 435)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_640_to_836
        :parameters ()
        :precondition (and
            (= (belief_state) 640)
        )
        :effect (and
            (assign (belief_state) 836)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_640_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 640)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_640_to_837
        :parameters ()
        :precondition (and
            (= (belief_state) 640)
        )
        :effect (and
            (assign (belief_state) 837)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_640_to_436
        :parameters ()
        :precondition (and
            (= (belief_state) 640)
        )
        :effect (and
            (assign (belief_state) 436)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_641_to_838
        :parameters ()
        :precondition (and
            (= (belief_state) 641)
        )
        :effect (and
            (assign (belief_state) 838)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_641_to_437
        :parameters ()
        :precondition (and
            (= (belief_state) 641)
        )
        :effect (and
            (assign (belief_state) 437)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_642_to_839
        :parameters ()
        :precondition (and
            (= (belief_state) 642)
        )
        :effect (and
            (assign (belief_state) 839)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_642_to_492
        :parameters ()
        :precondition (and
            (= (belief_state) 642)
        )
        :effect (and
            (assign (belief_state) 492)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_643_to_840
        :parameters ()
        :precondition (and
            (= (belief_state) 643)
        )
        :effect (and
            (assign (belief_state) 840)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_643_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 643)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_644_to_841
        :parameters ()
        :precondition (and
            (= (belief_state) 644)
        )
        :effect (and
            (assign (belief_state) 841)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_644_to_481
        :parameters ()
        :precondition (and
            (= (belief_state) 644)
        )
        :effect (and
            (assign (belief_state) 481)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_645_to_842
        :parameters ()
        :precondition (and
            (= (belief_state) 645)
        )
        :effect (and
            (assign (belief_state) 842)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_645_to_780
        :parameters ()
        :precondition (and
            (= (belief_state) 645)
        )
        :effect (and
            (assign (belief_state) 780)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_645_to_439
        :parameters ()
        :precondition (and
            (= (belief_state) 645)
        )
        :effect (and
            (assign (belief_state) 439)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_646_to_843
        :parameters ()
        :precondition (and
            (= (belief_state) 646)
        )
        :effect (and
            (assign (belief_state) 843)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_646_to_844
        :parameters ()
        :precondition (and
            (= (belief_state) 646)
        )
        :effect (and
            (assign (belief_state) 844)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_646_to_440
        :parameters ()
        :precondition (and
            (= (belief_state) 646)
        )
        :effect (and
            (assign (belief_state) 440)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_647_to_845
        :parameters ()
        :precondition (and
            (= (belief_state) 647)
        )
        :effect (and
            (assign (belief_state) 845)
            (assign (goal_reached) 'f')
        )
    )

    (:action open_room3__from_647_to_846
        :parameters ()
        :precondition (and
            (= (belief_state) 647)
        )
        :effect (and
            (assign (belief_state) 846)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_647_to_469
        :parameters ()
        :precondition (and
            (= (belief_state) 647)
        )
        :effect (and
            (assign (belief_state) 469)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_648_to_847
        :parameters ()
        :precondition (and
            (= (belief_state) 648)
        )
        :effect (and
            (assign (belief_state) 847)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_648_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 648)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_648_to_441
        :parameters ()
        :precondition (and
            (= (belief_state) 648)
        )
        :effect (and
            (assign (belief_state) 441)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_649_to_848
        :parameters ()
        :precondition (and
            (= (belief_state) 649)
        )
        :effect (and
            (assign (belief_state) 848)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_649_to_849
        :parameters ()
        :precondition (and
            (= (belief_state) 649)
        )
        :effect (and
            (assign (belief_state) 849)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room3_room4__from_649_to_442
        :parameters ()
        :precondition (and
            (= (belief_state) 649)
        )
        :effect (and
            (assign (belief_state) 442)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_650_to_850
        :parameters ()
        :precondition (and
            (= (belief_state) 650)
        )
        :effect (and
            (assign (belief_state) 850)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_650_to_456
        :parameters ()
        :precondition (and
            (= (belief_state) 650)
        )
        :effect (and
            (assign (belief_state) 456)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_651_to_531
        :parameters ()
        :precondition (and
            (= (belief_state) 651)
        )
        :effect (and
            (assign (belief_state) 531)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_652_to_651
        :parameters ()
        :precondition (and
            (= (belief_state) 652)
        )
        :effect (and
            (assign (belief_state) 651)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_652_to_585
        :parameters ()
        :precondition (and
            (= (belief_state) 652)
        )
        :effect (and
            (assign (belief_state) 585)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_653_to_532
        :parameters ()
        :precondition (and
            (= (belief_state) 653)
        )
        :effect (and
            (assign (belief_state) 532)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_654_to_653
        :parameters ()
        :precondition (and
            (= (belief_state) 654)
        )
        :effect (and
            (assign (belief_state) 653)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_654_to_586
        :parameters ()
        :precondition (and
            (= (belief_state) 654)
        )
        :effect (and
            (assign (belief_state) 586)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_655_to_533
        :parameters ()
        :precondition (and
            (= (belief_state) 655)
        )
        :effect (and
            (assign (belief_state) 533)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_656_to_655
        :parameters ()
        :precondition (and
            (= (belief_state) 656)
        )
        :effect (and
            (assign (belief_state) 655)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_656_to_587
        :parameters ()
        :precondition (and
            (= (belief_state) 656)
        )
        :effect (and
            (assign (belief_state) 587)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_657_to_651
        :parameters ()
        :precondition (and
            (= (belief_state) 657)
        )
        :effect (and
            (assign (belief_state) 651)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_657_to_851
        :parameters ()
        :precondition (and
            (= (belief_state) 657)
        )
        :effect (and
            (assign (belief_state) 851)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_657_to_448
        :parameters ()
        :precondition (and
            (= (belief_state) 657)
        )
        :effect (and
            (assign (belief_state) 448)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_658_to_852
        :parameters ()
        :precondition (and
            (= (belief_state) 658)
        )
        :effect (and
            (assign (belief_state) 852)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_658_to_853
        :parameters ()
        :precondition (and
            (= (belief_state) 658)
        )
        :effect (and
            (assign (belief_state) 853)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_658_to_449
        :parameters ()
        :precondition (and
            (= (belief_state) 658)
        )
        :effect (and
            (assign (belief_state) 449)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_659_to_854
        :parameters ()
        :precondition (and
            (= (belief_state) 659)
        )
        :effect (and
            (assign (belief_state) 854)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_659_to_854
        :parameters ()
        :precondition (and
            (= (belief_state) 659)
        )
        :effect (and
            (assign (belief_state) 854)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_659_to_450
        :parameters ()
        :precondition (and
            (= (belief_state) 659)
        )
        :effect (and
            (assign (belief_state) 450)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_660_to_855
        :parameters ()
        :precondition (and
            (= (belief_state) 660)
        )
        :effect (and
            (assign (belief_state) 855)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_660_to_495
        :parameters ()
        :precondition (and
            (= (belief_state) 660)
        )
        :effect (and
            (assign (belief_state) 495)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_661_to_856
        :parameters ()
        :precondition (and
            (= (belief_state) 661)
        )
        :effect (and
            (assign (belief_state) 856)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_661_to_857
        :parameters ()
        :precondition (and
            (= (belief_state) 661)
        )
        :effect (and
            (assign (belief_state) 857)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_661_to_857
        :parameters ()
        :precondition (and
            (= (belief_state) 661)
        )
        :effect (and
            (assign (belief_state) 857)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_661_to_451
        :parameters ()
        :precondition (and
            (= (belief_state) 661)
        )
        :effect (and
            (assign (belief_state) 451)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_662_to_858
        :parameters ()
        :precondition (and
            (= (belief_state) 662)
        )
        :effect (and
            (assign (belief_state) 858)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_662_to_859
        :parameters ()
        :precondition (and
            (= (belief_state) 662)
        )
        :effect (and
            (assign (belief_state) 859)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_662_to_452
        :parameters ()
        :precondition (and
            (= (belief_state) 662)
        )
        :effect (and
            (assign (belief_state) 452)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_663_to_860
        :parameters ()
        :precondition (and
            (= (belief_state) 663)
        )
        :effect (and
            (assign (belief_state) 860)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_663_to_496
        :parameters ()
        :precondition (and
            (= (belief_state) 663)
        )
        :effect (and
            (assign (belief_state) 496)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_664_to_861
        :parameters ()
        :precondition (and
            (= (belief_state) 664)
        )
        :effect (and
            (assign (belief_state) 861)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_664_to_663
        :parameters ()
        :precondition (and
            (= (belief_state) 664)
        )
        :effect (and
            (assign (belief_state) 663)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_664_to_514
        :parameters ()
        :precondition (and
            (= (belief_state) 664)
        )
        :effect (and
            (assign (belief_state) 514)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_665_to_536
        :parameters ()
        :precondition (and
            (= (belief_state) 665)
        )
        :effect (and
            (assign (belief_state) 536)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_666_to_665
        :parameters ()
        :precondition (and
            (= (belief_state) 666)
        )
        :effect (and
            (assign (belief_state) 665)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_666_to_589
        :parameters ()
        :precondition (and
            (= (belief_state) 666)
        )
        :effect (and
            (assign (belief_state) 589)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_667_to_840
        :parameters ()
        :precondition (and
            (= (belief_state) 667)
        )
        :effect (and
            (assign (belief_state) 840)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_667_to_862
        :parameters ()
        :precondition (and
            (= (belief_state) 667)
        )
        :effect (and
            (assign (belief_state) 862)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_667_to_454
        :parameters ()
        :precondition (and
            (= (belief_state) 667)
        )
        :effect (and
            (assign (belief_state) 454)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_668_to_863
        :parameters ()
        :precondition (and
            (= (belief_state) 668)
        )
        :effect (and
            (assign (belief_state) 863)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_668_to_842
        :parameters ()
        :precondition (and
            (= (belief_state) 668)
        )
        :effect (and
            (assign (belief_state) 842)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_668_to_455
        :parameters ()
        :precondition (and
            (= (belief_state) 668)
        )
        :effect (and
            (assign (belief_state) 455)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_669_to_539
        :parameters ()
        :precondition (and
            (= (belief_state) 669)
        )
        :effect (and
            (assign (belief_state) 539)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_670_to_669
        :parameters ()
        :precondition (and
            (= (belief_state) 670)
        )
        :effect (and
            (assign (belief_state) 669)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_670_to_591
        :parameters ()
        :precondition (and
            (= (belief_state) 670)
        )
        :effect (and
            (assign (belief_state) 591)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_671_to_540
        :parameters ()
        :precondition (and
            (= (belief_state) 671)
        )
        :effect (and
            (assign (belief_state) 540)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_672_to_671
        :parameters ()
        :precondition (and
            (= (belief_state) 672)
        )
        :effect (and
            (assign (belief_state) 671)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_672_to_592
        :parameters ()
        :precondition (and
            (= (belief_state) 672)
        )
        :effect (and
            (assign (belief_state) 592)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_673_to_541
        :parameters ()
        :precondition (and
            (= (belief_state) 673)
        )
        :effect (and
            (assign (belief_state) 541)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_674_to_673
        :parameters ()
        :precondition (and
            (= (belief_state) 674)
        )
        :effect (and
            (assign (belief_state) 673)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_674_to_593
        :parameters ()
        :precondition (and
            (= (belief_state) 674)
        )
        :effect (and
            (assign (belief_state) 593)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_675_to_864
        :parameters ()
        :precondition (and
            (= (belief_state) 675)
        )
        :effect (and
            (assign (belief_state) 864)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_675_to_865
        :parameters ()
        :precondition (and
            (= (belief_state) 675)
        )
        :effect (and
            (assign (belief_state) 865)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_675_to_462
        :parameters ()
        :precondition (and
            (= (belief_state) 675)
        )
        :effect (and
            (assign (belief_state) 462)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_676_to_866
        :parameters ()
        :precondition (and
            (= (belief_state) 676)
        )
        :effect (and
            (assign (belief_state) 866)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_676_to_867
        :parameters ()
        :precondition (and
            (= (belief_state) 676)
        )
        :effect (and
            (assign (belief_state) 867)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_676_to_463
        :parameters ()
        :precondition (and
            (= (belief_state) 676)
        )
        :effect (and
            (assign (belief_state) 463)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_677_to_868
        :parameters ()
        :precondition (and
            (= (belief_state) 677)
        )
        :effect (and
            (assign (belief_state) 868)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_677_to_869
        :parameters ()
        :precondition (and
            (= (belief_state) 677)
        )
        :effect (and
            (assign (belief_state) 869)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_677_to_464
        :parameters ()
        :precondition (and
            (= (belief_state) 677)
        )
        :effect (and
            (assign (belief_state) 464)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_678_to_870
        :parameters ()
        :precondition (and
            (= (belief_state) 678)
        )
        :effect (and
            (assign (belief_state) 870)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_678_to_499
        :parameters ()
        :precondition (and
            (= (belief_state) 678)
        )
        :effect (and
            (assign (belief_state) 499)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_679_to_871
        :parameters ()
        :precondition (and
            (= (belief_state) 679)
        )
        :effect (and
            (assign (belief_state) 871)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_679_to_678
        :parameters ()
        :precondition (and
            (= (belief_state) 679)
        )
        :effect (and
            (assign (belief_state) 678)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_679_to_516
        :parameters ()
        :precondition (and
            (= (belief_state) 679)
        )
        :effect (and
            (assign (belief_state) 516)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_680_to_543
        :parameters ()
        :precondition (and
            (= (belief_state) 680)
        )
        :effect (and
            (assign (belief_state) 543)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_681_to_680
        :parameters ()
        :precondition (and
            (= (belief_state) 681)
        )
        :effect (and
            (assign (belief_state) 680)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_681_to_595
        :parameters ()
        :precondition (and
            (= (belief_state) 681)
        )
        :effect (and
            (assign (belief_state) 595)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_682_to_872
        :parameters ()
        :precondition (and
            (= (belief_state) 682)
        )
        :effect (and
            (assign (belief_state) 872)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_682_to_839
        :parameters ()
        :precondition (and
            (= (belief_state) 682)
        )
        :effect (and
            (assign (belief_state) 839)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_682_to_466
        :parameters ()
        :precondition (and
            (= (belief_state) 682)
        )
        :effect (and
            (assign (belief_state) 466)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_683_to_838
        :parameters ()
        :precondition (and
            (= (belief_state) 683)
        )
        :effect (and
            (assign (belief_state) 838)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_683_to_641
        :parameters ()
        :precondition (and
            (= (belief_state) 683)
        )
        :effect (and
            (assign (belief_state) 641)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_683_to_467
        :parameters ()
        :precondition (and
            (= (belief_state) 683)
        )
        :effect (and
            (assign (belief_state) 467)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_684_to_849
        :parameters ()
        :precondition (and
            (= (belief_state) 684)
        )
        :effect (and
            (assign (belief_state) 849)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room4_room5__from_684_to_470
        :parameters ()
        :precondition (and
            (= (belief_state) 684)
        )
        :effect (and
            (assign (belief_state) 470)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room1_room2__from_685_to_546
        :parameters ()
        :precondition (and
            (= (belief_state) 685)
        )
        :effect (and
            (assign (belief_state) 546)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_686_to_832
        :parameters ()
        :precondition (and
            (= (belief_state) 686)
        )
        :effect (and
            (assign (belief_state) 832)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_686_to_480
        :parameters ()
        :precondition (and
            (= (belief_state) 686)
        )
        :effect (and
            (assign (belief_state) 480)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_687_to_846
        :parameters ()
        :precondition (and
            (= (belief_state) 687)
        )
        :effect (and
            (assign (belief_state) 846)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_687_to_482
        :parameters ()
        :precondition (and
            (= (belief_state) 687)
        )
        :effect (and
            (assign (belief_state) 482)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_688_to_873
        :parameters ()
        :precondition (and
            (= (belief_state) 688)
        )
        :effect (and
            (assign (belief_state) 873)
            (assign (goal_reached) 't')
        )
    )

    (:action left_room4_room3__from_689_to_835
        :parameters ()
        :precondition (and
            (= (belief_state) 689)
        )
        :effect (and
            (assign (belief_state) 835)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_689_to_486
        :parameters ()
        :precondition (and
            (= (belief_state) 689)
        )
        :effect (and
            (assign (belief_state) 486)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_690_to_837
        :parameters ()
        :precondition (and
            (= (belief_state) 690)
        )
        :effect (and
            (assign (belief_state) 837)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_690_to_689
        :parameters ()
        :precondition (and
            (= (belief_state) 690)
        )
        :effect (and
            (assign (belief_state) 689)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_690_to_487
        :parameters ()
        :precondition (and
            (= (belief_state) 690)
        )
        :effect (and
            (assign (belief_state) 487)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_691_to_818
        :parameters ()
        :precondition (and
            (= (belief_state) 691)
        )
        :effect (and
            (assign (belief_state) 818)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_691_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 691)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_691_to_506
        :parameters ()
        :precondition (and
            (= (belief_state) 691)
        )
        :effect (and
            (assign (belief_state) 506)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_692_to_821
        :parameters ()
        :precondition (and
            (= (belief_state) 692)
        )
        :effect (and
            (assign (belief_state) 821)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_692_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 692)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_692_to_874
        :parameters ()
        :precondition (and
            (= (belief_state) 692)
        )
        :effect (and
            (assign (belief_state) 874)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_692_to_489
        :parameters ()
        :precondition (and
            (= (belief_state) 692)
        )
        :effect (and
            (assign (belief_state) 489)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_693_to_825
        :parameters ()
        :precondition (and
            (= (belief_state) 693)
        )
        :effect (and
            (assign (belief_state) 825)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_693_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 693)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_693_to_875
        :parameters ()
        :precondition (and
            (= (belief_state) 693)
        )
        :effect (and
            (assign (belief_state) 875)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_693_to_490
        :parameters ()
        :precondition (and
            (= (belief_state) 693)
        )
        :effect (and
            (assign (belief_state) 490)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_694_to_829
        :parameters ()
        :precondition (and
            (= (belief_state) 694)
        )
        :effect (and
            (assign (belief_state) 829)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_694_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 694)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_694_to_876
        :parameters ()
        :precondition (and
            (= (belief_state) 694)
        )
        :effect (and
            (assign (belief_state) 876)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_694_to_491
        :parameters ()
        :precondition (and
            (= (belief_state) 694)
        )
        :effect (and
            (assign (belief_state) 491)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_695_to_877
        :parameters ()
        :precondition (and
            (= (belief_state) 695)
        )
        :effect (and
            (assign (belief_state) 877)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_695_to_497
        :parameters ()
        :precondition (and
            (= (belief_state) 695)
        )
        :effect (and
            (assign (belief_state) 497)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_696_to_878
        :parameters ()
        :precondition (and
            (= (belief_state) 696)
        )
        :effect (and
            (assign (belief_state) 878)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_696_to_695
        :parameters ()
        :precondition (and
            (= (belief_state) 696)
        )
        :effect (and
            (assign (belief_state) 695)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_696_to_500
        :parameters ()
        :precondition (and
            (= (belief_state) 696)
        )
        :effect (and
            (assign (belief_state) 500)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_697_to_844
        :parameters ()
        :precondition (and
            (= (belief_state) 697)
        )
        :effect (and
            (assign (belief_state) 844)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_697_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 697)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_697_to_493
        :parameters ()
        :precondition (and
            (= (belief_state) 697)
        )
        :effect (and
            (assign (belief_state) 493)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_698_to_879
        :parameters ()
        :precondition (and
            (= (belief_state) 698)
        )
        :effect (and
            (assign (belief_state) 879)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_698_to_498
        :parameters ()
        :precondition (and
            (= (belief_state) 698)
        )
        :effect (and
            (assign (belief_state) 498)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_699_to_880
        :parameters ()
        :precondition (and
            (= (belief_state) 699)
        )
        :effect (and
            (assign (belief_state) 880)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_699_to_881
        :parameters ()
        :precondition (and
            (= (belief_state) 699)
        )
        :effect (and
            (assign (belief_state) 881)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_699_to_494
        :parameters ()
        :precondition (and
            (= (belief_state) 699)
        )
        :effect (and
            (assign (belief_state) 494)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_700_to_857
        :parameters ()
        :precondition (and
            (= (belief_state) 700)
        )
        :effect (and
            (assign (belief_state) 857)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_700_to_503
        :parameters ()
        :precondition (and
            (= (belief_state) 700)
        )
        :effect (and
            (assign (belief_state) 503)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_701_to_881
        :parameters ()
        :precondition (and
            (= (belief_state) 701)
        )
        :effect (and
            (assign (belief_state) 881)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_702_to_503
        :parameters ()
        :precondition (and
            (= (belief_state) 702)
        )
        :effect (and
            (assign (belief_state) 503)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_702_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 702)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_702_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 702)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_703_to_874
        :parameters ()
        :precondition (and
            (= (belief_state) 703)
        )
        :effect (and
            (assign (belief_state) 874)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_703_to_508
        :parameters ()
        :precondition (and
            (= (belief_state) 703)
        )
        :effect (and
            (assign (belief_state) 508)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_704_to_875
        :parameters ()
        :precondition (and
            (= (belief_state) 704)
        )
        :effect (and
            (assign (belief_state) 875)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_704_to_703
        :parameters ()
        :precondition (and
            (= (belief_state) 704)
        )
        :effect (and
            (assign (belief_state) 703)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_704_to_509
        :parameters ()
        :precondition (and
            (= (belief_state) 704)
        )
        :effect (and
            (assign (belief_state) 509)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_705_to_876
        :parameters ()
        :precondition (and
            (= (belief_state) 705)
        )
        :effect (and
            (assign (belief_state) 876)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_705_to_882
        :parameters ()
        :precondition (and
            (= (belief_state) 705)
        )
        :effect (and
            (assign (belief_state) 882)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_705_to_883
        :parameters ()
        :precondition (and
            (= (belief_state) 705)
        )
        :effect (and
            (assign (belief_state) 883)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_705_to_507
        :parameters ()
        :precondition (and
            (= (belief_state) 705)
        )
        :effect (and
            (assign (belief_state) 507)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_706_to_882
        :parameters ()
        :precondition (and
            (= (belief_state) 706)
        )
        :effect (and
            (assign (belief_state) 882)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_706_to_498
        :parameters ()
        :precondition (and
            (= (belief_state) 706)
        )
        :effect (and
            (assign (belief_state) 498)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_707_to_883
        :parameters ()
        :precondition (and
            (= (belief_state) 707)
        )
        :effect (and
            (assign (belief_state) 883)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_707_to_303
        :parameters ()
        :precondition (and
            (= (belief_state) 707)
        )
        :effect (and
            (assign (belief_state) 303)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_708_to_819
        :parameters ()
        :precondition (and
            (= (belief_state) 708)
        )
        :effect (and
            (assign (belief_state) 819)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_708_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 708)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_708_to_520
        :parameters ()
        :precondition (and
            (= (belief_state) 708)
        )
        :effect (and
            (assign (belief_state) 520)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_709_to_822
        :parameters ()
        :precondition (and
            (= (belief_state) 709)
        )
        :effect (and
            (assign (belief_state) 822)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_709_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 709)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_709_to_884
        :parameters ()
        :precondition (and
            (= (belief_state) 709)
        )
        :effect (and
            (assign (belief_state) 884)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_709_to_511
        :parameters ()
        :precondition (and
            (= (belief_state) 709)
        )
        :effect (and
            (assign (belief_state) 511)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_710_to_826
        :parameters ()
        :precondition (and
            (= (belief_state) 710)
        )
        :effect (and
            (assign (belief_state) 826)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_710_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 710)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_710_to_885
        :parameters ()
        :precondition (and
            (= (belief_state) 710)
        )
        :effect (and
            (assign (belief_state) 885)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_710_to_512
        :parameters ()
        :precondition (and
            (= (belief_state) 710)
        )
        :effect (and
            (assign (belief_state) 512)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_711_to_830
        :parameters ()
        :precondition (and
            (= (belief_state) 711)
        )
        :effect (and
            (assign (belief_state) 830)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_711_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 711)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_711_to_886
        :parameters ()
        :precondition (and
            (= (belief_state) 711)
        )
        :effect (and
            (assign (belief_state) 886)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_711_to_513
        :parameters ()
        :precondition (and
            (= (belief_state) 711)
        )
        :effect (and
            (assign (belief_state) 513)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_712_to_887
        :parameters ()
        :precondition (and
            (= (belief_state) 712)
        )
        :effect (and
            (assign (belief_state) 887)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_712_to_515
        :parameters ()
        :precondition (and
            (= (belief_state) 712)
        )
        :effect (and
            (assign (belief_state) 515)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_713_to_888
        :parameters ()
        :precondition (and
            (= (belief_state) 713)
        )
        :effect (and
            (assign (belief_state) 888)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_713_to_712
        :parameters ()
        :precondition (and
            (= (belief_state) 713)
        )
        :effect (and
            (assign (belief_state) 712)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_713_to_517
        :parameters ()
        :precondition (and
            (= (belief_state) 713)
        )
        :effect (and
            (assign (belief_state) 517)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_714_to_884
        :parameters ()
        :precondition (and
            (= (belief_state) 714)
        )
        :effect (and
            (assign (belief_state) 884)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_714_to_522
        :parameters ()
        :precondition (and
            (= (belief_state) 714)
        )
        :effect (and
            (assign (belief_state) 522)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_715_to_885
        :parameters ()
        :precondition (and
            (= (belief_state) 715)
        )
        :effect (and
            (assign (belief_state) 885)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_715_to_714
        :parameters ()
        :precondition (and
            (= (belief_state) 715)
        )
        :effect (and
            (assign (belief_state) 714)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_715_to_523
        :parameters ()
        :precondition (and
            (= (belief_state) 715)
        )
        :effect (and
            (assign (belief_state) 523)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_716_to_886
        :parameters ()
        :precondition (and
            (= (belief_state) 716)
        )
        :effect (and
            (assign (belief_state) 886)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_716_to_889
        :parameters ()
        :precondition (and
            (= (belief_state) 716)
        )
        :effect (and
            (assign (belief_state) 889)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_716_to_890
        :parameters ()
        :precondition (and
            (= (belief_state) 716)
        )
        :effect (and
            (assign (belief_state) 890)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_716_to_521
        :parameters ()
        :precondition (and
            (= (belief_state) 716)
        )
        :effect (and
            (assign (belief_state) 521)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_717_to_889
        :parameters ()
        :precondition (and
            (= (belief_state) 717)
        )
        :effect (and
            (assign (belief_state) 889)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_717_to_262
        :parameters ()
        :precondition (and
            (= (belief_state) 717)
        )
        :effect (and
            (assign (belief_state) 262)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_718_to_890
        :parameters ()
        :precondition (and
            (= (belief_state) 718)
        )
        :effect (and
            (assign (belief_state) 890)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_718_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 718)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_719_to_813
        :parameters ()
        :precondition (and
            (= (belief_state) 719)
        )
        :effect (and
            (assign (belief_state) 813)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_719_to_891
        :parameters ()
        :precondition (and
            (= (belief_state) 719)
        )
        :effect (and
            (assign (belief_state) 891)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_719_to_892
        :parameters ()
        :precondition (and
            (= (belief_state) 719)
        )
        :effect (and
            (assign (belief_state) 892)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_719_to_524
        :parameters ()
        :precondition (and
            (= (belief_state) 719)
        )
        :effect (and
            (assign (belief_state) 524)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_720_to_893
        :parameters ()
        :precondition (and
            (= (belief_state) 720)
        )
        :effect (and
            (assign (belief_state) 893)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_720_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 720)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_720_to_551
        :parameters ()
        :precondition (and
            (= (belief_state) 720)
        )
        :effect (and
            (assign (belief_state) 551)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_721_to_894
        :parameters ()
        :precondition (and
            (= (belief_state) 721)
        )
        :effect (and
            (assign (belief_state) 894)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_721_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 721)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_721_to_895
        :parameters ()
        :precondition (and
            (= (belief_state) 721)
        )
        :effect (and
            (assign (belief_state) 895)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_721_to_525
        :parameters ()
        :precondition (and
            (= (belief_state) 721)
        )
        :effect (and
            (assign (belief_state) 525)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_722_to_896
        :parameters ()
        :precondition (and
            (= (belief_state) 722)
        )
        :effect (and
            (assign (belief_state) 896)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_722_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 722)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_722_to_897
        :parameters ()
        :precondition (and
            (= (belief_state) 722)
        )
        :effect (and
            (assign (belief_state) 897)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_722_to_526
        :parameters ()
        :precondition (and
            (= (belief_state) 722)
        )
        :effect (and
            (assign (belief_state) 526)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_723_to_898
        :parameters ()
        :precondition (and
            (= (belief_state) 723)
        )
        :effect (and
            (assign (belief_state) 898)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_723_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 723)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_723_to_899
        :parameters ()
        :precondition (and
            (= (belief_state) 723)
        )
        :effect (and
            (assign (belief_state) 899)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_723_to_527
        :parameters ()
        :precondition (and
            (= (belief_state) 723)
        )
        :effect (and
            (assign (belief_state) 527)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_724_to_900
        :parameters ()
        :precondition (and
            (= (belief_state) 724)
        )
        :effect (and
            (assign (belief_state) 900)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_724_to_537
        :parameters ()
        :precondition (and
            (= (belief_state) 724)
        )
        :effect (and
            (assign (belief_state) 537)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_725_to_901
        :parameters ()
        :precondition (and
            (= (belief_state) 725)
        )
        :effect (and
            (assign (belief_state) 901)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_725_to_724
        :parameters ()
        :precondition (and
            (= (belief_state) 725)
        )
        :effect (and
            (assign (belief_state) 724)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_725_to_544
        :parameters ()
        :precondition (and
            (= (belief_state) 725)
        )
        :effect (and
            (assign (belief_state) 544)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_726_to_838
        :parameters ()
        :precondition (and
            (= (belief_state) 726)
        )
        :effect (and
            (assign (belief_state) 838)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_726_to_739
        :parameters ()
        :precondition (and
            (= (belief_state) 726)
        )
        :effect (and
            (assign (belief_state) 739)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_726_to_528
        :parameters ()
        :precondition (and
            (= (belief_state) 726)
        )
        :effect (and
            (assign (belief_state) 528)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_727_to_902
        :parameters ()
        :precondition (and
            (= (belief_state) 727)
        )
        :effect (and
            (assign (belief_state) 902)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_727_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 727)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_727_to_529
        :parameters ()
        :precondition (and
            (= (belief_state) 727)
        )
        :effect (and
            (assign (belief_state) 529)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_728_to_903
        :parameters ()
        :precondition (and
            (= (belief_state) 728)
        )
        :effect (and
            (assign (belief_state) 903)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_728_to_538
        :parameters ()
        :precondition (and
            (= (belief_state) 728)
        )
        :effect (and
            (assign (belief_state) 538)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_729_to_904
        :parameters ()
        :precondition (and
            (= (belief_state) 729)
        )
        :effect (and
            (assign (belief_state) 904)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_729_to_905
        :parameters ()
        :precondition (and
            (= (belief_state) 729)
        )
        :effect (and
            (assign (belief_state) 905)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_729_to_530
        :parameters ()
        :precondition (and
            (= (belief_state) 729)
        )
        :effect (and
            (assign (belief_state) 530)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_730_to_852
        :parameters ()
        :precondition (and
            (= (belief_state) 730)
        )
        :effect (and
            (assign (belief_state) 852)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_730_to_531
        :parameters ()
        :precondition (and
            (= (belief_state) 730)
        )
        :effect (and
            (assign (belief_state) 531)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_730_to_570
        :parameters ()
        :precondition (and
            (= (belief_state) 730)
        )
        :effect (and
            (assign (belief_state) 570)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_731_to_854
        :parameters ()
        :precondition (and
            (= (belief_state) 731)
        )
        :effect (and
            (assign (belief_state) 854)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_731_to_643
        :parameters ()
        :precondition (and
            (= (belief_state) 731)
        )
        :effect (and
            (assign (belief_state) 643)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_731_to_643
        :parameters ()
        :precondition (and
            (= (belief_state) 731)
        )
        :effect (and
            (assign (belief_state) 643)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_731_to_534
        :parameters ()
        :precondition (and
            (= (belief_state) 731)
        )
        :effect (and
            (assign (belief_state) 534)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_732_to_906
        :parameters ()
        :precondition (and
            (= (belief_state) 732)
        )
        :effect (and
            (assign (belief_state) 906)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_732_to_548
        :parameters ()
        :precondition (and
            (= (belief_state) 732)
        )
        :effect (and
            (assign (belief_state) 548)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_733_to_858
        :parameters ()
        :precondition (and
            (= (belief_state) 733)
        )
        :effect (and
            (assign (belief_state) 858)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_733_to_751
        :parameters ()
        :precondition (and
            (= (belief_state) 733)
        )
        :effect (and
            (assign (belief_state) 751)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_733_to_907
        :parameters ()
        :precondition (and
            (= (belief_state) 733)
        )
        :effect (and
            (assign (belief_state) 907)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_733_to_535
        :parameters ()
        :precondition (and
            (= (belief_state) 733)
        )
        :effect (and
            (assign (belief_state) 535)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_734_to_863
        :parameters ()
        :precondition (and
            (= (belief_state) 734)
        )
        :effect (and
            (assign (belief_state) 863)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_734_to_643
        :parameters ()
        :precondition (and
            (= (belief_state) 734)
        )
        :effect (and
            (assign (belief_state) 643)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_734_to_571
        :parameters ()
        :precondition (and
            (= (belief_state) 734)
        )
        :effect (and
            (assign (belief_state) 571)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_735_to_905
        :parameters ()
        :precondition (and
            (= (belief_state) 735)
        )
        :effect (and
            (assign (belief_state) 905)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_736_to_864
        :parameters ()
        :precondition (and
            (= (belief_state) 736)
        )
        :effect (and
            (assign (belief_state) 864)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_736_to_559
        :parameters ()
        :precondition (and
            (= (belief_state) 736)
        )
        :effect (and
            (assign (belief_state) 559)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_737_to_866
        :parameters ()
        :precondition (and
            (= (belief_state) 737)
        )
        :effect (and
            (assign (belief_state) 866)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_737_to_736
        :parameters ()
        :precondition (and
            (= (belief_state) 737)
        )
        :effect (and
            (assign (belief_state) 736)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_737_to_573
        :parameters ()
        :precondition (and
            (= (belief_state) 737)
        )
        :effect (and
            (assign (belief_state) 573)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_738_to_868
        :parameters ()
        :precondition (and
            (= (belief_state) 738)
        )
        :effect (and
            (assign (belief_state) 868)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_738_to_908
        :parameters ()
        :precondition (and
            (= (belief_state) 738)
        )
        :effect (and
            (assign (belief_state) 908)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_738_to_909
        :parameters ()
        :precondition (and
            (= (belief_state) 738)
        )
        :effect (and
            (assign (belief_state) 909)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_738_to_542
        :parameters ()
        :precondition (and
            (= (belief_state) 738)
        )
        :effect (and
            (assign (belief_state) 542)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_739_to_872
        :parameters ()
        :precondition (and
            (= (belief_state) 739)
        )
        :effect (and
            (assign (belief_state) 872)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_739_to_560
        :parameters ()
        :precondition (and
            (= (belief_state) 739)
        )
        :effect (and
            (assign (belief_state) 560)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_740_to_548
        :parameters ()
        :precondition (and
            (= (belief_state) 740)
        )
        :effect (and
            (assign (belief_state) 548)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_740_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 740)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_740_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 740)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_741_to_895
        :parameters ()
        :precondition (and
            (= (belief_state) 741)
        )
        :effect (and
            (assign (belief_state) 895)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_741_to_553
        :parameters ()
        :precondition (and
            (= (belief_state) 741)
        )
        :effect (and
            (assign (belief_state) 553)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_742_to_897
        :parameters ()
        :precondition (and
            (= (belief_state) 742)
        )
        :effect (and
            (assign (belief_state) 897)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_742_to_741
        :parameters ()
        :precondition (and
            (= (belief_state) 742)
        )
        :effect (and
            (assign (belief_state) 741)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_742_to_554
        :parameters ()
        :precondition (and
            (= (belief_state) 742)
        )
        :effect (and
            (assign (belief_state) 554)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_743_to_899
        :parameters ()
        :precondition (and
            (= (belief_state) 743)
        )
        :effect (and
            (assign (belief_state) 899)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_743_to_910
        :parameters ()
        :precondition (and
            (= (belief_state) 743)
        )
        :effect (and
            (assign (belief_state) 910)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_743_to_911
        :parameters ()
        :precondition (and
            (= (belief_state) 743)
        )
        :effect (and
            (assign (belief_state) 911)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_743_to_552
        :parameters ()
        :precondition (and
            (= (belief_state) 743)
        )
        :effect (and
            (assign (belief_state) 552)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_744_to_910
        :parameters ()
        :precondition (and
            (= (belief_state) 744)
        )
        :effect (and
            (assign (belief_state) 910)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_744_to_538
        :parameters ()
        :precondition (and
            (= (belief_state) 744)
        )
        :effect (and
            (assign (belief_state) 538)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_745_to_911
        :parameters ()
        :precondition (and
            (= (belief_state) 745)
        )
        :effect (and
            (assign (belief_state) 911)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_745_to_341
        :parameters ()
        :precondition (and
            (= (belief_state) 745)
        )
        :effect (and
            (assign (belief_state) 341)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_746_to_891
        :parameters ()
        :precondition (and
            (= (belief_state) 746)
        )
        :effect (and
            (assign (belief_state) 891)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_746_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 746)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_746_to_912
        :parameters ()
        :precondition (and
            (= (belief_state) 746)
        )
        :effect (and
            (assign (belief_state) 912)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_746_to_555
        :parameters ()
        :precondition (and
            (= (belief_state) 746)
        )
        :effect (and
            (assign (belief_state) 555)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_747_to_913
        :parameters ()
        :precondition (and
            (= (belief_state) 747)
        )
        :effect (and
            (assign (belief_state) 913)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_747_to_205
        :parameters ()
        :precondition (and
            (= (belief_state) 747)
        )
        :effect (and
            (assign (belief_state) 205)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_747_to_561
        :parameters ()
        :precondition (and
            (= (belief_state) 747)
        )
        :effect (and
            (assign (belief_state) 561)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_748_to_914
        :parameters ()
        :precondition (and
            (= (belief_state) 748)
        )
        :effect (and
            (assign (belief_state) 914)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_748_to_468
        :parameters ()
        :precondition (and
            (= (belief_state) 748)
        )
        :effect (and
            (assign (belief_state) 468)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_748_to_915
        :parameters ()
        :precondition (and
            (= (belief_state) 748)
        )
        :effect (and
            (assign (belief_state) 915)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_748_to_556
        :parameters ()
        :precondition (and
            (= (belief_state) 748)
        )
        :effect (and
            (assign (belief_state) 556)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_749_to_916
        :parameters ()
        :precondition (and
            (= (belief_state) 749)
        )
        :effect (and
            (assign (belief_state) 916)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_749_to_469
        :parameters ()
        :precondition (and
            (= (belief_state) 749)
        )
        :effect (and
            (assign (belief_state) 469)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_749_to_557
        :parameters ()
        :precondition (and
            (= (belief_state) 749)
        )
        :effect (and
            (assign (belief_state) 557)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_750_to_917
        :parameters ()
        :precondition (and
            (= (belief_state) 750)
        )
        :effect (and
            (assign (belief_state) 917)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_751_to_918
        :parameters ()
        :precondition (and
            (= (belief_state) 751)
        )
        :effect (and
            (assign (belief_state) 918)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_751_to_558
        :parameters ()
        :precondition (and
            (= (belief_state) 751)
        )
        :effect (and
            (assign (belief_state) 558)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_752_to_908
        :parameters ()
        :precondition (and
            (= (belief_state) 752)
        )
        :effect (and
            (assign (belief_state) 908)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_752_to_644
        :parameters ()
        :precondition (and
            (= (belief_state) 752)
        )
        :effect (and
            (assign (belief_state) 644)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_752_to_566
        :parameters ()
        :precondition (and
            (= (belief_state) 752)
        )
        :effect (and
            (assign (belief_state) 566)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_753_to_915
        :parameters ()
        :precondition (and
            (= (belief_state) 753)
        )
        :effect (and
            (assign (belief_state) 915)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_753_to_557
        :parameters ()
        :precondition (and
            (= (belief_state) 753)
        )
        :effect (and
            (assign (belief_state) 557)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_754_to_564
        :parameters ()
        :precondition (and
            (= (belief_state) 754)
        )
        :effect (and
            (assign (belief_state) 564)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_754_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 754)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_754_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 754)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_755_to_566
        :parameters ()
        :precondition (and
            (= (belief_state) 755)
        )
        :effect (and
            (assign (belief_state) 566)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_755_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 755)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_755_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 755)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_756_to_912
        :parameters ()
        :precondition (and
            (= (belief_state) 756)
        )
        :effect (and
            (assign (belief_state) 912)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_756_to_275
        :parameters ()
        :precondition (and
            (= (belief_state) 756)
        )
        :effect (and
            (assign (belief_state) 275)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_756_to_377
        :parameters ()
        :precondition (and
            (= (belief_state) 756)
        )
        :effect (and
            (assign (belief_state) 377)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_756_to_567
        :parameters ()
        :precondition (and
            (= (belief_state) 756)
        )
        :effect (and
            (assign (belief_state) 567)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_757_to_919
        :parameters ()
        :precondition (and
            (= (belief_state) 757)
        )
        :effect (and
            (assign (belief_state) 919)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_757_to_557
        :parameters ()
        :precondition (and
            (= (belief_state) 757)
        )
        :effect (and
            (assign (belief_state) 557)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_758_to_892
        :parameters ()
        :precondition (and
            (= (belief_state) 758)
        )
        :effect (and
            (assign (belief_state) 892)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_758_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 758)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_758_to_920
        :parameters ()
        :precondition (and
            (= (belief_state) 758)
        )
        :effect (and
            (assign (belief_state) 920)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_758_to_568
        :parameters ()
        :precondition (and
            (= (belief_state) 758)
        )
        :effect (and
            (assign (belief_state) 568)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_759_to_921
        :parameters ()
        :precondition (and
            (= (belief_state) 759)
        )
        :effect (and
            (assign (belief_state) 921)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_759_to_572
        :parameters ()
        :precondition (and
            (= (belief_state) 759)
        )
        :effect (and
            (assign (belief_state) 572)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_760_to_922
        :parameters ()
        :precondition (and
            (= (belief_state) 760)
        )
        :effect (and
            (assign (belief_state) 922)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_760_to_759
        :parameters ()
        :precondition (and
            (= (belief_state) 760)
        )
        :effect (and
            (assign (belief_state) 759)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_760_to_574
        :parameters ()
        :precondition (and
            (= (belief_state) 760)
        )
        :effect (and
            (assign (belief_state) 574)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_761_to_923
        :parameters ()
        :precondition (and
            (= (belief_state) 761)
        )
        :effect (and
            (assign (belief_state) 923)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_761_to_924
        :parameters ()
        :precondition (and
            (= (belief_state) 761)
        )
        :effect (and
            (assign (belief_state) 924)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_761_to_925
        :parameters ()
        :precondition (and
            (= (belief_state) 761)
        )
        :effect (and
            (assign (belief_state) 925)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_761_to_569
        :parameters ()
        :precondition (and
            (= (belief_state) 761)
        )
        :effect (and
            (assign (belief_state) 569)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_762_to_907
        :parameters ()
        :precondition (and
            (= (belief_state) 762)
        )
        :effect (and
            (assign (belief_state) 907)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_762_to_644
        :parameters ()
        :precondition (and
            (= (belief_state) 762)
        )
        :effect (and
            (assign (belief_state) 644)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_762_to_578
        :parameters ()
        :precondition (and
            (= (belief_state) 762)
        )
        :effect (and
            (assign (belief_state) 578)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_763_to_924
        :parameters ()
        :precondition (and
            (= (belief_state) 763)
        )
        :effect (and
            (assign (belief_state) 924)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_763_to_538
        :parameters ()
        :precondition (and
            (= (belief_state) 763)
        )
        :effect (and
            (assign (belief_state) 538)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_764_to_909
        :parameters ()
        :precondition (and
            (= (belief_state) 764)
        )
        :effect (and
            (assign (belief_state) 909)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_764_to_644
        :parameters ()
        :precondition (and
            (= (belief_state) 764)
        )
        :effect (and
            (assign (belief_state) 644)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_764_to_579
        :parameters ()
        :precondition (and
            (= (belief_state) 764)
        )
        :effect (and
            (assign (belief_state) 579)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_765_to_925
        :parameters ()
        :precondition (and
            (= (belief_state) 765)
        )
        :effect (and
            (assign (belief_state) 925)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_765_to_341
        :parameters ()
        :precondition (and
            (= (belief_state) 765)
        )
        :effect (and
            (assign (belief_state) 341)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_766_to_578
        :parameters ()
        :precondition (and
            (= (belief_state) 766)
        )
        :effect (and
            (assign (belief_state) 578)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_766_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 766)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_766_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 766)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_767_to_579
        :parameters ()
        :precondition (and
            (= (belief_state) 767)
        )
        :effect (and
            (assign (belief_state) 579)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_767_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 767)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_767_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 767)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_768_to_920
        :parameters ()
        :precondition (and
            (= (belief_state) 768)
        )
        :effect (and
            (assign (belief_state) 920)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_768_to_388
        :parameters ()
        :precondition (and
            (= (belief_state) 768)
        )
        :effect (and
            (assign (belief_state) 388)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_768_to_340
        :parameters ()
        :precondition (and
            (= (belief_state) 768)
        )
        :effect (and
            (assign (belief_state) 340)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_768_to_580
        :parameters ()
        :precondition (and
            (= (belief_state) 768)
        )
        :effect (and
            (assign (belief_state) 580)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_769_to_926
        :parameters ()
        :precondition (and
            (= (belief_state) 769)
        )
        :effect (and
            (assign (belief_state) 926)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_769_to_341
        :parameters ()
        :precondition (and
            (= (belief_state) 769)
        )
        :effect (and
            (assign (belief_state) 341)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_770_to_814
        :parameters ()
        :precondition (and
            (= (belief_state) 770)
        )
        :effect (and
            (assign (belief_state) 814)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_770_to_927
        :parameters ()
        :precondition (and
            (= (belief_state) 770)
        )
        :effect (and
            (assign (belief_state) 927)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_770_to_928
        :parameters ()
        :precondition (and
            (= (belief_state) 770)
        )
        :effect (and
            (assign (belief_state) 928)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_770_to_581
        :parameters ()
        :precondition (and
            (= (belief_state) 770)
        )
        :effect (and
            (assign (belief_state) 581)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_771_to_929
        :parameters ()
        :precondition (and
            (= (belief_state) 771)
        )
        :effect (and
            (assign (belief_state) 929)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_771_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 771)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_771_to_599
        :parameters ()
        :precondition (and
            (= (belief_state) 771)
        )
        :effect (and
            (assign (belief_state) 599)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_772_to_930
        :parameters ()
        :precondition (and
            (= (belief_state) 772)
        )
        :effect (and
            (assign (belief_state) 930)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_772_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 772)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_772_to_931
        :parameters ()
        :precondition (and
            (= (belief_state) 772)
        )
        :effect (and
            (assign (belief_state) 931)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_772_to_582
        :parameters ()
        :precondition (and
            (= (belief_state) 772)
        )
        :effect (and
            (assign (belief_state) 582)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_773_to_932
        :parameters ()
        :precondition (and
            (= (belief_state) 773)
        )
        :effect (and
            (assign (belief_state) 932)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_773_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 773)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_773_to_933
        :parameters ()
        :precondition (and
            (= (belief_state) 773)
        )
        :effect (and
            (assign (belief_state) 933)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_773_to_583
        :parameters ()
        :precondition (and
            (= (belief_state) 773)
        )
        :effect (and
            (assign (belief_state) 583)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_774_to_934
        :parameters ()
        :precondition (and
            (= (belief_state) 774)
        )
        :effect (and
            (assign (belief_state) 934)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_774_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 774)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_774_to_935
        :parameters ()
        :precondition (and
            (= (belief_state) 774)
        )
        :effect (and
            (assign (belief_state) 935)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_774_to_584
        :parameters ()
        :precondition (and
            (= (belief_state) 774)
        )
        :effect (and
            (assign (belief_state) 584)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_775_to_936
        :parameters ()
        :precondition (and
            (= (belief_state) 775)
        )
        :effect (and
            (assign (belief_state) 936)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_775_to_590
        :parameters ()
        :precondition (and
            (= (belief_state) 775)
        )
        :effect (and
            (assign (belief_state) 590)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_776_to_937
        :parameters ()
        :precondition (and
            (= (belief_state) 776)
        )
        :effect (and
            (assign (belief_state) 937)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_776_to_775
        :parameters ()
        :precondition (and
            (= (belief_state) 776)
        )
        :effect (and
            (assign (belief_state) 775)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_776_to_596
        :parameters ()
        :precondition (and
            (= (belief_state) 776)
        )
        :effect (and
            (assign (belief_state) 596)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_777_to_851
        :parameters ()
        :precondition (and
            (= (belief_state) 777)
        )
        :effect (and
            (assign (belief_state) 851)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_777_to_605
        :parameters ()
        :precondition (and
            (= (belief_state) 777)
        )
        :effect (and
            (assign (belief_state) 605)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_778_to_853
        :parameters ()
        :precondition (and
            (= (belief_state) 778)
        )
        :effect (and
            (assign (belief_state) 853)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_778_to_777
        :parameters ()
        :precondition (and
            (= (belief_state) 778)
        )
        :effect (and
            (assign (belief_state) 777)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_778_to_618
        :parameters ()
        :precondition (and
            (= (belief_state) 778)
        )
        :effect (and
            (assign (belief_state) 618)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_779_to_859
        :parameters ()
        :precondition (and
            (= (belief_state) 779)
        )
        :effect (and
            (assign (belief_state) 859)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_779_to_938
        :parameters ()
        :precondition (and
            (= (belief_state) 779)
        )
        :effect (and
            (assign (belief_state) 938)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_779_to_939
        :parameters ()
        :precondition (and
            (= (belief_state) 779)
        )
        :effect (and
            (assign (belief_state) 939)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_779_to_588
        :parameters ()
        :precondition (and
            (= (belief_state) 779)
        )
        :effect (and
            (assign (belief_state) 588)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_780_to_862
        :parameters ()
        :precondition (and
            (= (belief_state) 780)
        )
        :effect (and
            (assign (belief_state) 862)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_780_to_606
        :parameters ()
        :precondition (and
            (= (belief_state) 780)
        )
        :effect (and
            (assign (belief_state) 606)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_781_to_865
        :parameters ()
        :precondition (and
            (= (belief_state) 781)
        )
        :effect (and
            (assign (belief_state) 865)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_781_to_608
        :parameters ()
        :precondition (and
            (= (belief_state) 781)
        )
        :effect (and
            (assign (belief_state) 608)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_782_to_867
        :parameters ()
        :precondition (and
            (= (belief_state) 782)
        )
        :effect (and
            (assign (belief_state) 867)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_782_to_781
        :parameters ()
        :precondition (and
            (= (belief_state) 782)
        )
        :effect (and
            (assign (belief_state) 781)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_782_to_620
        :parameters ()
        :precondition (and
            (= (belief_state) 782)
        )
        :effect (and
            (assign (belief_state) 620)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_783_to_869
        :parameters ()
        :precondition (and
            (= (belief_state) 783)
        )
        :effect (and
            (assign (belief_state) 869)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_783_to_940
        :parameters ()
        :precondition (and
            (= (belief_state) 783)
        )
        :effect (and
            (assign (belief_state) 940)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_783_to_941
        :parameters ()
        :precondition (and
            (= (belief_state) 783)
        )
        :effect (and
            (assign (belief_state) 941)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_783_to_594
        :parameters ()
        :precondition (and
            (= (belief_state) 783)
        )
        :effect (and
            (assign (belief_state) 594)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_784_to_931
        :parameters ()
        :precondition (and
            (= (belief_state) 784)
        )
        :effect (and
            (assign (belief_state) 931)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_784_to_601
        :parameters ()
        :precondition (and
            (= (belief_state) 784)
        )
        :effect (and
            (assign (belief_state) 601)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_785_to_933
        :parameters ()
        :precondition (and
            (= (belief_state) 785)
        )
        :effect (and
            (assign (belief_state) 933)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_785_to_784
        :parameters ()
        :precondition (and
            (= (belief_state) 785)
        )
        :effect (and
            (assign (belief_state) 784)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_785_to_602
        :parameters ()
        :precondition (and
            (= (belief_state) 785)
        )
        :effect (and
            (assign (belief_state) 602)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_786_to_935
        :parameters ()
        :precondition (and
            (= (belief_state) 786)
        )
        :effect (and
            (assign (belief_state) 935)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_786_to_942
        :parameters ()
        :precondition (and
            (= (belief_state) 786)
        )
        :effect (and
            (assign (belief_state) 942)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_786_to_943
        :parameters ()
        :precondition (and
            (= (belief_state) 786)
        )
        :effect (and
            (assign (belief_state) 943)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_786_to_600
        :parameters ()
        :precondition (and
            (= (belief_state) 786)
        )
        :effect (and
            (assign (belief_state) 600)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_787_to_942
        :parameters ()
        :precondition (and
            (= (belief_state) 787)
        )
        :effect (and
            (assign (belief_state) 942)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_787_to_262
        :parameters ()
        :precondition (and
            (= (belief_state) 787)
        )
        :effect (and
            (assign (belief_state) 262)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_788_to_943
        :parameters ()
        :precondition (and
            (= (belief_state) 788)
        )
        :effect (and
            (assign (belief_state) 943)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_788_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 788)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_789_to_927
        :parameters ()
        :precondition (and
            (= (belief_state) 789)
        )
        :effect (and
            (assign (belief_state) 927)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_789_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 789)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_789_to_944
        :parameters ()
        :precondition (and
            (= (belief_state) 789)
        )
        :effect (and
            (assign (belief_state) 944)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_789_to_603
        :parameters ()
        :precondition (and
            (= (belief_state) 789)
        )
        :effect (and
            (assign (belief_state) 603)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_790_to_945
        :parameters ()
        :precondition (and
            (= (belief_state) 790)
        )
        :effect (and
            (assign (belief_state) 945)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_790_to_607
        :parameters ()
        :precondition (and
            (= (belief_state) 790)
        )
        :effect (and
            (assign (belief_state) 607)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_791_to_946
        :parameters ()
        :precondition (and
            (= (belief_state) 791)
        )
        :effect (and
            (assign (belief_state) 946)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_791_to_790
        :parameters ()
        :precondition (and
            (= (belief_state) 791)
        )
        :effect (and
            (assign (belief_state) 790)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_791_to_609
        :parameters ()
        :precondition (and
            (= (belief_state) 791)
        )
        :effect (and
            (assign (belief_state) 609)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_792_to_947
        :parameters ()
        :precondition (and
            (= (belief_state) 792)
        )
        :effect (and
            (assign (belief_state) 947)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_792_to_948
        :parameters ()
        :precondition (and
            (= (belief_state) 792)
        )
        :effect (and
            (assign (belief_state) 948)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_792_to_949
        :parameters ()
        :precondition (and
            (= (belief_state) 792)
        )
        :effect (and
            (assign (belief_state) 949)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_792_to_604
        :parameters ()
        :precondition (and
            (= (belief_state) 792)
        )
        :effect (and
            (assign (belief_state) 604)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_793_to_938
        :parameters ()
        :precondition (and
            (= (belief_state) 793)
        )
        :effect (and
            (assign (belief_state) 938)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_793_to_644
        :parameters ()
        :precondition (and
            (= (belief_state) 793)
        )
        :effect (and
            (assign (belief_state) 644)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_793_to_613
        :parameters ()
        :precondition (and
            (= (belief_state) 793)
        )
        :effect (and
            (assign (belief_state) 613)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_794_to_948
        :parameters ()
        :precondition (and
            (= (belief_state) 794)
        )
        :effect (and
            (assign (belief_state) 948)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_794_to_498
        :parameters ()
        :precondition (and
            (= (belief_state) 794)
        )
        :effect (and
            (assign (belief_state) 498)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_795_to_940
        :parameters ()
        :precondition (and
            (= (belief_state) 795)
        )
        :effect (and
            (assign (belief_state) 940)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_795_to_644
        :parameters ()
        :precondition (and
            (= (belief_state) 795)
        )
        :effect (and
            (assign (belief_state) 644)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_795_to_614
        :parameters ()
        :precondition (and
            (= (belief_state) 795)
        )
        :effect (and
            (assign (belief_state) 614)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_796_to_949
        :parameters ()
        :precondition (and
            (= (belief_state) 796)
        )
        :effect (and
            (assign (belief_state) 949)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_796_to_303
        :parameters ()
        :precondition (and
            (= (belief_state) 796)
        )
        :effect (and
            (assign (belief_state) 303)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_797_to_613
        :parameters ()
        :precondition (and
            (= (belief_state) 797)
        )
        :effect (and
            (assign (belief_state) 613)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_797_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 797)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_797_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 797)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_798_to_614
        :parameters ()
        :precondition (and
            (= (belief_state) 798)
        )
        :effect (and
            (assign (belief_state) 614)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_798_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 798)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_798_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 798)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_799_to_944
        :parameters ()
        :precondition (and
            (= (belief_state) 799)
        )
        :effect (and
            (assign (belief_state) 944)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_799_to_419
        :parameters ()
        :precondition (and
            (= (belief_state) 799)
        )
        :effect (and
            (assign (belief_state) 419)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_799_to_302
        :parameters ()
        :precondition (and
            (= (belief_state) 799)
        )
        :effect (and
            (assign (belief_state) 302)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_799_to_615
        :parameters ()
        :precondition (and
            (= (belief_state) 799)
        )
        :effect (and
            (assign (belief_state) 615)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_800_to_950
        :parameters ()
        :precondition (and
            (= (belief_state) 800)
        )
        :effect (and
            (assign (belief_state) 950)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_800_to_303
        :parameters ()
        :precondition (and
            (= (belief_state) 800)
        )
        :effect (and
            (assign (belief_state) 303)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_801_to_928
        :parameters ()
        :precondition (and
            (= (belief_state) 801)
        )
        :effect (and
            (assign (belief_state) 928)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_801_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 801)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_801_to_951
        :parameters ()
        :precondition (and
            (= (belief_state) 801)
        )
        :effect (and
            (assign (belief_state) 951)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_801_to_616
        :parameters ()
        :precondition (and
            (= (belief_state) 801)
        )
        :effect (and
            (assign (belief_state) 616)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_802_to_952
        :parameters ()
        :precondition (and
            (= (belief_state) 802)
        )
        :effect (and
            (assign (belief_state) 952)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_802_to_619
        :parameters ()
        :precondition (and
            (= (belief_state) 802)
        )
        :effect (and
            (assign (belief_state) 619)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_803_to_953
        :parameters ()
        :precondition (and
            (= (belief_state) 803)
        )
        :effect (and
            (assign (belief_state) 953)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_803_to_802
        :parameters ()
        :precondition (and
            (= (belief_state) 803)
        )
        :effect (and
            (assign (belief_state) 802)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_803_to_621
        :parameters ()
        :precondition (and
            (= (belief_state) 803)
        )
        :effect (and
            (assign (belief_state) 621)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_804_to_954
        :parameters ()
        :precondition (and
            (= (belief_state) 804)
        )
        :effect (and
            (assign (belief_state) 954)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_804_to_955
        :parameters ()
        :precondition (and
            (= (belief_state) 804)
        )
        :effect (and
            (assign (belief_state) 955)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_804_to_956
        :parameters ()
        :precondition (and
            (= (belief_state) 804)
        )
        :effect (and
            (assign (belief_state) 956)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_804_to_617
        :parameters ()
        :precondition (and
            (= (belief_state) 804)
        )
        :effect (and
            (assign (belief_state) 617)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_805_to_939
        :parameters ()
        :precondition (and
            (= (belief_state) 805)
        )
        :effect (and
            (assign (belief_state) 939)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_805_to_644
        :parameters ()
        :precondition (and
            (= (belief_state) 805)
        )
        :effect (and
            (assign (belief_state) 644)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_805_to_625
        :parameters ()
        :precondition (and
            (= (belief_state) 805)
        )
        :effect (and
            (assign (belief_state) 625)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_806_to_955
        :parameters ()
        :precondition (and
            (= (belief_state) 806)
        )
        :effect (and
            (assign (belief_state) 955)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_806_to_262
        :parameters ()
        :precondition (and
            (= (belief_state) 806)
        )
        :effect (and
            (assign (belief_state) 262)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_807_to_941
        :parameters ()
        :precondition (and
            (= (belief_state) 807)
        )
        :effect (and
            (assign (belief_state) 941)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_807_to_644
        :parameters ()
        :precondition (and
            (= (belief_state) 807)
        )
        :effect (and
            (assign (belief_state) 644)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_807_to_626
        :parameters ()
        :precondition (and
            (= (belief_state) 807)
        )
        :effect (and
            (assign (belief_state) 626)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_808_to_956
        :parameters ()
        :precondition (and
            (= (belief_state) 808)
        )
        :effect (and
            (assign (belief_state) 956)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_808_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 808)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_809_to_625
        :parameters ()
        :precondition (and
            (= (belief_state) 809)
        )
        :effect (and
            (assign (belief_state) 625)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_809_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 809)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_809_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 809)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_810_to_626
        :parameters ()
        :precondition (and
            (= (belief_state) 810)
        )
        :effect (and
            (assign (belief_state) 626)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room5__from_810_to_288
        :parameters ()
        :precondition (and
            (= (belief_state) 810)
        )
        :effect (and
            (assign (belief_state) 288)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_810_to_289
        :parameters ()
        :precondition (and
            (= (belief_state) 810)
        )
        :effect (and
            (assign (belief_state) 289)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_811_to_951
        :parameters ()
        :precondition (and
            (= (belief_state) 811)
        )
        :effect (and
            (assign (belief_state) 951)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_811_to_251
        :parameters ()
        :precondition (and
            (= (belief_state) 811)
        )
        :effect (and
            (assign (belief_state) 251)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_811_to_118
        :parameters ()
        :precondition (and
            (= (belief_state) 811)
        )
        :effect (and
            (assign (belief_state) 118)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_811_to_627
        :parameters ()
        :precondition (and
            (= (belief_state) 811)
        )
        :effect (and
            (assign (belief_state) 627)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room5_room4__from_812_to_957
        :parameters ()
        :precondition (and
            (= (belief_state) 812)
        )
        :effect (and
            (assign (belief_state) 957)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room5__from_812_to_119
        :parameters ()
        :precondition (and
            (= (belief_state) 812)
        )
        :effect (and
            (assign (belief_state) 119)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_813_to_719
        :parameters ()
        :precondition (and
            (= (belief_state) 813)
        )
        :effect (and
            (assign (belief_state) 719)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_814_to_813
        :parameters ()
        :precondition (and
            (= (belief_state) 814)
        )
        :effect (and
            (assign (belief_state) 813)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_814_to_770
        :parameters ()
        :precondition (and
            (= (belief_state) 814)
        )
        :effect (and
            (assign (belief_state) 770)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_815_to_958
        :parameters ()
        :precondition (and
            (= (belief_state) 815)
        )
        :effect (and
            (assign (belief_state) 958)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_815_to_959
        :parameters ()
        :precondition (and
            (= (belief_state) 815)
        )
        :effect (and
            (assign (belief_state) 959)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_815_to_629
        :parameters ()
        :precondition (and
            (= (belief_state) 815)
        )
        :effect (and
            (assign (belief_state) 629)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_816_to_960
        :parameters ()
        :precondition (and
            (= (belief_state) 816)
        )
        :effect (and
            (assign (belief_state) 960)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_816_to_961
        :parameters ()
        :precondition (and
            (= (belief_state) 816)
        )
        :effect (and
            (assign (belief_state) 961)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_816_to_630
        :parameters ()
        :precondition (and
            (= (belief_state) 816)
        )
        :effect (and
            (assign (belief_state) 630)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_817_to_962
        :parameters ()
        :precondition (and
            (= (belief_state) 817)
        )
        :effect (and
            (assign (belief_state) 962)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_817_to_963
        :parameters ()
        :precondition (and
            (= (belief_state) 817)
        )
        :effect (and
            (assign (belief_state) 963)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_817_to_631
        :parameters ()
        :precondition (and
            (= (belief_state) 817)
        )
        :effect (and
            (assign (belief_state) 631)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_818_to_964
        :parameters ()
        :precondition (and
            (= (belief_state) 818)
        )
        :effect (and
            (assign (belief_state) 964)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_818_to_691
        :parameters ()
        :precondition (and
            (= (belief_state) 818)
        )
        :effect (and
            (assign (belief_state) 691)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_819_to_965
        :parameters ()
        :precondition (and
            (= (belief_state) 819)
        )
        :effect (and
            (assign (belief_state) 965)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_819_to_818
        :parameters ()
        :precondition (and
            (= (belief_state) 819)
        )
        :effect (and
            (assign (belief_state) 818)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_819_to_708
        :parameters ()
        :precondition (and
            (= (belief_state) 819)
        )
        :effect (and
            (assign (belief_state) 708)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_820_to_966
        :parameters ()
        :precondition (and
            (= (belief_state) 820)
        )
        :effect (and
            (assign (belief_state) 966)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_820_to_967
        :parameters ()
        :precondition (and
            (= (belief_state) 820)
        )
        :effect (and
            (assign (belief_state) 967)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_820_to_632
        :parameters ()
        :precondition (and
            (= (belief_state) 820)
        )
        :effect (and
            (assign (belief_state) 632)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_821_to_968
        :parameters ()
        :precondition (and
            (= (belief_state) 821)
        )
        :effect (and
            (assign (belief_state) 968)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_821_to_692
        :parameters ()
        :precondition (and
            (= (belief_state) 821)
        )
        :effect (and
            (assign (belief_state) 692)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_822_to_969
        :parameters ()
        :precondition (and
            (= (belief_state) 822)
        )
        :effect (and
            (assign (belief_state) 969)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_822_to_821
        :parameters ()
        :precondition (and
            (= (belief_state) 822)
        )
        :effect (and
            (assign (belief_state) 821)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_822_to_709
        :parameters ()
        :precondition (and
            (= (belief_state) 822)
        )
        :effect (and
            (assign (belief_state) 709)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_823_to_970
        :parameters ()
        :precondition (and
            (= (belief_state) 823)
        )
        :effect (and
            (assign (belief_state) 970)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_823_to_971
        :parameters ()
        :precondition (and
            (= (belief_state) 823)
        )
        :effect (and
            (assign (belief_state) 971)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_823_to_972
        :parameters ()
        :precondition (and
            (= (belief_state) 823)
        )
        :effect (and
            (assign (belief_state) 972)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_823_to_633
        :parameters ()
        :precondition (and
            (= (belief_state) 823)
        )
        :effect (and
            (assign (belief_state) 633)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_824_to_973
        :parameters ()
        :precondition (and
            (= (belief_state) 824)
        )
        :effect (and
            (assign (belief_state) 973)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_824_to_974
        :parameters ()
        :precondition (and
            (= (belief_state) 824)
        )
        :effect (and
            (assign (belief_state) 974)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_824_to_634
        :parameters ()
        :precondition (and
            (= (belief_state) 824)
        )
        :effect (and
            (assign (belief_state) 634)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_825_to_975
        :parameters ()
        :precondition (and
            (= (belief_state) 825)
        )
        :effect (and
            (assign (belief_state) 975)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_825_to_693
        :parameters ()
        :precondition (and
            (= (belief_state) 825)
        )
        :effect (and
            (assign (belief_state) 693)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_826_to_976
        :parameters ()
        :precondition (and
            (= (belief_state) 826)
        )
        :effect (and
            (assign (belief_state) 976)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_826_to_825
        :parameters ()
        :precondition (and
            (= (belief_state) 826)
        )
        :effect (and
            (assign (belief_state) 825)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_826_to_710
        :parameters ()
        :precondition (and
            (= (belief_state) 826)
        )
        :effect (and
            (assign (belief_state) 710)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_827_to_977
        :parameters ()
        :precondition (and
            (= (belief_state) 827)
        )
        :effect (and
            (assign (belief_state) 977)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_827_to_978
        :parameters ()
        :precondition (and
            (= (belief_state) 827)
        )
        :effect (and
            (assign (belief_state) 978)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_827_to_979
        :parameters ()
        :precondition (and
            (= (belief_state) 827)
        )
        :effect (and
            (assign (belief_state) 979)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_827_to_635
        :parameters ()
        :precondition (and
            (= (belief_state) 827)
        )
        :effect (and
            (assign (belief_state) 635)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_828_to_980
        :parameters ()
        :precondition (and
            (= (belief_state) 828)
        )
        :effect (and
            (assign (belief_state) 980)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_828_to_981
        :parameters ()
        :precondition (and
            (= (belief_state) 828)
        )
        :effect (and
            (assign (belief_state) 981)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_828_to_636
        :parameters ()
        :precondition (and
            (= (belief_state) 828)
        )
        :effect (and
            (assign (belief_state) 636)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_829_to_982
        :parameters ()
        :precondition (and
            (= (belief_state) 829)
        )
        :effect (and
            (assign (belief_state) 982)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_829_to_694
        :parameters ()
        :precondition (and
            (= (belief_state) 829)
        )
        :effect (and
            (assign (belief_state) 694)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_830_to_983
        :parameters ()
        :precondition (and
            (= (belief_state) 830)
        )
        :effect (and
            (assign (belief_state) 983)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_830_to_829
        :parameters ()
        :precondition (and
            (= (belief_state) 830)
        )
        :effect (and
            (assign (belief_state) 829)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_830_to_711
        :parameters ()
        :precondition (and
            (= (belief_state) 830)
        )
        :effect (and
            (assign (belief_state) 711)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_831_to_984
        :parameters ()
        :precondition (and
            (= (belief_state) 831)
        )
        :effect (and
            (assign (belief_state) 984)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_831_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 831)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_832_to_985
        :parameters ()
        :precondition (and
            (= (belief_state) 832)
        )
        :effect (and
            (assign (belief_state) 985)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_832_to_846
        :parameters ()
        :precondition (and
            (= (belief_state) 832)
        )
        :effect (and
            (assign (belief_state) 846)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_832_to_686
        :parameters ()
        :precondition (and
            (= (belief_state) 832)
        )
        :effect (and
            (assign (belief_state) 686)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_833_to_986
        :parameters ()
        :precondition (and
            (= (belief_state) 833)
        )
        :effect (and
            (assign (belief_state) 986)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_833_to_987
        :parameters ()
        :precondition (and
            (= (belief_state) 833)
        )
        :effect (and
            (assign (belief_state) 987)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_833_to_988
        :parameters ()
        :precondition (and
            (= (belief_state) 833)
        )
        :effect (and
            (assign (belief_state) 988)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_833_to_638
        :parameters ()
        :precondition (and
            (= (belief_state) 833)
        )
        :effect (and
            (assign (belief_state) 638)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_834_to_989
        :parameters ()
        :precondition (and
            (= (belief_state) 834)
        )
        :effect (and
            (assign (belief_state) 989)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_834_to_990
        :parameters ()
        :precondition (and
            (= (belief_state) 834)
        )
        :effect (and
            (assign (belief_state) 990)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_834_to_991
        :parameters ()
        :precondition (and
            (= (belief_state) 834)
        )
        :effect (and
            (assign (belief_state) 991)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_834_to_639
        :parameters ()
        :precondition (and
            (= (belief_state) 834)
        )
        :effect (and
            (assign (belief_state) 639)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_835_to_992
        :parameters ()
        :precondition (and
            (= (belief_state) 835)
        )
        :effect (and
            (assign (belief_state) 992)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_835_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 835)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_835_to_689
        :parameters ()
        :precondition (and
            (= (belief_state) 835)
        )
        :effect (and
            (assign (belief_state) 689)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_836_to_993
        :parameters ()
        :precondition (and
            (= (belief_state) 836)
        )
        :effect (and
            (assign (belief_state) 993)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_836_to_994
        :parameters ()
        :precondition (and
            (= (belief_state) 836)
        )
        :effect (and
            (assign (belief_state) 994)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_836_to_995
        :parameters ()
        :precondition (and
            (= (belief_state) 836)
        )
        :effect (and
            (assign (belief_state) 995)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_836_to_640
        :parameters ()
        :precondition (and
            (= (belief_state) 836)
        )
        :effect (and
            (assign (belief_state) 640)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_837_to_996
        :parameters ()
        :precondition (and
            (= (belief_state) 837)
        )
        :effect (and
            (assign (belief_state) 996)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_837_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 837)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_837_to_690
        :parameters ()
        :precondition (and
            (= (belief_state) 837)
        )
        :effect (and
            (assign (belief_state) 690)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_838_to_726
        :parameters ()
        :precondition (and
            (= (belief_state) 838)
        )
        :effect (and
            (assign (belief_state) 726)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_839_to_872
        :parameters ()
        :precondition (and
            (= (belief_state) 839)
        )
        :effect (and
            (assign (belief_state) 872)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_839_to_642
        :parameters ()
        :precondition (and
            (= (belief_state) 839)
        )
        :effect (and
            (assign (belief_state) 642)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_840_to_643
        :parameters ()
        :precondition (and
            (= (belief_state) 840)
        )
        :effect (and
            (assign (belief_state) 643)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_841_to_997
        :parameters ()
        :precondition (and
            (= (belief_state) 841)
        )
        :effect (and
            (assign (belief_state) 997)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_841_to_644
        :parameters ()
        :precondition (and
            (= (belief_state) 841)
        )
        :effect (and
            (assign (belief_state) 644)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_842_to_863
        :parameters ()
        :precondition (and
            (= (belief_state) 842)
        )
        :effect (and
            (assign (belief_state) 863)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_842_to_645
        :parameters ()
        :precondition (and
            (= (belief_state) 842)
        )
        :effect (and
            (assign (belief_state) 645)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_843_to_998
        :parameters ()
        :precondition (and
            (= (belief_state) 843)
        )
        :effect (and
            (assign (belief_state) 998)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_843_to_646
        :parameters ()
        :precondition (and
            (= (belief_state) 843)
        )
        :effect (and
            (assign (belief_state) 646)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_844_to_999
        :parameters ()
        :precondition (and
            (= (belief_state) 844)
        )
        :effect (and
            (assign (belief_state) 999)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_844_to_697
        :parameters ()
        :precondition (and
            (= (belief_state) 844)
        )
        :effect (and
            (assign (belief_state) 697)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_845_to_1000
        :parameters ()
        :precondition (and
            (= (belief_state) 845)
        )
        :effect (and
            (assign (belief_state) 1000)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_845_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 845)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_846_to_1001
        :parameters ()
        :precondition (and
            (= (belief_state) 846)
        )
        :effect (and
            (assign (belief_state) 1001)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_846_to_687
        :parameters ()
        :precondition (and
            (= (belief_state) 846)
        )
        :effect (and
            (assign (belief_state) 687)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_847_to_1002
        :parameters ()
        :precondition (and
            (= (belief_state) 847)
        )
        :effect (and
            (assign (belief_state) 1002)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_847_to_1003
        :parameters ()
        :precondition (and
            (= (belief_state) 847)
        )
        :effect (and
            (assign (belief_state) 1003)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_847_to_648
        :parameters ()
        :precondition (and
            (= (belief_state) 847)
        )
        :effect (and
            (assign (belief_state) 648)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_848_to_1004
        :parameters ()
        :precondition (and
            (= (belief_state) 848)
        )
        :effect (and
            (assign (belief_state) 1004)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_848_to_1005
        :parameters ()
        :precondition (and
            (= (belief_state) 848)
        )
        :effect (and
            (assign (belief_state) 1005)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_848_to_649
        :parameters ()
        :precondition (and
            (= (belief_state) 848)
        )
        :effect (and
            (assign (belief_state) 649)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_849_to_1006
        :parameters ()
        :precondition (and
            (= (belief_state) 849)
        )
        :effect (and
            (assign (belief_state) 1006)
            (assign (goal_reached) 't')
        )
    )

    (:action open_room3__from_849_to_1007
        :parameters ()
        :precondition (and
            (= (belief_state) 849)
        )
        :effect (and
            (assign (belief_state) 1007)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room3_room4__from_849_to_684
        :parameters ()
        :precondition (and
            (= (belief_state) 849)
        )
        :effect (and
            (assign (belief_state) 684)
            (assign (goal_reached) 't')
        )
    )

    (:action left_room3_room2__from_850_to_1008
        :parameters ()
        :precondition (and
            (= (belief_state) 850)
        )
        :effect (and
            (assign (belief_state) 1008)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_850_to_849
        :parameters ()
        :precondition (and
            (= (belief_state) 850)
        )
        :effect (and
            (assign (belief_state) 849)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room3_room4__from_850_to_650
        :parameters ()
        :precondition (and
            (= (belief_state) 850)
        )
        :effect (and
            (assign (belief_state) 650)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_851_to_651
        :parameters ()
        :precondition (and
            (= (belief_state) 851)
        )
        :effect (and
            (assign (belief_state) 651)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_851_to_777
        :parameters ()
        :precondition (and
            (= (belief_state) 851)
        )
        :effect (and
            (assign (belief_state) 777)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_852_to_730
        :parameters ()
        :precondition (and
            (= (belief_state) 852)
        )
        :effect (and
            (assign (belief_state) 730)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_853_to_852
        :parameters ()
        :precondition (and
            (= (belief_state) 853)
        )
        :effect (and
            (assign (belief_state) 852)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_853_to_778
        :parameters ()
        :precondition (and
            (= (belief_state) 853)
        )
        :effect (and
            (assign (belief_state) 778)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_854_to_731
        :parameters ()
        :precondition (and
            (= (belief_state) 854)
        )
        :effect (and
            (assign (belief_state) 731)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_855_to_840
        :parameters ()
        :precondition (and
            (= (belief_state) 855)
        )
        :effect (and
            (assign (belief_state) 840)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_855_to_840
        :parameters ()
        :precondition (and
            (= (belief_state) 855)
        )
        :effect (and
            (assign (belief_state) 840)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_855_to_660
        :parameters ()
        :precondition (and
            (= (belief_state) 855)
        )
        :effect (and
            (assign (belief_state) 660)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_856_to_1009
        :parameters ()
        :precondition (and
            (= (belief_state) 856)
        )
        :effect (and
            (assign (belief_state) 1009)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_856_to_1009
        :parameters ()
        :precondition (and
            (= (belief_state) 856)
        )
        :effect (and
            (assign (belief_state) 1009)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_856_to_661
        :parameters ()
        :precondition (and
            (= (belief_state) 856)
        )
        :effect (and
            (assign (belief_state) 661)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_857_to_1010
        :parameters ()
        :precondition (and
            (= (belief_state) 857)
        )
        :effect (and
            (assign (belief_state) 1010)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_857_to_700
        :parameters ()
        :precondition (and
            (= (belief_state) 857)
        )
        :effect (and
            (assign (belief_state) 700)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_858_to_733
        :parameters ()
        :precondition (and
            (= (belief_state) 858)
        )
        :effect (and
            (assign (belief_state) 733)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_859_to_858
        :parameters ()
        :precondition (and
            (= (belief_state) 859)
        )
        :effect (and
            (assign (belief_state) 858)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_859_to_779
        :parameters ()
        :precondition (and
            (= (belief_state) 859)
        )
        :effect (and
            (assign (belief_state) 779)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_860_to_918
        :parameters ()
        :precondition (and
            (= (belief_state) 860)
        )
        :effect (and
            (assign (belief_state) 918)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_860_to_1011
        :parameters ()
        :precondition (and
            (= (belief_state) 860)
        )
        :effect (and
            (assign (belief_state) 1011)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_860_to_663
        :parameters ()
        :precondition (and
            (= (belief_state) 860)
        )
        :effect (and
            (assign (belief_state) 663)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_861_to_1012
        :parameters ()
        :precondition (and
            (= (belief_state) 861)
        )
        :effect (and
            (assign (belief_state) 1012)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_861_to_1013
        :parameters ()
        :precondition (and
            (= (belief_state) 861)
        )
        :effect (and
            (assign (belief_state) 1013)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_861_to_664
        :parameters ()
        :precondition (and
            (= (belief_state) 861)
        )
        :effect (and
            (assign (belief_state) 664)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_862_to_840
        :parameters ()
        :precondition (and
            (= (belief_state) 862)
        )
        :effect (and
            (assign (belief_state) 840)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_862_to_780
        :parameters ()
        :precondition (and
            (= (belief_state) 862)
        )
        :effect (and
            (assign (belief_state) 780)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_863_to_734
        :parameters ()
        :precondition (and
            (= (belief_state) 863)
        )
        :effect (and
            (assign (belief_state) 734)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_864_to_736
        :parameters ()
        :precondition (and
            (= (belief_state) 864)
        )
        :effect (and
            (assign (belief_state) 736)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_865_to_864
        :parameters ()
        :precondition (and
            (= (belief_state) 865)
        )
        :effect (and
            (assign (belief_state) 864)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_865_to_781
        :parameters ()
        :precondition (and
            (= (belief_state) 865)
        )
        :effect (and
            (assign (belief_state) 781)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_866_to_737
        :parameters ()
        :precondition (and
            (= (belief_state) 866)
        )
        :effect (and
            (assign (belief_state) 737)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_867_to_866
        :parameters ()
        :precondition (and
            (= (belief_state) 867)
        )
        :effect (and
            (assign (belief_state) 866)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_867_to_782
        :parameters ()
        :precondition (and
            (= (belief_state) 867)
        )
        :effect (and
            (assign (belief_state) 782)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_868_to_738
        :parameters ()
        :precondition (and
            (= (belief_state) 868)
        )
        :effect (and
            (assign (belief_state) 738)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_869_to_868
        :parameters ()
        :precondition (and
            (= (belief_state) 869)
        )
        :effect (and
            (assign (belief_state) 868)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_869_to_783
        :parameters ()
        :precondition (and
            (= (belief_state) 869)
        )
        :effect (and
            (assign (belief_state) 783)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_870_to_1014
        :parameters ()
        :precondition (and
            (= (belief_state) 870)
        )
        :effect (and
            (assign (belief_state) 1014)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_870_to_1015
        :parameters ()
        :precondition (and
            (= (belief_state) 870)
        )
        :effect (and
            (assign (belief_state) 1015)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_870_to_678
        :parameters ()
        :precondition (and
            (= (belief_state) 870)
        )
        :effect (and
            (assign (belief_state) 678)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_871_to_1016
        :parameters ()
        :precondition (and
            (= (belief_state) 871)
        )
        :effect (and
            (assign (belief_state) 1016)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_871_to_1017
        :parameters ()
        :precondition (and
            (= (belief_state) 871)
        )
        :effect (and
            (assign (belief_state) 1017)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_871_to_679
        :parameters ()
        :precondition (and
            (= (belief_state) 871)
        )
        :effect (and
            (assign (belief_state) 679)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_872_to_739
        :parameters ()
        :precondition (and
            (= (belief_state) 872)
        )
        :effect (and
            (assign (belief_state) 739)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_873_to_1007
        :parameters ()
        :precondition (and
            (= (belief_state) 873)
        )
        :effect (and
            (assign (belief_state) 1007)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room4_room5__from_873_to_688
        :parameters ()
        :precondition (and
            (= (belief_state) 873)
        )
        :effect (and
            (assign (belief_state) 688)
            (assign (goal_reached) 't')
        )
    )

    (:action left_room3_room2__from_874_to_971
        :parameters ()
        :precondition (and
            (= (belief_state) 874)
        )
        :effect (and
            (assign (belief_state) 971)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_874_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 874)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_874_to_703
        :parameters ()
        :precondition (and
            (= (belief_state) 874)
        )
        :effect (and
            (assign (belief_state) 703)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_875_to_978
        :parameters ()
        :precondition (and
            (= (belief_state) 875)
        )
        :effect (and
            (assign (belief_state) 978)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_875_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 875)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_875_to_704
        :parameters ()
        :precondition (and
            (= (belief_state) 875)
        )
        :effect (and
            (assign (belief_state) 704)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_876_to_987
        :parameters ()
        :precondition (and
            (= (belief_state) 876)
        )
        :effect (and
            (assign (belief_state) 987)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_876_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 876)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_876_to_705
        :parameters ()
        :precondition (and
            (= (belief_state) 876)
        )
        :effect (and
            (assign (belief_state) 705)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_877_to_990
        :parameters ()
        :precondition (and
            (= (belief_state) 877)
        )
        :effect (and
            (assign (belief_state) 990)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_877_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 877)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_877_to_1018
        :parameters ()
        :precondition (and
            (= (belief_state) 877)
        )
        :effect (and
            (assign (belief_state) 1018)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_877_to_695
        :parameters ()
        :precondition (and
            (= (belief_state) 877)
        )
        :effect (and
            (assign (belief_state) 695)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_878_to_994
        :parameters ()
        :precondition (and
            (= (belief_state) 878)
        )
        :effect (and
            (assign (belief_state) 994)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_878_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 878)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_878_to_1019
        :parameters ()
        :precondition (and
            (= (belief_state) 878)
        )
        :effect (and
            (assign (belief_state) 1019)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_878_to_696
        :parameters ()
        :precondition (and
            (= (belief_state) 878)
        )
        :effect (and
            (assign (belief_state) 696)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_879_to_1003
        :parameters ()
        :precondition (and
            (= (belief_state) 879)
        )
        :effect (and
            (assign (belief_state) 1003)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_879_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 879)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_879_to_698
        :parameters ()
        :precondition (and
            (= (belief_state) 879)
        )
        :effect (and
            (assign (belief_state) 698)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_880_to_1005
        :parameters ()
        :precondition (and
            (= (belief_state) 880)
        )
        :effect (and
            (assign (belief_state) 1005)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_880_to_849
        :parameters ()
        :precondition (and
            (= (belief_state) 880)
        )
        :effect (and
            (assign (belief_state) 849)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room3_room4__from_880_to_699
        :parameters ()
        :precondition (and
            (= (belief_state) 880)
        )
        :effect (and
            (assign (belief_state) 699)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_881_to_1020
        :parameters ()
        :precondition (and
            (= (belief_state) 881)
        )
        :effect (and
            (assign (belief_state) 1020)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_881_to_701
        :parameters ()
        :precondition (and
            (= (belief_state) 881)
        )
        :effect (and
            (assign (belief_state) 701)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_882_to_1018
        :parameters ()
        :precondition (and
            (= (belief_state) 882)
        )
        :effect (and
            (assign (belief_state) 1018)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_882_to_706
        :parameters ()
        :precondition (and
            (= (belief_state) 882)
        )
        :effect (and
            (assign (belief_state) 706)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_883_to_1019
        :parameters ()
        :precondition (and
            (= (belief_state) 883)
        )
        :effect (and
            (assign (belief_state) 1019)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_883_to_882
        :parameters ()
        :precondition (and
            (= (belief_state) 883)
        )
        :effect (and
            (assign (belief_state) 882)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_883_to_707
        :parameters ()
        :precondition (and
            (= (belief_state) 883)
        )
        :effect (and
            (assign (belief_state) 707)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_884_to_972
        :parameters ()
        :precondition (and
            (= (belief_state) 884)
        )
        :effect (and
            (assign (belief_state) 972)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_884_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 884)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_884_to_714
        :parameters ()
        :precondition (and
            (= (belief_state) 884)
        )
        :effect (and
            (assign (belief_state) 714)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_885_to_979
        :parameters ()
        :precondition (and
            (= (belief_state) 885)
        )
        :effect (and
            (assign (belief_state) 979)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_885_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 885)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_885_to_715
        :parameters ()
        :precondition (and
            (= (belief_state) 885)
        )
        :effect (and
            (assign (belief_state) 715)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_886_to_988
        :parameters ()
        :precondition (and
            (= (belief_state) 886)
        )
        :effect (and
            (assign (belief_state) 988)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_886_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 886)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_886_to_716
        :parameters ()
        :precondition (and
            (= (belief_state) 886)
        )
        :effect (and
            (assign (belief_state) 716)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_887_to_991
        :parameters ()
        :precondition (and
            (= (belief_state) 887)
        )
        :effect (and
            (assign (belief_state) 991)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_887_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 887)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_887_to_1021
        :parameters ()
        :precondition (and
            (= (belief_state) 887)
        )
        :effect (and
            (assign (belief_state) 1021)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_887_to_712
        :parameters ()
        :precondition (and
            (= (belief_state) 887)
        )
        :effect (and
            (assign (belief_state) 712)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_888_to_995
        :parameters ()
        :precondition (and
            (= (belief_state) 888)
        )
        :effect (and
            (assign (belief_state) 995)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_888_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 888)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_888_to_1022
        :parameters ()
        :precondition (and
            (= (belief_state) 888)
        )
        :effect (and
            (assign (belief_state) 1022)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_888_to_713
        :parameters ()
        :precondition (and
            (= (belief_state) 888)
        )
        :effect (and
            (assign (belief_state) 713)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_889_to_1021
        :parameters ()
        :precondition (and
            (= (belief_state) 889)
        )
        :effect (and
            (assign (belief_state) 1021)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_889_to_717
        :parameters ()
        :precondition (and
            (= (belief_state) 889)
        )
        :effect (and
            (assign (belief_state) 717)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_890_to_1022
        :parameters ()
        :precondition (and
            (= (belief_state) 890)
        )
        :effect (and
            (assign (belief_state) 1022)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_890_to_889
        :parameters ()
        :precondition (and
            (= (belief_state) 890)
        )
        :effect (and
            (assign (belief_state) 889)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_890_to_718
        :parameters ()
        :precondition (and
            (= (belief_state) 890)
        )
        :effect (and
            (assign (belief_state) 718)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_891_to_958
        :parameters ()
        :precondition (and
            (= (belief_state) 891)
        )
        :effect (and
            (assign (belief_state) 958)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_891_to_746
        :parameters ()
        :precondition (and
            (= (belief_state) 891)
        )
        :effect (and
            (assign (belief_state) 746)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_892_to_960
        :parameters ()
        :precondition (and
            (= (belief_state) 892)
        )
        :effect (and
            (assign (belief_state) 960)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_892_to_891
        :parameters ()
        :precondition (and
            (= (belief_state) 892)
        )
        :effect (and
            (assign (belief_state) 891)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_892_to_758
        :parameters ()
        :precondition (and
            (= (belief_state) 892)
        )
        :effect (and
            (assign (belief_state) 758)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_893_to_962
        :parameters ()
        :precondition (and
            (= (belief_state) 893)
        )
        :effect (and
            (assign (belief_state) 962)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_893_to_1023
        :parameters ()
        :precondition (and
            (= (belief_state) 893)
        )
        :effect (and
            (assign (belief_state) 1023)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_893_to_1024
        :parameters ()
        :precondition (and
            (= (belief_state) 893)
        )
        :effect (and
            (assign (belief_state) 1024)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_893_to_720
        :parameters ()
        :precondition (and
            (= (belief_state) 893)
        )
        :effect (and
            (assign (belief_state) 720)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_894_to_966
        :parameters ()
        :precondition (and
            (= (belief_state) 894)
        )
        :effect (and
            (assign (belief_state) 966)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_894_to_531
        :parameters ()
        :precondition (and
            (= (belief_state) 894)
        )
        :effect (and
            (assign (belief_state) 531)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_894_to_1025
        :parameters ()
        :precondition (and
            (= (belief_state) 894)
        )
        :effect (and
            (assign (belief_state) 1025)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_894_to_721
        :parameters ()
        :precondition (and
            (= (belief_state) 894)
        )
        :effect (and
            (assign (belief_state) 721)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_895_to_1026
        :parameters ()
        :precondition (and
            (= (belief_state) 895)
        )
        :effect (and
            (assign (belief_state) 1026)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_895_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 895)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_895_to_741
        :parameters ()
        :precondition (and
            (= (belief_state) 895)
        )
        :effect (and
            (assign (belief_state) 741)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_896_to_973
        :parameters ()
        :precondition (and
            (= (belief_state) 896)
        )
        :effect (and
            (assign (belief_state) 973)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_896_to_1027
        :parameters ()
        :precondition (and
            (= (belief_state) 896)
        )
        :effect (and
            (assign (belief_state) 1027)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_896_to_1028
        :parameters ()
        :precondition (and
            (= (belief_state) 896)
        )
        :effect (and
            (assign (belief_state) 1028)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_896_to_722
        :parameters ()
        :precondition (and
            (= (belief_state) 896)
        )
        :effect (and
            (assign (belief_state) 722)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_897_to_1029
        :parameters ()
        :precondition (and
            (= (belief_state) 897)
        )
        :effect (and
            (assign (belief_state) 1029)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_897_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 897)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_897_to_742
        :parameters ()
        :precondition (and
            (= (belief_state) 897)
        )
        :effect (and
            (assign (belief_state) 742)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_898_to_980
        :parameters ()
        :precondition (and
            (= (belief_state) 898)
        )
        :effect (and
            (assign (belief_state) 980)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_898_to_1030
        :parameters ()
        :precondition (and
            (= (belief_state) 898)
        )
        :effect (and
            (assign (belief_state) 1030)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_898_to_1031
        :parameters ()
        :precondition (and
            (= (belief_state) 898)
        )
        :effect (and
            (assign (belief_state) 1031)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_898_to_723
        :parameters ()
        :precondition (and
            (= (belief_state) 898)
        )
        :effect (and
            (assign (belief_state) 723)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_899_to_1032
        :parameters ()
        :precondition (and
            (= (belief_state) 899)
        )
        :effect (and
            (assign (belief_state) 1032)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_899_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 899)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_899_to_743
        :parameters ()
        :precondition (and
            (= (belief_state) 899)
        )
        :effect (and
            (assign (belief_state) 743)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_900_to_1033
        :parameters ()
        :precondition (and
            (= (belief_state) 900)
        )
        :effect (and
            (assign (belief_state) 1033)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_900_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 900)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_900_to_1034
        :parameters ()
        :precondition (and
            (= (belief_state) 900)
        )
        :effect (and
            (assign (belief_state) 1034)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_900_to_724
        :parameters ()
        :precondition (and
            (= (belief_state) 900)
        )
        :effect (and
            (assign (belief_state) 724)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_901_to_1035
        :parameters ()
        :precondition (and
            (= (belief_state) 901)
        )
        :effect (and
            (assign (belief_state) 1035)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_901_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 901)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_901_to_1036
        :parameters ()
        :precondition (and
            (= (belief_state) 901)
        )
        :effect (and
            (assign (belief_state) 1036)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_901_to_725
        :parameters ()
        :precondition (and
            (= (belief_state) 901)
        )
        :effect (and
            (assign (belief_state) 725)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_902_to_998
        :parameters ()
        :precondition (and
            (= (belief_state) 902)
        )
        :effect (and
            (assign (belief_state) 998)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_902_to_1037
        :parameters ()
        :precondition (and
            (= (belief_state) 902)
        )
        :effect (and
            (assign (belief_state) 1037)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_902_to_727
        :parameters ()
        :precondition (and
            (= (belief_state) 902)
        )
        :effect (and
            (assign (belief_state) 727)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_903_to_1038
        :parameters ()
        :precondition (and
            (= (belief_state) 903)
        )
        :effect (and
            (assign (belief_state) 1038)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_903_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 903)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_903_to_728
        :parameters ()
        :precondition (and
            (= (belief_state) 903)
        )
        :effect (and
            (assign (belief_state) 728)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_904_to_1039
        :parameters ()
        :precondition (and
            (= (belief_state) 904)
        )
        :effect (and
            (assign (belief_state) 1039)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_904_to_849
        :parameters ()
        :precondition (and
            (= (belief_state) 904)
        )
        :effect (and
            (assign (belief_state) 849)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room3_room4__from_904_to_729
        :parameters ()
        :precondition (and
            (= (belief_state) 904)
        )
        :effect (and
            (assign (belief_state) 729)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_905_to_1040
        :parameters ()
        :precondition (and
            (= (belief_state) 905)
        )
        :effect (and
            (assign (belief_state) 1040)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_905_to_735
        :parameters ()
        :precondition (and
            (= (belief_state) 905)
        )
        :effect (and
            (assign (belief_state) 735)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_906_to_1009
        :parameters ()
        :precondition (and
            (= (belief_state) 906)
        )
        :effect (and
            (assign (belief_state) 1009)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_906_to_841
        :parameters ()
        :precondition (and
            (= (belief_state) 906)
        )
        :effect (and
            (assign (belief_state) 841)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_906_to_841
        :parameters ()
        :precondition (and
            (= (belief_state) 906)
        )
        :effect (and
            (assign (belief_state) 841)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_906_to_732
        :parameters ()
        :precondition (and
            (= (belief_state) 906)
        )
        :effect (and
            (assign (belief_state) 732)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_907_to_1012
        :parameters ()
        :precondition (and
            (= (belief_state) 907)
        )
        :effect (and
            (assign (belief_state) 1012)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_907_to_751
        :parameters ()
        :precondition (and
            (= (belief_state) 907)
        )
        :effect (and
            (assign (belief_state) 751)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_907_to_762
        :parameters ()
        :precondition (and
            (= (belief_state) 907)
        )
        :effect (and
            (assign (belief_state) 762)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_908_to_1014
        :parameters ()
        :precondition (and
            (= (belief_state) 908)
        )
        :effect (and
            (assign (belief_state) 1014)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_908_to_752
        :parameters ()
        :precondition (and
            (= (belief_state) 908)
        )
        :effect (and
            (assign (belief_state) 752)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_909_to_1016
        :parameters ()
        :precondition (and
            (= (belief_state) 909)
        )
        :effect (and
            (assign (belief_state) 1016)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_909_to_908
        :parameters ()
        :precondition (and
            (= (belief_state) 909)
        )
        :effect (and
            (assign (belief_state) 908)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_909_to_764
        :parameters ()
        :precondition (and
            (= (belief_state) 909)
        )
        :effect (and
            (assign (belief_state) 764)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_910_to_1034
        :parameters ()
        :precondition (and
            (= (belief_state) 910)
        )
        :effect (and
            (assign (belief_state) 1034)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_910_to_744
        :parameters ()
        :precondition (and
            (= (belief_state) 910)
        )
        :effect (and
            (assign (belief_state) 744)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_911_to_1036
        :parameters ()
        :precondition (and
            (= (belief_state) 911)
        )
        :effect (and
            (assign (belief_state) 1036)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_911_to_910
        :parameters ()
        :precondition (and
            (= (belief_state) 911)
        )
        :effect (and
            (assign (belief_state) 910)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_911_to_745
        :parameters ()
        :precondition (and
            (= (belief_state) 911)
        )
        :effect (and
            (assign (belief_state) 745)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_912_to_1023
        :parameters ()
        :precondition (and
            (= (belief_state) 912)
        )
        :effect (and
            (assign (belief_state) 1023)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_912_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 912)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_912_to_756
        :parameters ()
        :precondition (and
            (= (belief_state) 912)
        )
        :effect (and
            (assign (belief_state) 756)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_913_to_1027
        :parameters ()
        :precondition (and
            (= (belief_state) 913)
        )
        :effect (and
            (assign (belief_state) 1027)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_913_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 913)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_913_to_560
        :parameters ()
        :precondition (and
            (= (belief_state) 913)
        )
        :effect (and
            (assign (belief_state) 560)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_913_to_747
        :parameters ()
        :precondition (and
            (= (belief_state) 913)
        )
        :effect (and
            (assign (belief_state) 747)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_914_to_1030
        :parameters ()
        :precondition (and
            (= (belief_state) 914)
        )
        :effect (and
            (assign (belief_state) 1030)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_914_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 914)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_914_to_1041
        :parameters ()
        :precondition (and
            (= (belief_state) 914)
        )
        :effect (and
            (assign (belief_state) 1041)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_914_to_748
        :parameters ()
        :precondition (and
            (= (belief_state) 914)
        )
        :effect (and
            (assign (belief_state) 748)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_915_to_1042
        :parameters ()
        :precondition (and
            (= (belief_state) 915)
        )
        :effect (and
            (assign (belief_state) 1042)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_915_to_468
        :parameters ()
        :precondition (and
            (= (belief_state) 915)
        )
        :effect (and
            (assign (belief_state) 468)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_915_to_753
        :parameters ()
        :precondition (and
            (= (belief_state) 915)
        )
        :effect (and
            (assign (belief_state) 753)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_916_to_1037
        :parameters ()
        :precondition (and
            (= (belief_state) 916)
        )
        :effect (and
            (assign (belief_state) 1037)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_916_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 916)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_916_to_749
        :parameters ()
        :precondition (and
            (= (belief_state) 916)
        )
        :effect (and
            (assign (belief_state) 749)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_917_to_1043
        :parameters ()
        :precondition (and
            (= (belief_state) 917)
        )
        :effect (and
            (assign (belief_state) 1043)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_917_to_684
        :parameters ()
        :precondition (and
            (= (belief_state) 917)
        )
        :effect (and
            (assign (belief_state) 684)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room4_room5__from_917_to_750
        :parameters ()
        :precondition (and
            (= (belief_state) 917)
        )
        :effect (and
            (assign (belief_state) 750)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_918_to_751
        :parameters ()
        :precondition (and
            (= (belief_state) 918)
        )
        :effect (and
            (assign (belief_state) 751)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_919_to_1041
        :parameters ()
        :precondition (and
            (= (belief_state) 919)
        )
        :effect (and
            (assign (belief_state) 1041)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_919_to_469
        :parameters ()
        :precondition (and
            (= (belief_state) 919)
        )
        :effect (and
            (assign (belief_state) 469)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_919_to_749
        :parameters ()
        :precondition (and
            (= (belief_state) 919)
        )
        :effect (and
            (assign (belief_state) 749)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_919_to_757
        :parameters ()
        :precondition (and
            (= (belief_state) 919)
        )
        :effect (and
            (assign (belief_state) 757)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_920_to_1024
        :parameters ()
        :precondition (and
            (= (belief_state) 920)
        )
        :effect (and
            (assign (belief_state) 1024)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_920_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 920)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_920_to_768
        :parameters ()
        :precondition (and
            (= (belief_state) 920)
        )
        :effect (and
            (assign (belief_state) 768)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_921_to_1025
        :parameters ()
        :precondition (and
            (= (belief_state) 921)
        )
        :effect (and
            (assign (belief_state) 1025)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_921_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 921)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_921_to_571
        :parameters ()
        :precondition (and
            (= (belief_state) 921)
        )
        :effect (and
            (assign (belief_state) 571)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_921_to_759
        :parameters ()
        :precondition (and
            (= (belief_state) 921)
        )
        :effect (and
            (assign (belief_state) 759)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_922_to_1028
        :parameters ()
        :precondition (and
            (= (belief_state) 922)
        )
        :effect (and
            (assign (belief_state) 1028)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_922_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 922)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_922_to_528
        :parameters ()
        :precondition (and
            (= (belief_state) 922)
        )
        :effect (and
            (assign (belief_state) 528)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_922_to_760
        :parameters ()
        :precondition (and
            (= (belief_state) 922)
        )
        :effect (and
            (assign (belief_state) 760)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_923_to_1031
        :parameters ()
        :precondition (and
            (= (belief_state) 923)
        )
        :effect (and
            (assign (belief_state) 1031)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_923_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 923)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_923_to_1044
        :parameters ()
        :precondition (and
            (= (belief_state) 923)
        )
        :effect (and
            (assign (belief_state) 1044)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_923_to_761
        :parameters ()
        :precondition (and
            (= (belief_state) 923)
        )
        :effect (and
            (assign (belief_state) 761)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_924_to_1045
        :parameters ()
        :precondition (and
            (= (belief_state) 924)
        )
        :effect (and
            (assign (belief_state) 1045)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_924_to_763
        :parameters ()
        :precondition (and
            (= (belief_state) 924)
        )
        :effect (and
            (assign (belief_state) 763)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_925_to_1046
        :parameters ()
        :precondition (and
            (= (belief_state) 925)
        )
        :effect (and
            (assign (belief_state) 1046)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_925_to_924
        :parameters ()
        :precondition (and
            (= (belief_state) 925)
        )
        :effect (and
            (assign (belief_state) 924)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_925_to_765
        :parameters ()
        :precondition (and
            (= (belief_state) 925)
        )
        :effect (and
            (assign (belief_state) 765)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_926_to_1044
        :parameters ()
        :precondition (and
            (= (belief_state) 926)
        )
        :effect (and
            (assign (belief_state) 1044)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_926_to_728
        :parameters ()
        :precondition (and
            (= (belief_state) 926)
        )
        :effect (and
            (assign (belief_state) 728)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_926_to_529
        :parameters ()
        :precondition (and
            (= (belief_state) 926)
        )
        :effect (and
            (assign (belief_state) 529)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_926_to_769
        :parameters ()
        :precondition (and
            (= (belief_state) 926)
        )
        :effect (and
            (assign (belief_state) 769)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_927_to_959
        :parameters ()
        :precondition (and
            (= (belief_state) 927)
        )
        :effect (and
            (assign (belief_state) 959)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_927_to_789
        :parameters ()
        :precondition (and
            (= (belief_state) 927)
        )
        :effect (and
            (assign (belief_state) 789)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_928_to_961
        :parameters ()
        :precondition (and
            (= (belief_state) 928)
        )
        :effect (and
            (assign (belief_state) 961)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_928_to_927
        :parameters ()
        :precondition (and
            (= (belief_state) 928)
        )
        :effect (and
            (assign (belief_state) 927)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_928_to_801
        :parameters ()
        :precondition (and
            (= (belief_state) 928)
        )
        :effect (and
            (assign (belief_state) 801)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_929_to_963
        :parameters ()
        :precondition (and
            (= (belief_state) 929)
        )
        :effect (and
            (assign (belief_state) 963)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_929_to_1047
        :parameters ()
        :precondition (and
            (= (belief_state) 929)
        )
        :effect (and
            (assign (belief_state) 1047)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_929_to_1048
        :parameters ()
        :precondition (and
            (= (belief_state) 929)
        )
        :effect (and
            (assign (belief_state) 1048)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_929_to_771
        :parameters ()
        :precondition (and
            (= (belief_state) 929)
        )
        :effect (and
            (assign (belief_state) 771)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_930_to_967
        :parameters ()
        :precondition (and
            (= (belief_state) 930)
        )
        :effect (and
            (assign (belief_state) 967)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_930_to_1049
        :parameters ()
        :precondition (and
            (= (belief_state) 930)
        )
        :effect (and
            (assign (belief_state) 1049)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_930_to_1050
        :parameters ()
        :precondition (and
            (= (belief_state) 930)
        )
        :effect (and
            (assign (belief_state) 1050)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_930_to_772
        :parameters ()
        :precondition (and
            (= (belief_state) 930)
        )
        :effect (and
            (assign (belief_state) 772)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_931_to_1051
        :parameters ()
        :precondition (and
            (= (belief_state) 931)
        )
        :effect (and
            (assign (belief_state) 1051)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_931_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 931)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_931_to_784
        :parameters ()
        :precondition (and
            (= (belief_state) 931)
        )
        :effect (and
            (assign (belief_state) 784)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_932_to_974
        :parameters ()
        :precondition (and
            (= (belief_state) 932)
        )
        :effect (and
            (assign (belief_state) 974)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_932_to_1052
        :parameters ()
        :precondition (and
            (= (belief_state) 932)
        )
        :effect (and
            (assign (belief_state) 1052)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_932_to_1053
        :parameters ()
        :precondition (and
            (= (belief_state) 932)
        )
        :effect (and
            (assign (belief_state) 1053)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_932_to_773
        :parameters ()
        :precondition (and
            (= (belief_state) 932)
        )
        :effect (and
            (assign (belief_state) 773)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_933_to_1054
        :parameters ()
        :precondition (and
            (= (belief_state) 933)
        )
        :effect (and
            (assign (belief_state) 1054)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_933_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 933)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_933_to_785
        :parameters ()
        :precondition (and
            (= (belief_state) 933)
        )
        :effect (and
            (assign (belief_state) 785)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_934_to_981
        :parameters ()
        :precondition (and
            (= (belief_state) 934)
        )
        :effect (and
            (assign (belief_state) 981)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_934_to_1055
        :parameters ()
        :precondition (and
            (= (belief_state) 934)
        )
        :effect (and
            (assign (belief_state) 1055)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_934_to_1056
        :parameters ()
        :precondition (and
            (= (belief_state) 934)
        )
        :effect (and
            (assign (belief_state) 1056)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_934_to_774
        :parameters ()
        :precondition (and
            (= (belief_state) 934)
        )
        :effect (and
            (assign (belief_state) 774)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_935_to_1057
        :parameters ()
        :precondition (and
            (= (belief_state) 935)
        )
        :effect (and
            (assign (belief_state) 1057)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_935_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 935)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_935_to_786
        :parameters ()
        :precondition (and
            (= (belief_state) 935)
        )
        :effect (and
            (assign (belief_state) 786)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_936_to_1058
        :parameters ()
        :precondition (and
            (= (belief_state) 936)
        )
        :effect (and
            (assign (belief_state) 1058)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_936_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 936)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_936_to_1059
        :parameters ()
        :precondition (and
            (= (belief_state) 936)
        )
        :effect (and
            (assign (belief_state) 1059)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_936_to_775
        :parameters ()
        :precondition (and
            (= (belief_state) 936)
        )
        :effect (and
            (assign (belief_state) 775)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_937_to_1060
        :parameters ()
        :precondition (and
            (= (belief_state) 937)
        )
        :effect (and
            (assign (belief_state) 1060)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_937_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 937)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_937_to_1061
        :parameters ()
        :precondition (and
            (= (belief_state) 937)
        )
        :effect (and
            (assign (belief_state) 1061)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_937_to_776
        :parameters ()
        :precondition (and
            (= (belief_state) 937)
        )
        :effect (and
            (assign (belief_state) 776)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_938_to_1011
        :parameters ()
        :precondition (and
            (= (belief_state) 938)
        )
        :effect (and
            (assign (belief_state) 1011)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_938_to_793
        :parameters ()
        :precondition (and
            (= (belief_state) 938)
        )
        :effect (and
            (assign (belief_state) 793)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_939_to_1013
        :parameters ()
        :precondition (and
            (= (belief_state) 939)
        )
        :effect (and
            (assign (belief_state) 1013)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_939_to_938
        :parameters ()
        :precondition (and
            (= (belief_state) 939)
        )
        :effect (and
            (assign (belief_state) 938)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_939_to_805
        :parameters ()
        :precondition (and
            (= (belief_state) 939)
        )
        :effect (and
            (assign (belief_state) 805)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_940_to_1015
        :parameters ()
        :precondition (and
            (= (belief_state) 940)
        )
        :effect (and
            (assign (belief_state) 1015)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_940_to_795
        :parameters ()
        :precondition (and
            (= (belief_state) 940)
        )
        :effect (and
            (assign (belief_state) 795)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_941_to_1017
        :parameters ()
        :precondition (and
            (= (belief_state) 941)
        )
        :effect (and
            (assign (belief_state) 1017)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_941_to_940
        :parameters ()
        :precondition (and
            (= (belief_state) 941)
        )
        :effect (and
            (assign (belief_state) 940)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_941_to_807
        :parameters ()
        :precondition (and
            (= (belief_state) 941)
        )
        :effect (and
            (assign (belief_state) 807)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_942_to_1059
        :parameters ()
        :precondition (and
            (= (belief_state) 942)
        )
        :effect (and
            (assign (belief_state) 1059)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_942_to_787
        :parameters ()
        :precondition (and
            (= (belief_state) 942)
        )
        :effect (and
            (assign (belief_state) 787)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_943_to_1061
        :parameters ()
        :precondition (and
            (= (belief_state) 943)
        )
        :effect (and
            (assign (belief_state) 1061)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_943_to_942
        :parameters ()
        :precondition (and
            (= (belief_state) 943)
        )
        :effect (and
            (assign (belief_state) 942)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_943_to_788
        :parameters ()
        :precondition (and
            (= (belief_state) 943)
        )
        :effect (and
            (assign (belief_state) 788)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_944_to_1047
        :parameters ()
        :precondition (and
            (= (belief_state) 944)
        )
        :effect (and
            (assign (belief_state) 1047)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_944_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 944)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_944_to_799
        :parameters ()
        :precondition (and
            (= (belief_state) 944)
        )
        :effect (and
            (assign (belief_state) 799)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_945_to_1049
        :parameters ()
        :precondition (and
            (= (belief_state) 945)
        )
        :effect (and
            (assign (belief_state) 1049)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_945_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 945)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_945_to_606
        :parameters ()
        :precondition (and
            (= (belief_state) 945)
        )
        :effect (and
            (assign (belief_state) 606)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_945_to_790
        :parameters ()
        :precondition (and
            (= (belief_state) 945)
        )
        :effect (and
            (assign (belief_state) 790)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_946_to_1052
        :parameters ()
        :precondition (and
            (= (belief_state) 946)
        )
        :effect (and
            (assign (belief_state) 1052)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_946_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 946)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_946_to_492
        :parameters ()
        :precondition (and
            (= (belief_state) 946)
        )
        :effect (and
            (assign (belief_state) 492)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_946_to_791
        :parameters ()
        :precondition (and
            (= (belief_state) 946)
        )
        :effect (and
            (assign (belief_state) 791)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_947_to_1055
        :parameters ()
        :precondition (and
            (= (belief_state) 947)
        )
        :effect (and
            (assign (belief_state) 1055)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_947_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 947)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_947_to_1062
        :parameters ()
        :precondition (and
            (= (belief_state) 947)
        )
        :effect (and
            (assign (belief_state) 1062)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_947_to_792
        :parameters ()
        :precondition (and
            (= (belief_state) 947)
        )
        :effect (and
            (assign (belief_state) 792)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_948_to_1063
        :parameters ()
        :precondition (and
            (= (belief_state) 948)
        )
        :effect (and
            (assign (belief_state) 1063)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_948_to_794
        :parameters ()
        :precondition (and
            (= (belief_state) 948)
        )
        :effect (and
            (assign (belief_state) 794)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_949_to_1064
        :parameters ()
        :precondition (and
            (= (belief_state) 949)
        )
        :effect (and
            (assign (belief_state) 1064)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_949_to_948
        :parameters ()
        :precondition (and
            (= (belief_state) 949)
        )
        :effect (and
            (assign (belief_state) 948)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_949_to_796
        :parameters ()
        :precondition (and
            (= (belief_state) 949)
        )
        :effect (and
            (assign (belief_state) 796)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_950_to_1062
        :parameters ()
        :precondition (and
            (= (belief_state) 950)
        )
        :effect (and
            (assign (belief_state) 1062)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_950_to_698
        :parameters ()
        :precondition (and
            (= (belief_state) 950)
        )
        :effect (and
            (assign (belief_state) 698)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_950_to_493
        :parameters ()
        :precondition (and
            (= (belief_state) 950)
        )
        :effect (and
            (assign (belief_state) 493)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_950_to_800
        :parameters ()
        :precondition (and
            (= (belief_state) 950)
        )
        :effect (and
            (assign (belief_state) 800)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_951_to_1048
        :parameters ()
        :precondition (and
            (= (belief_state) 951)
        )
        :effect (and
            (assign (belief_state) 1048)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_951_to_438
        :parameters ()
        :precondition (and
            (= (belief_state) 951)
        )
        :effect (and
            (assign (belief_state) 438)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_951_to_811
        :parameters ()
        :precondition (and
            (= (belief_state) 951)
        )
        :effect (and
            (assign (belief_state) 811)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_952_to_1050
        :parameters ()
        :precondition (and
            (= (belief_state) 952)
        )
        :effect (and
            (assign (belief_state) 1050)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_952_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 952)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_952_to_439
        :parameters ()
        :precondition (and
            (= (belief_state) 952)
        )
        :effect (and
            (assign (belief_state) 439)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_952_to_802
        :parameters ()
        :precondition (and
            (= (belief_state) 952)
        )
        :effect (and
            (assign (belief_state) 802)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_953_to_1053
        :parameters ()
        :precondition (and
            (= (belief_state) 953)
        )
        :effect (and
            (assign (belief_state) 1053)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_953_to_368
        :parameters ()
        :precondition (and
            (= (belief_state) 953)
        )
        :effect (and
            (assign (belief_state) 368)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_953_to_250
        :parameters ()
        :precondition (and
            (= (belief_state) 953)
        )
        :effect (and
            (assign (belief_state) 250)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_953_to_803
        :parameters ()
        :precondition (and
            (= (belief_state) 953)
        )
        :effect (and
            (assign (belief_state) 803)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_954_to_1056
        :parameters ()
        :precondition (and
            (= (belief_state) 954)
        )
        :effect (and
            (assign (belief_state) 1056)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_954_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 954)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_954_to_1065
        :parameters ()
        :precondition (and
            (= (belief_state) 954)
        )
        :effect (and
            (assign (belief_state) 1065)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_954_to_804
        :parameters ()
        :precondition (and
            (= (belief_state) 954)
        )
        :effect (and
            (assign (belief_state) 804)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_955_to_1066
        :parameters ()
        :precondition (and
            (= (belief_state) 955)
        )
        :effect (and
            (assign (belief_state) 1066)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_955_to_806
        :parameters ()
        :precondition (and
            (= (belief_state) 955)
        )
        :effect (and
            (assign (belief_state) 806)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_956_to_1067
        :parameters ()
        :precondition (and
            (= (belief_state) 956)
        )
        :effect (and
            (assign (belief_state) 1067)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_956_to_955
        :parameters ()
        :precondition (and
            (= (belief_state) 956)
        )
        :effect (and
            (assign (belief_state) 955)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_956_to_808
        :parameters ()
        :precondition (and
            (= (belief_state) 956)
        )
        :effect (and
            (assign (belief_state) 808)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room4_room3__from_957_to_1065
        :parameters ()
        :precondition (and
            (= (belief_state) 957)
        )
        :effect (and
            (assign (belief_state) 1065)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room4__from_957_to_441
        :parameters ()
        :precondition (and
            (= (belief_state) 957)
        )
        :effect (and
            (assign (belief_state) 441)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room4__from_957_to_252
        :parameters ()
        :precondition (and
            (= (belief_state) 957)
        )
        :effect (and
            (assign (belief_state) 252)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room4_room5__from_957_to_812
        :parameters ()
        :precondition (and
            (= (belief_state) 957)
        )
        :effect (and
            (assign (belief_state) 812)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_958_to_891
        :parameters ()
        :precondition (and
            (= (belief_state) 958)
        )
        :effect (and
            (assign (belief_state) 891)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_959_to_958
        :parameters ()
        :precondition (and
            (= (belief_state) 959)
        )
        :effect (and
            (assign (belief_state) 958)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_959_to_927
        :parameters ()
        :precondition (and
            (= (belief_state) 959)
        )
        :effect (and
            (assign (belief_state) 927)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_960_to_892
        :parameters ()
        :precondition (and
            (= (belief_state) 960)
        )
        :effect (and
            (assign (belief_state) 892)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_961_to_960
        :parameters ()
        :precondition (and
            (= (belief_state) 961)
        )
        :effect (and
            (assign (belief_state) 960)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_961_to_928
        :parameters ()
        :precondition (and
            (= (belief_state) 961)
        )
        :effect (and
            (assign (belief_state) 928)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_962_to_893
        :parameters ()
        :precondition (and
            (= (belief_state) 962)
        )
        :effect (and
            (assign (belief_state) 893)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_963_to_962
        :parameters ()
        :precondition (and
            (= (belief_state) 963)
        )
        :effect (and
            (assign (belief_state) 962)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_963_to_929
        :parameters ()
        :precondition (and
            (= (belief_state) 963)
        )
        :effect (and
            (assign (belief_state) 929)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_964_to_1068
        :parameters ()
        :precondition (and
            (= (belief_state) 964)
        )
        :effect (and
            (assign (belief_state) 1068)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_964_to_1069
        :parameters ()
        :precondition (and
            (= (belief_state) 964)
        )
        :effect (and
            (assign (belief_state) 1069)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_964_to_818
        :parameters ()
        :precondition (and
            (= (belief_state) 964)
        )
        :effect (and
            (assign (belief_state) 818)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_965_to_1070
        :parameters ()
        :precondition (and
            (= (belief_state) 965)
        )
        :effect (and
            (assign (belief_state) 1070)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_965_to_1071
        :parameters ()
        :precondition (and
            (= (belief_state) 965)
        )
        :effect (and
            (assign (belief_state) 1071)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_965_to_819
        :parameters ()
        :precondition (and
            (= (belief_state) 965)
        )
        :effect (and
            (assign (belief_state) 819)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_966_to_894
        :parameters ()
        :precondition (and
            (= (belief_state) 966)
        )
        :effect (and
            (assign (belief_state) 894)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_967_to_966
        :parameters ()
        :precondition (and
            (= (belief_state) 967)
        )
        :effect (and
            (assign (belief_state) 966)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_967_to_930
        :parameters ()
        :precondition (and
            (= (belief_state) 967)
        )
        :effect (and
            (assign (belief_state) 930)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_968_to_651
        :parameters ()
        :precondition (and
            (= (belief_state) 968)
        )
        :effect (and
            (assign (belief_state) 651)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_968_to_1072
        :parameters ()
        :precondition (and
            (= (belief_state) 968)
        )
        :effect (and
            (assign (belief_state) 1072)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_968_to_821
        :parameters ()
        :precondition (and
            (= (belief_state) 968)
        )
        :effect (and
            (assign (belief_state) 821)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_969_to_1073
        :parameters ()
        :precondition (and
            (= (belief_state) 969)
        )
        :effect (and
            (assign (belief_state) 1073)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_969_to_1074
        :parameters ()
        :precondition (and
            (= (belief_state) 969)
        )
        :effect (and
            (assign (belief_state) 1074)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_969_to_822
        :parameters ()
        :precondition (and
            (= (belief_state) 969)
        )
        :effect (and
            (assign (belief_state) 822)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_970_to_1075
        :parameters ()
        :precondition (and
            (= (belief_state) 970)
        )
        :effect (and
            (assign (belief_state) 1075)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_970_to_1076
        :parameters ()
        :precondition (and
            (= (belief_state) 970)
        )
        :effect (and
            (assign (belief_state) 1076)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_970_to_823
        :parameters ()
        :precondition (and
            (= (belief_state) 970)
        )
        :effect (and
            (assign (belief_state) 823)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_971_to_1077
        :parameters ()
        :precondition (and
            (= (belief_state) 971)
        )
        :effect (and
            (assign (belief_state) 1077)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_971_to_874
        :parameters ()
        :precondition (and
            (= (belief_state) 971)
        )
        :effect (and
            (assign (belief_state) 874)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_972_to_1078
        :parameters ()
        :precondition (and
            (= (belief_state) 972)
        )
        :effect (and
            (assign (belief_state) 1078)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_972_to_971
        :parameters ()
        :precondition (and
            (= (belief_state) 972)
        )
        :effect (and
            (assign (belief_state) 971)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_972_to_884
        :parameters ()
        :precondition (and
            (= (belief_state) 972)
        )
        :effect (and
            (assign (belief_state) 884)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_973_to_896
        :parameters ()
        :precondition (and
            (= (belief_state) 973)
        )
        :effect (and
            (assign (belief_state) 896)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_974_to_973
        :parameters ()
        :precondition (and
            (= (belief_state) 974)
        )
        :effect (and
            (assign (belief_state) 973)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_974_to_932
        :parameters ()
        :precondition (and
            (= (belief_state) 974)
        )
        :effect (and
            (assign (belief_state) 932)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_975_to_1079
        :parameters ()
        :precondition (and
            (= (belief_state) 975)
        )
        :effect (and
            (assign (belief_state) 1079)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_975_to_1080
        :parameters ()
        :precondition (and
            (= (belief_state) 975)
        )
        :effect (and
            (assign (belief_state) 1080)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_975_to_825
        :parameters ()
        :precondition (and
            (= (belief_state) 975)
        )
        :effect (and
            (assign (belief_state) 825)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_976_to_1081
        :parameters ()
        :precondition (and
            (= (belief_state) 976)
        )
        :effect (and
            (assign (belief_state) 1081)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_976_to_1082
        :parameters ()
        :precondition (and
            (= (belief_state) 976)
        )
        :effect (and
            (assign (belief_state) 1082)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_976_to_826
        :parameters ()
        :precondition (and
            (= (belief_state) 976)
        )
        :effect (and
            (assign (belief_state) 826)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_977_to_1083
        :parameters ()
        :precondition (and
            (= (belief_state) 977)
        )
        :effect (and
            (assign (belief_state) 1083)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_977_to_1084
        :parameters ()
        :precondition (and
            (= (belief_state) 977)
        )
        :effect (and
            (assign (belief_state) 1084)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_977_to_827
        :parameters ()
        :precondition (and
            (= (belief_state) 977)
        )
        :effect (and
            (assign (belief_state) 827)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_978_to_1085
        :parameters ()
        :precondition (and
            (= (belief_state) 978)
        )
        :effect (and
            (assign (belief_state) 1085)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_978_to_875
        :parameters ()
        :precondition (and
            (= (belief_state) 978)
        )
        :effect (and
            (assign (belief_state) 875)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_979_to_1086
        :parameters ()
        :precondition (and
            (= (belief_state) 979)
        )
        :effect (and
            (assign (belief_state) 1086)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_979_to_978
        :parameters ()
        :precondition (and
            (= (belief_state) 979)
        )
        :effect (and
            (assign (belief_state) 978)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_979_to_885
        :parameters ()
        :precondition (and
            (= (belief_state) 979)
        )
        :effect (and
            (assign (belief_state) 885)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_980_to_898
        :parameters ()
        :precondition (and
            (= (belief_state) 980)
        )
        :effect (and
            (assign (belief_state) 898)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_981_to_980
        :parameters ()
        :precondition (and
            (= (belief_state) 981)
        )
        :effect (and
            (assign (belief_state) 980)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_981_to_934
        :parameters ()
        :precondition (and
            (= (belief_state) 981)
        )
        :effect (and
            (assign (belief_state) 934)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_982_to_1087
        :parameters ()
        :precondition (and
            (= (belief_state) 982)
        )
        :effect (and
            (assign (belief_state) 1087)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_982_to_1088
        :parameters ()
        :precondition (and
            (= (belief_state) 982)
        )
        :effect (and
            (assign (belief_state) 1088)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_982_to_829
        :parameters ()
        :precondition (and
            (= (belief_state) 982)
        )
        :effect (and
            (assign (belief_state) 829)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_983_to_1089
        :parameters ()
        :precondition (and
            (= (belief_state) 983)
        )
        :effect (and
            (assign (belief_state) 1089)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_983_to_1090
        :parameters ()
        :precondition (and
            (= (belief_state) 983)
        )
        :effect (and
            (assign (belief_state) 1090)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_983_to_830
        :parameters ()
        :precondition (and
            (= (belief_state) 983)
        )
        :effect (and
            (assign (belief_state) 830)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_984_to_831
        :parameters ()
        :precondition (and
            (= (belief_state) 984)
        )
        :effect (and
            (assign (belief_state) 831)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_985_to_1091
        :parameters ()
        :precondition (and
            (= (belief_state) 985)
        )
        :effect (and
            (assign (belief_state) 1091)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_985_to_832
        :parameters ()
        :precondition (and
            (= (belief_state) 985)
        )
        :effect (and
            (assign (belief_state) 832)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_986_to_1092
        :parameters ()
        :precondition (and
            (= (belief_state) 986)
        )
        :effect (and
            (assign (belief_state) 1092)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_986_to_1093
        :parameters ()
        :precondition (and
            (= (belief_state) 986)
        )
        :effect (and
            (assign (belief_state) 1093)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_986_to_833
        :parameters ()
        :precondition (and
            (= (belief_state) 986)
        )
        :effect (and
            (assign (belief_state) 833)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_987_to_1094
        :parameters ()
        :precondition (and
            (= (belief_state) 987)
        )
        :effect (and
            (assign (belief_state) 1094)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_987_to_876
        :parameters ()
        :precondition (and
            (= (belief_state) 987)
        )
        :effect (and
            (assign (belief_state) 876)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_988_to_1095
        :parameters ()
        :precondition (and
            (= (belief_state) 988)
        )
        :effect (and
            (assign (belief_state) 1095)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_988_to_987
        :parameters ()
        :precondition (and
            (= (belief_state) 988)
        )
        :effect (and
            (assign (belief_state) 987)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_988_to_886
        :parameters ()
        :precondition (and
            (= (belief_state) 988)
        )
        :effect (and
            (assign (belief_state) 886)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_989_to_1096
        :parameters ()
        :precondition (and
            (= (belief_state) 989)
        )
        :effect (and
            (assign (belief_state) 1096)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_989_to_1097
        :parameters ()
        :precondition (and
            (= (belief_state) 989)
        )
        :effect (and
            (assign (belief_state) 1097)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_989_to_834
        :parameters ()
        :precondition (and
            (= (belief_state) 989)
        )
        :effect (and
            (assign (belief_state) 834)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_990_to_1098
        :parameters ()
        :precondition (and
            (= (belief_state) 990)
        )
        :effect (and
            (assign (belief_state) 1098)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_990_to_877
        :parameters ()
        :precondition (and
            (= (belief_state) 990)
        )
        :effect (and
            (assign (belief_state) 877)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_991_to_1099
        :parameters ()
        :precondition (and
            (= (belief_state) 991)
        )
        :effect (and
            (assign (belief_state) 1099)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_991_to_990
        :parameters ()
        :precondition (and
            (= (belief_state) 991)
        )
        :effect (and
            (assign (belief_state) 990)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_991_to_887
        :parameters ()
        :precondition (and
            (= (belief_state) 991)
        )
        :effect (and
            (assign (belief_state) 887)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_992_to_1100
        :parameters ()
        :precondition (and
            (= (belief_state) 992)
        )
        :effect (and
            (assign (belief_state) 1100)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_992_to_1101
        :parameters ()
        :precondition (and
            (= (belief_state) 992)
        )
        :effect (and
            (assign (belief_state) 1101)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_992_to_1102
        :parameters ()
        :precondition (and
            (= (belief_state) 992)
        )
        :effect (and
            (assign (belief_state) 1102)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_992_to_835
        :parameters ()
        :precondition (and
            (= (belief_state) 992)
        )
        :effect (and
            (assign (belief_state) 835)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_993_to_1103
        :parameters ()
        :precondition (and
            (= (belief_state) 993)
        )
        :effect (and
            (assign (belief_state) 1103)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_993_to_1104
        :parameters ()
        :precondition (and
            (= (belief_state) 993)
        )
        :effect (and
            (assign (belief_state) 1104)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_993_to_836
        :parameters ()
        :precondition (and
            (= (belief_state) 993)
        )
        :effect (and
            (assign (belief_state) 836)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_994_to_1105
        :parameters ()
        :precondition (and
            (= (belief_state) 994)
        )
        :effect (and
            (assign (belief_state) 1105)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_994_to_878
        :parameters ()
        :precondition (and
            (= (belief_state) 994)
        )
        :effect (and
            (assign (belief_state) 878)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_995_to_1106
        :parameters ()
        :precondition (and
            (= (belief_state) 995)
        )
        :effect (and
            (assign (belief_state) 1106)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_995_to_994
        :parameters ()
        :precondition (and
            (= (belief_state) 995)
        )
        :effect (and
            (assign (belief_state) 994)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_995_to_888
        :parameters ()
        :precondition (and
            (= (belief_state) 995)
        )
        :effect (and
            (assign (belief_state) 888)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_996_to_1107
        :parameters ()
        :precondition (and
            (= (belief_state) 996)
        )
        :effect (and
            (assign (belief_state) 1107)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_996_to_1108
        :parameters ()
        :precondition (and
            (= (belief_state) 996)
        )
        :effect (and
            (assign (belief_state) 1108)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_996_to_1109
        :parameters ()
        :precondition (and
            (= (belief_state) 996)
        )
        :effect (and
            (assign (belief_state) 1109)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_996_to_837
        :parameters ()
        :precondition (and
            (= (belief_state) 996)
        )
        :effect (and
            (assign (belief_state) 837)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_997_to_841
        :parameters ()
        :precondition (and
            (= (belief_state) 997)
        )
        :effect (and
            (assign (belief_state) 841)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_998_to_902
        :parameters ()
        :precondition (and
            (= (belief_state) 998)
        )
        :effect (and
            (assign (belief_state) 902)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_999_to_1110
        :parameters ()
        :precondition (and
            (= (belief_state) 999)
        )
        :effect (and
            (assign (belief_state) 1110)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_999_to_844
        :parameters ()
        :precondition (and
            (= (belief_state) 999)
        )
        :effect (and
            (assign (belief_state) 844)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1000_to_845
        :parameters ()
        :precondition (and
            (= (belief_state) 1000)
        )
        :effect (and
            (assign (belief_state) 845)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1001_to_1111
        :parameters ()
        :precondition (and
            (= (belief_state) 1001)
        )
        :effect (and
            (assign (belief_state) 1111)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1001_to_846
        :parameters ()
        :precondition (and
            (= (belief_state) 1001)
        )
        :effect (and
            (assign (belief_state) 846)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1002_to_1112
        :parameters ()
        :precondition (and
            (= (belief_state) 1002)
        )
        :effect (and
            (assign (belief_state) 1112)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1002_to_847
        :parameters ()
        :precondition (and
            (= (belief_state) 1002)
        )
        :effect (and
            (assign (belief_state) 847)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1003_to_1113
        :parameters ()
        :precondition (and
            (= (belief_state) 1003)
        )
        :effect (and
            (assign (belief_state) 1113)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1003_to_879
        :parameters ()
        :precondition (and
            (= (belief_state) 1003)
        )
        :effect (and
            (assign (belief_state) 879)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1004_to_1114
        :parameters ()
        :precondition (and
            (= (belief_state) 1004)
        )
        :effect (and
            (assign (belief_state) 1114)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1004_to_848
        :parameters ()
        :precondition (and
            (= (belief_state) 1004)
        )
        :effect (and
            (assign (belief_state) 848)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1005_to_1115
        :parameters ()
        :precondition (and
            (= (belief_state) 1005)
        )
        :effect (and
            (assign (belief_state) 1115)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1005_to_880
        :parameters ()
        :precondition (and
            (= (belief_state) 1005)
        )
        :effect (and
            (assign (belief_state) 880)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1006_to_1116
        :parameters ()
        :precondition (and
            (= (belief_state) 1006)
        )
        :effect (and
            (assign (belief_state) 1116)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room2_room3__from_1006_to_849
        :parameters ()
        :precondition (and
            (= (belief_state) 1006)
        )
        :effect (and
            (assign (belief_state) 849)
            (assign (goal_reached) 't')
        )
    )

    (:action left_room3_room2__from_1007_to_1117
        :parameters ()
        :precondition (and
            (= (belief_state) 1007)
        )
        :effect (and
            (assign (belief_state) 1117)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room3_room4__from_1007_to_873
        :parameters ()
        :precondition (and
            (= (belief_state) 1007)
        )
        :effect (and
            (assign (belief_state) 873)
            (assign (goal_reached) 't')
        )
    )

    (:action left_room2_room1__from_1008_to_1118
        :parameters ()
        :precondition (and
            (= (belief_state) 1008)
        )
        :effect (and
            (assign (belief_state) 1118)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1008_to_1119
        :parameters ()
        :precondition (and
            (= (belief_state) 1008)
        )
        :effect (and
            (assign (belief_state) 1119)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1008_to_850
        :parameters ()
        :precondition (and
            (= (belief_state) 1008)
        )
        :effect (and
            (assign (belief_state) 850)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1009_to_906
        :parameters ()
        :precondition (and
            (= (belief_state) 1009)
        )
        :effect (and
            (assign (belief_state) 906)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1010_to_997
        :parameters ()
        :precondition (and
            (= (belief_state) 1010)
        )
        :effect (and
            (assign (belief_state) 997)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1010_to_997
        :parameters ()
        :precondition (and
            (= (belief_state) 1010)
        )
        :effect (and
            (assign (belief_state) 997)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1010_to_857
        :parameters ()
        :precondition (and
            (= (belief_state) 1010)
        )
        :effect (and
            (assign (belief_state) 857)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1011_to_918
        :parameters ()
        :precondition (and
            (= (belief_state) 1011)
        )
        :effect (and
            (assign (belief_state) 918)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1011_to_938
        :parameters ()
        :precondition (and
            (= (belief_state) 1011)
        )
        :effect (and
            (assign (belief_state) 938)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1012_to_907
        :parameters ()
        :precondition (and
            (= (belief_state) 1012)
        )
        :effect (and
            (assign (belief_state) 907)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1013_to_1012
        :parameters ()
        :precondition (and
            (= (belief_state) 1013)
        )
        :effect (and
            (assign (belief_state) 1012)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1013_to_939
        :parameters ()
        :precondition (and
            (= (belief_state) 1013)
        )
        :effect (and
            (assign (belief_state) 939)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1014_to_908
        :parameters ()
        :precondition (and
            (= (belief_state) 1014)
        )
        :effect (and
            (assign (belief_state) 908)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1015_to_1014
        :parameters ()
        :precondition (and
            (= (belief_state) 1015)
        )
        :effect (and
            (assign (belief_state) 1014)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1015_to_940
        :parameters ()
        :precondition (and
            (= (belief_state) 1015)
        )
        :effect (and
            (assign (belief_state) 940)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1016_to_909
        :parameters ()
        :precondition (and
            (= (belief_state) 1016)
        )
        :effect (and
            (assign (belief_state) 909)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1017_to_1016
        :parameters ()
        :precondition (and
            (= (belief_state) 1017)
        )
        :effect (and
            (assign (belief_state) 1016)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1017_to_941
        :parameters ()
        :precondition (and
            (= (belief_state) 1017)
        )
        :effect (and
            (assign (belief_state) 941)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1018_to_1101
        :parameters ()
        :precondition (and
            (= (belief_state) 1018)
        )
        :effect (and
            (assign (belief_state) 1101)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1018_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 1018)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1018_to_882
        :parameters ()
        :precondition (and
            (= (belief_state) 1018)
        )
        :effect (and
            (assign (belief_state) 882)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1019_to_1108
        :parameters ()
        :precondition (and
            (= (belief_state) 1019)
        )
        :effect (and
            (assign (belief_state) 1108)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1019_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 1019)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1019_to_883
        :parameters ()
        :precondition (and
            (= (belief_state) 1019)
        )
        :effect (and
            (assign (belief_state) 883)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1020_to_1119
        :parameters ()
        :precondition (and
            (= (belief_state) 1020)
        )
        :effect (and
            (assign (belief_state) 1119)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1020_to_849
        :parameters ()
        :precondition (and
            (= (belief_state) 1020)
        )
        :effect (and
            (assign (belief_state) 849)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room3_room4__from_1020_to_881
        :parameters ()
        :precondition (and
            (= (belief_state) 1020)
        )
        :effect (and
            (assign (belief_state) 881)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1021_to_1102
        :parameters ()
        :precondition (and
            (= (belief_state) 1021)
        )
        :effect (and
            (assign (belief_state) 1102)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1021_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 1021)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1021_to_889
        :parameters ()
        :precondition (and
            (= (belief_state) 1021)
        )
        :effect (and
            (assign (belief_state) 889)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1022_to_1109
        :parameters ()
        :precondition (and
            (= (belief_state) 1022)
        )
        :effect (and
            (assign (belief_state) 1109)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1022_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 1022)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1022_to_890
        :parameters ()
        :precondition (and
            (= (belief_state) 1022)
        )
        :effect (and
            (assign (belief_state) 890)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1023_to_1068
        :parameters ()
        :precondition (and
            (= (belief_state) 1023)
        )
        :effect (and
            (assign (belief_state) 1068)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1023_to_912
        :parameters ()
        :precondition (and
            (= (belief_state) 1023)
        )
        :effect (and
            (assign (belief_state) 912)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1024_to_1070
        :parameters ()
        :precondition (and
            (= (belief_state) 1024)
        )
        :effect (and
            (assign (belief_state) 1070)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1024_to_1023
        :parameters ()
        :precondition (and
            (= (belief_state) 1024)
        )
        :effect (and
            (assign (belief_state) 1023)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1024_to_920
        :parameters ()
        :precondition (and
            (= (belief_state) 1024)
        )
        :effect (and
            (assign (belief_state) 920)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1025_to_1073
        :parameters ()
        :precondition (and
            (= (belief_state) 1025)
        )
        :effect (and
            (assign (belief_state) 1073)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1025_to_531
        :parameters ()
        :precondition (and
            (= (belief_state) 1025)
        )
        :effect (and
            (assign (belief_state) 531)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1025_to_921
        :parameters ()
        :precondition (and
            (= (belief_state) 1025)
        )
        :effect (and
            (assign (belief_state) 921)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1026_to_1075
        :parameters ()
        :precondition (and
            (= (belief_state) 1026)
        )
        :effect (and
            (assign (belief_state) 1075)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1026_to_643
        :parameters ()
        :precondition (and
            (= (belief_state) 1026)
        )
        :effect (and
            (assign (belief_state) 643)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_1026_to_734
        :parameters ()
        :precondition (and
            (= (belief_state) 1026)
        )
        :effect (and
            (assign (belief_state) 734)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1026_to_895
        :parameters ()
        :precondition (and
            (= (belief_state) 1026)
        )
        :effect (and
            (assign (belief_state) 895)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1027_to_1079
        :parameters ()
        :precondition (and
            (= (belief_state) 1027)
        )
        :effect (and
            (assign (belief_state) 1079)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1027_to_913
        :parameters ()
        :precondition (and
            (= (belief_state) 1027)
        )
        :effect (and
            (assign (belief_state) 913)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1028_to_1081
        :parameters ()
        :precondition (and
            (= (belief_state) 1028)
        )
        :effect (and
            (assign (belief_state) 1081)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1028_to_1027
        :parameters ()
        :precondition (and
            (= (belief_state) 1028)
        )
        :effect (and
            (assign (belief_state) 1027)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1028_to_922
        :parameters ()
        :precondition (and
            (= (belief_state) 1028)
        )
        :effect (and
            (assign (belief_state) 922)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1029_to_1083
        :parameters ()
        :precondition (and
            (= (belief_state) 1029)
        )
        :effect (and
            (assign (belief_state) 1083)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1029_to_739
        :parameters ()
        :precondition (and
            (= (belief_state) 1029)
        )
        :effect (and
            (assign (belief_state) 739)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_1029_to_726
        :parameters ()
        :precondition (and
            (= (belief_state) 1029)
        )
        :effect (and
            (assign (belief_state) 726)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1029_to_897
        :parameters ()
        :precondition (and
            (= (belief_state) 1029)
        )
        :effect (and
            (assign (belief_state) 897)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1030_to_1087
        :parameters ()
        :precondition (and
            (= (belief_state) 1030)
        )
        :effect (and
            (assign (belief_state) 1087)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1030_to_914
        :parameters ()
        :precondition (and
            (= (belief_state) 1030)
        )
        :effect (and
            (assign (belief_state) 914)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1031_to_1089
        :parameters ()
        :precondition (and
            (= (belief_state) 1031)
        )
        :effect (and
            (assign (belief_state) 1089)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1031_to_1030
        :parameters ()
        :precondition (and
            (= (belief_state) 1031)
        )
        :effect (and
            (assign (belief_state) 1030)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1031_to_923
        :parameters ()
        :precondition (and
            (= (belief_state) 1031)
        )
        :effect (and
            (assign (belief_state) 923)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1032_to_1092
        :parameters ()
        :precondition (and
            (= (belief_state) 1032)
        )
        :effect (and
            (assign (belief_state) 1092)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1032_to_1120
        :parameters ()
        :precondition (and
            (= (belief_state) 1032)
        )
        :effect (and
            (assign (belief_state) 1120)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_1032_to_1121
        :parameters ()
        :precondition (and
            (= (belief_state) 1032)
        )
        :effect (and
            (assign (belief_state) 1121)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1032_to_899
        :parameters ()
        :precondition (and
            (= (belief_state) 1032)
        )
        :effect (and
            (assign (belief_state) 899)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1033_to_1096
        :parameters ()
        :precondition (and
            (= (belief_state) 1033)
        )
        :effect (and
            (assign (belief_state) 1096)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1033_to_831
        :parameters ()
        :precondition (and
            (= (belief_state) 1033)
        )
        :effect (and
            (assign (belief_state) 831)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_1033_to_1122
        :parameters ()
        :precondition (and
            (= (belief_state) 1033)
        )
        :effect (and
            (assign (belief_state) 1122)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1033_to_900
        :parameters ()
        :precondition (and
            (= (belief_state) 1033)
        )
        :effect (and
            (assign (belief_state) 900)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1034_to_1123
        :parameters ()
        :precondition (and
            (= (belief_state) 1034)
        )
        :effect (and
            (assign (belief_state) 1123)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1034_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 1034)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1034_to_910
        :parameters ()
        :precondition (and
            (= (belief_state) 1034)
        )
        :effect (and
            (assign (belief_state) 910)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1035_to_1103
        :parameters ()
        :precondition (and
            (= (belief_state) 1035)
        )
        :effect (and
            (assign (belief_state) 1103)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1035_to_1124
        :parameters ()
        :precondition (and
            (= (belief_state) 1035)
        )
        :effect (and
            (assign (belief_state) 1124)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_1035_to_1125
        :parameters ()
        :precondition (and
            (= (belief_state) 1035)
        )
        :effect (and
            (assign (belief_state) 1125)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1035_to_901
        :parameters ()
        :precondition (and
            (= (belief_state) 1035)
        )
        :effect (and
            (assign (belief_state) 901)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1036_to_1126
        :parameters ()
        :precondition (and
            (= (belief_state) 1036)
        )
        :effect (and
            (assign (belief_state) 1126)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1036_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 1036)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1036_to_911
        :parameters ()
        :precondition (and
            (= (belief_state) 1036)
        )
        :effect (and
            (assign (belief_state) 911)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1037_to_1110
        :parameters ()
        :precondition (and
            (= (belief_state) 1037)
        )
        :effect (and
            (assign (belief_state) 1110)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1037_to_916
        :parameters ()
        :precondition (and
            (= (belief_state) 1037)
        )
        :effect (and
            (assign (belief_state) 916)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1038_to_1112
        :parameters ()
        :precondition (and
            (= (belief_state) 1038)
        )
        :effect (and
            (assign (belief_state) 1112)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1038_to_845
        :parameters ()
        :precondition (and
            (= (belief_state) 1038)
        )
        :effect (and
            (assign (belief_state) 845)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1038_to_903
        :parameters ()
        :precondition (and
            (= (belief_state) 1038)
        )
        :effect (and
            (assign (belief_state) 903)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1039_to_1114
        :parameters ()
        :precondition (and
            (= (belief_state) 1039)
        )
        :effect (and
            (assign (belief_state) 1114)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1039_to_1127
        :parameters ()
        :precondition (and
            (= (belief_state) 1039)
        )
        :effect (and
            (assign (belief_state) 1127)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1039_to_904
        :parameters ()
        :precondition (and
            (= (belief_state) 1039)
        )
        :effect (and
            (assign (belief_state) 904)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1040_to_1128
        :parameters ()
        :precondition (and
            (= (belief_state) 1040)
        )
        :effect (and
            (assign (belief_state) 1128)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1040_to_849
        :parameters ()
        :precondition (and
            (= (belief_state) 1040)
        )
        :effect (and
            (assign (belief_state) 849)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room3_room4__from_1040_to_905
        :parameters ()
        :precondition (and
            (= (belief_state) 1040)
        )
        :effect (and
            (assign (belief_state) 905)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1041_to_1120
        :parameters ()
        :precondition (and
            (= (belief_state) 1041)
        )
        :effect (and
            (assign (belief_state) 1120)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1041_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 1041)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1041_to_919
        :parameters ()
        :precondition (and
            (= (belief_state) 1041)
        )
        :effect (and
            (assign (belief_state) 919)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1042_to_1124
        :parameters ()
        :precondition (and
            (= (belief_state) 1042)
        )
        :effect (and
            (assign (belief_state) 1124)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1042_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 1042)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_1042_to_916
        :parameters ()
        :precondition (and
            (= (belief_state) 1042)
        )
        :effect (and
            (assign (belief_state) 916)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1042_to_915
        :parameters ()
        :precondition (and
            (= (belief_state) 1042)
        )
        :effect (and
            (assign (belief_state) 915)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1043_to_1127
        :parameters ()
        :precondition (and
            (= (belief_state) 1043)
        )
        :effect (and
            (assign (belief_state) 1127)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1043_to_849
        :parameters ()
        :precondition (and
            (= (belief_state) 1043)
        )
        :effect (and
            (assign (belief_state) 849)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room3_room4__from_1043_to_917
        :parameters ()
        :precondition (and
            (= (belief_state) 1043)
        )
        :effect (and
            (assign (belief_state) 917)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1044_to_1121
        :parameters ()
        :precondition (and
            (= (belief_state) 1044)
        )
        :effect (and
            (assign (belief_state) 1121)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1044_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 1044)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1044_to_926
        :parameters ()
        :precondition (and
            (= (belief_state) 1044)
        )
        :effect (and
            (assign (belief_state) 926)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1045_to_1122
        :parameters ()
        :precondition (and
            (= (belief_state) 1045)
        )
        :effect (and
            (assign (belief_state) 1122)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1045_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 1045)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_1045_to_903
        :parameters ()
        :precondition (and
            (= (belief_state) 1045)
        )
        :effect (and
            (assign (belief_state) 903)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1045_to_924
        :parameters ()
        :precondition (and
            (= (belief_state) 1045)
        )
        :effect (and
            (assign (belief_state) 924)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1046_to_1125
        :parameters ()
        :precondition (and
            (= (belief_state) 1046)
        )
        :effect (and
            (assign (belief_state) 1125)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1046_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 1046)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_1046_to_727
        :parameters ()
        :precondition (and
            (= (belief_state) 1046)
        )
        :effect (and
            (assign (belief_state) 727)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1046_to_925
        :parameters ()
        :precondition (and
            (= (belief_state) 1046)
        )
        :effect (and
            (assign (belief_state) 925)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1047_to_1069
        :parameters ()
        :precondition (and
            (= (belief_state) 1047)
        )
        :effect (and
            (assign (belief_state) 1069)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1047_to_944
        :parameters ()
        :precondition (and
            (= (belief_state) 1047)
        )
        :effect (and
            (assign (belief_state) 944)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1048_to_1071
        :parameters ()
        :precondition (and
            (= (belief_state) 1048)
        )
        :effect (and
            (assign (belief_state) 1071)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1048_to_1047
        :parameters ()
        :precondition (and
            (= (belief_state) 1048)
        )
        :effect (and
            (assign (belief_state) 1047)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1048_to_951
        :parameters ()
        :precondition (and
            (= (belief_state) 1048)
        )
        :effect (and
            (assign (belief_state) 951)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1049_to_1072
        :parameters ()
        :precondition (and
            (= (belief_state) 1049)
        )
        :effect (and
            (assign (belief_state) 1072)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1049_to_945
        :parameters ()
        :precondition (and
            (= (belief_state) 1049)
        )
        :effect (and
            (assign (belief_state) 945)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1050_to_1074
        :parameters ()
        :precondition (and
            (= (belief_state) 1050)
        )
        :effect (and
            (assign (belief_state) 1074)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1050_to_1049
        :parameters ()
        :precondition (and
            (= (belief_state) 1050)
        )
        :effect (and
            (assign (belief_state) 1049)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1050_to_952
        :parameters ()
        :precondition (and
            (= (belief_state) 1050)
        )
        :effect (and
            (assign (belief_state) 952)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1051_to_1076
        :parameters ()
        :precondition (and
            (= (belief_state) 1051)
        )
        :effect (and
            (assign (belief_state) 1076)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1051_to_780
        :parameters ()
        :precondition (and
            (= (belief_state) 1051)
        )
        :effect (and
            (assign (belief_state) 780)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_1051_to_645
        :parameters ()
        :precondition (and
            (= (belief_state) 1051)
        )
        :effect (and
            (assign (belief_state) 645)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1051_to_931
        :parameters ()
        :precondition (and
            (= (belief_state) 1051)
        )
        :effect (and
            (assign (belief_state) 931)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1052_to_1080
        :parameters ()
        :precondition (and
            (= (belief_state) 1052)
        )
        :effect (and
            (assign (belief_state) 1080)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1052_to_946
        :parameters ()
        :precondition (and
            (= (belief_state) 1052)
        )
        :effect (and
            (assign (belief_state) 946)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1053_to_1082
        :parameters ()
        :precondition (and
            (= (belief_state) 1053)
        )
        :effect (and
            (assign (belief_state) 1082)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1053_to_1052
        :parameters ()
        :precondition (and
            (= (belief_state) 1053)
        )
        :effect (and
            (assign (belief_state) 1052)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1053_to_953
        :parameters ()
        :precondition (and
            (= (belief_state) 1053)
        )
        :effect (and
            (assign (belief_state) 953)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1054_to_1084
        :parameters ()
        :precondition (and
            (= (belief_state) 1054)
        )
        :effect (and
            (assign (belief_state) 1084)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1054_to_642
        :parameters ()
        :precondition (and
            (= (belief_state) 1054)
        )
        :effect (and
            (assign (belief_state) 642)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_1054_to_437
        :parameters ()
        :precondition (and
            (= (belief_state) 1054)
        )
        :effect (and
            (assign (belief_state) 437)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1054_to_933
        :parameters ()
        :precondition (and
            (= (belief_state) 1054)
        )
        :effect (and
            (assign (belief_state) 933)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1055_to_1088
        :parameters ()
        :precondition (and
            (= (belief_state) 1055)
        )
        :effect (and
            (assign (belief_state) 1088)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1055_to_947
        :parameters ()
        :precondition (and
            (= (belief_state) 1055)
        )
        :effect (and
            (assign (belief_state) 947)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1056_to_1090
        :parameters ()
        :precondition (and
            (= (belief_state) 1056)
        )
        :effect (and
            (assign (belief_state) 1090)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1056_to_1055
        :parameters ()
        :precondition (and
            (= (belief_state) 1056)
        )
        :effect (and
            (assign (belief_state) 1055)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1056_to_954
        :parameters ()
        :precondition (and
            (= (belief_state) 1056)
        )
        :effect (and
            (assign (belief_state) 954)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1057_to_1093
        :parameters ()
        :precondition (and
            (= (belief_state) 1057)
        )
        :effect (and
            (assign (belief_state) 1093)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1057_to_1129
        :parameters ()
        :precondition (and
            (= (belief_state) 1057)
        )
        :effect (and
            (assign (belief_state) 1129)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_1057_to_1130
        :parameters ()
        :precondition (and
            (= (belief_state) 1057)
        )
        :effect (and
            (assign (belief_state) 1130)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1057_to_935
        :parameters ()
        :precondition (and
            (= (belief_state) 1057)
        )
        :effect (and
            (assign (belief_state) 935)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1058_to_1097
        :parameters ()
        :precondition (and
            (= (belief_state) 1058)
        )
        :effect (and
            (assign (belief_state) 1097)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1058_to_1131
        :parameters ()
        :precondition (and
            (= (belief_state) 1058)
        )
        :effect (and
            (assign (belief_state) 1131)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_1058_to_1132
        :parameters ()
        :precondition (and
            (= (belief_state) 1058)
        )
        :effect (and
            (assign (belief_state) 1132)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1058_to_936
        :parameters ()
        :precondition (and
            (= (belief_state) 1058)
        )
        :effect (and
            (assign (belief_state) 936)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1059_to_1133
        :parameters ()
        :precondition (and
            (= (belief_state) 1059)
        )
        :effect (and
            (assign (belief_state) 1133)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1059_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 1059)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1059_to_942
        :parameters ()
        :precondition (and
            (= (belief_state) 1059)
        )
        :effect (and
            (assign (belief_state) 942)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1060_to_1104
        :parameters ()
        :precondition (and
            (= (belief_state) 1060)
        )
        :effect (and
            (assign (belief_state) 1104)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1060_to_1134
        :parameters ()
        :precondition (and
            (= (belief_state) 1060)
        )
        :effect (and
            (assign (belief_state) 1134)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_1060_to_1135
        :parameters ()
        :precondition (and
            (= (belief_state) 1060)
        )
        :effect (and
            (assign (belief_state) 1135)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1060_to_937
        :parameters ()
        :precondition (and
            (= (belief_state) 1060)
        )
        :effect (and
            (assign (belief_state) 937)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1061_to_1136
        :parameters ()
        :precondition (and
            (= (belief_state) 1061)
        )
        :effect (and
            (assign (belief_state) 1136)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1061_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 1061)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1061_to_943
        :parameters ()
        :precondition (and
            (= (belief_state) 1061)
        )
        :effect (and
            (assign (belief_state) 943)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1062_to_1129
        :parameters ()
        :precondition (and
            (= (belief_state) 1062)
        )
        :effect (and
            (assign (belief_state) 1129)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1062_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 1062)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1062_to_950
        :parameters ()
        :precondition (and
            (= (belief_state) 1062)
        )
        :effect (and
            (assign (belief_state) 950)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1063_to_1131
        :parameters ()
        :precondition (and
            (= (belief_state) 1063)
        )
        :effect (and
            (assign (belief_state) 1131)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1063_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 1063)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_1063_to_879
        :parameters ()
        :precondition (and
            (= (belief_state) 1063)
        )
        :effect (and
            (assign (belief_state) 879)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1063_to_948
        :parameters ()
        :precondition (and
            (= (belief_state) 1063)
        )
        :effect (and
            (assign (belief_state) 948)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1064_to_1134
        :parameters ()
        :precondition (and
            (= (belief_state) 1064)
        )
        :effect (and
            (assign (belief_state) 1134)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1064_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 1064)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_1064_to_697
        :parameters ()
        :precondition (and
            (= (belief_state) 1064)
        )
        :effect (and
            (assign (belief_state) 697)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1064_to_949
        :parameters ()
        :precondition (and
            (= (belief_state) 1064)
        )
        :effect (and
            (assign (belief_state) 949)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1065_to_1130
        :parameters ()
        :precondition (and
            (= (belief_state) 1065)
        )
        :effect (and
            (assign (belief_state) 1130)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1065_to_647
        :parameters ()
        :precondition (and
            (= (belief_state) 1065)
        )
        :effect (and
            (assign (belief_state) 647)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1065_to_957
        :parameters ()
        :precondition (and
            (= (belief_state) 1065)
        )
        :effect (and
            (assign (belief_state) 957)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1066_to_1132
        :parameters ()
        :precondition (and
            (= (belief_state) 1066)
        )
        :effect (and
            (assign (belief_state) 1132)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1066_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 1066)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_1066_to_648
        :parameters ()
        :precondition (and
            (= (belief_state) 1066)
        )
        :effect (and
            (assign (belief_state) 648)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1066_to_955
        :parameters ()
        :precondition (and
            (= (belief_state) 1066)
        )
        :effect (and
            (assign (belief_state) 955)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room3_room2__from_1067_to_1135
        :parameters ()
        :precondition (and
            (= (belief_state) 1067)
        )
        :effect (and
            (assign (belief_state) 1135)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room3__from_1067_to_637
        :parameters ()
        :precondition (and
            (= (belief_state) 1067)
        )
        :effect (and
            (assign (belief_state) 637)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room3__from_1067_to_440
        :parameters ()
        :precondition (and
            (= (belief_state) 1067)
        )
        :effect (and
            (assign (belief_state) 440)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room3_room4__from_1067_to_956
        :parameters ()
        :precondition (and
            (= (belief_state) 1067)
        )
        :effect (and
            (assign (belief_state) 956)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1068_to_1023
        :parameters ()
        :precondition (and
            (= (belief_state) 1068)
        )
        :effect (and
            (assign (belief_state) 1023)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1069_to_1068
        :parameters ()
        :precondition (and
            (= (belief_state) 1069)
        )
        :effect (and
            (assign (belief_state) 1068)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1069_to_1047
        :parameters ()
        :precondition (and
            (= (belief_state) 1069)
        )
        :effect (and
            (assign (belief_state) 1047)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1070_to_1024
        :parameters ()
        :precondition (and
            (= (belief_state) 1070)
        )
        :effect (and
            (assign (belief_state) 1024)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1071_to_1070
        :parameters ()
        :precondition (and
            (= (belief_state) 1071)
        )
        :effect (and
            (assign (belief_state) 1070)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1071_to_1048
        :parameters ()
        :precondition (and
            (= (belief_state) 1071)
        )
        :effect (and
            (assign (belief_state) 1048)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1072_to_651
        :parameters ()
        :precondition (and
            (= (belief_state) 1072)
        )
        :effect (and
            (assign (belief_state) 651)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1072_to_1049
        :parameters ()
        :precondition (and
            (= (belief_state) 1072)
        )
        :effect (and
            (assign (belief_state) 1049)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1073_to_1025
        :parameters ()
        :precondition (and
            (= (belief_state) 1073)
        )
        :effect (and
            (assign (belief_state) 1025)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1074_to_1073
        :parameters ()
        :precondition (and
            (= (belief_state) 1074)
        )
        :effect (and
            (assign (belief_state) 1073)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1074_to_1050
        :parameters ()
        :precondition (and
            (= (belief_state) 1074)
        )
        :effect (and
            (assign (belief_state) 1050)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1075_to_1026
        :parameters ()
        :precondition (and
            (= (belief_state) 1075)
        )
        :effect (and
            (assign (belief_state) 1026)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1076_to_1075
        :parameters ()
        :precondition (and
            (= (belief_state) 1076)
        )
        :effect (and
            (assign (belief_state) 1075)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1076_to_1051
        :parameters ()
        :precondition (and
            (= (belief_state) 1076)
        )
        :effect (and
            (assign (belief_state) 1051)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1077_to_840
        :parameters ()
        :precondition (and
            (= (belief_state) 1077)
        )
        :effect (and
            (assign (belief_state) 840)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1077_to_862
        :parameters ()
        :precondition (and
            (= (belief_state) 1077)
        )
        :effect (and
            (assign (belief_state) 862)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1077_to_971
        :parameters ()
        :precondition (and
            (= (belief_state) 1077)
        )
        :effect (and
            (assign (belief_state) 971)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1078_to_863
        :parameters ()
        :precondition (and
            (= (belief_state) 1078)
        )
        :effect (and
            (assign (belief_state) 863)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1078_to_842
        :parameters ()
        :precondition (and
            (= (belief_state) 1078)
        )
        :effect (and
            (assign (belief_state) 842)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1078_to_972
        :parameters ()
        :precondition (and
            (= (belief_state) 1078)
        )
        :effect (and
            (assign (belief_state) 972)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1079_to_1027
        :parameters ()
        :precondition (and
            (= (belief_state) 1079)
        )
        :effect (and
            (assign (belief_state) 1027)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1080_to_1079
        :parameters ()
        :precondition (and
            (= (belief_state) 1080)
        )
        :effect (and
            (assign (belief_state) 1079)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1080_to_1052
        :parameters ()
        :precondition (and
            (= (belief_state) 1080)
        )
        :effect (and
            (assign (belief_state) 1052)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1081_to_1028
        :parameters ()
        :precondition (and
            (= (belief_state) 1081)
        )
        :effect (and
            (assign (belief_state) 1028)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1082_to_1081
        :parameters ()
        :precondition (and
            (= (belief_state) 1082)
        )
        :effect (and
            (assign (belief_state) 1081)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1082_to_1053
        :parameters ()
        :precondition (and
            (= (belief_state) 1082)
        )
        :effect (and
            (assign (belief_state) 1053)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1083_to_1029
        :parameters ()
        :precondition (and
            (= (belief_state) 1083)
        )
        :effect (and
            (assign (belief_state) 1029)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1084_to_1083
        :parameters ()
        :precondition (and
            (= (belief_state) 1084)
        )
        :effect (and
            (assign (belief_state) 1083)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1084_to_1054
        :parameters ()
        :precondition (and
            (= (belief_state) 1084)
        )
        :effect (and
            (assign (belief_state) 1054)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1085_to_872
        :parameters ()
        :precondition (and
            (= (belief_state) 1085)
        )
        :effect (and
            (assign (belief_state) 872)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1085_to_839
        :parameters ()
        :precondition (and
            (= (belief_state) 1085)
        )
        :effect (and
            (assign (belief_state) 839)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1085_to_978
        :parameters ()
        :precondition (and
            (= (belief_state) 1085)
        )
        :effect (and
            (assign (belief_state) 978)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1086_to_838
        :parameters ()
        :precondition (and
            (= (belief_state) 1086)
        )
        :effect (and
            (assign (belief_state) 838)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1086_to_641
        :parameters ()
        :precondition (and
            (= (belief_state) 1086)
        )
        :effect (and
            (assign (belief_state) 641)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1086_to_979
        :parameters ()
        :precondition (and
            (= (belief_state) 1086)
        )
        :effect (and
            (assign (belief_state) 979)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1087_to_1030
        :parameters ()
        :precondition (and
            (= (belief_state) 1087)
        )
        :effect (and
            (assign (belief_state) 1030)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1088_to_1087
        :parameters ()
        :precondition (and
            (= (belief_state) 1088)
        )
        :effect (and
            (assign (belief_state) 1087)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1088_to_1055
        :parameters ()
        :precondition (and
            (= (belief_state) 1088)
        )
        :effect (and
            (assign (belief_state) 1055)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1089_to_1031
        :parameters ()
        :precondition (and
            (= (belief_state) 1089)
        )
        :effect (and
            (assign (belief_state) 1031)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1090_to_1089
        :parameters ()
        :precondition (and
            (= (belief_state) 1090)
        )
        :effect (and
            (assign (belief_state) 1089)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1090_to_1056
        :parameters ()
        :precondition (and
            (= (belief_state) 1090)
        )
        :effect (and
            (assign (belief_state) 1056)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1091_to_985
        :parameters ()
        :precondition (and
            (= (belief_state) 1091)
        )
        :effect (and
            (assign (belief_state) 985)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1092_to_1032
        :parameters ()
        :precondition (and
            (= (belief_state) 1092)
        )
        :effect (and
            (assign (belief_state) 1032)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1093_to_1092
        :parameters ()
        :precondition (and
            (= (belief_state) 1093)
        )
        :effect (and
            (assign (belief_state) 1092)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1093_to_1057
        :parameters ()
        :precondition (and
            (= (belief_state) 1093)
        )
        :effect (and
            (assign (belief_state) 1057)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1094_to_1137
        :parameters ()
        :precondition (and
            (= (belief_state) 1094)
        )
        :effect (and
            (assign (belief_state) 1137)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1094_to_1138
        :parameters ()
        :precondition (and
            (= (belief_state) 1094)
        )
        :effect (and
            (assign (belief_state) 1138)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1094_to_987
        :parameters ()
        :precondition (and
            (= (belief_state) 1094)
        )
        :effect (and
            (assign (belief_state) 987)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1095_to_1139
        :parameters ()
        :precondition (and
            (= (belief_state) 1095)
        )
        :effect (and
            (assign (belief_state) 1139)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1095_to_1140
        :parameters ()
        :precondition (and
            (= (belief_state) 1095)
        )
        :effect (and
            (assign (belief_state) 1140)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1095_to_988
        :parameters ()
        :precondition (and
            (= (belief_state) 1095)
        )
        :effect (and
            (assign (belief_state) 988)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1096_to_1033
        :parameters ()
        :precondition (and
            (= (belief_state) 1096)
        )
        :effect (and
            (assign (belief_state) 1033)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1097_to_1096
        :parameters ()
        :precondition (and
            (= (belief_state) 1097)
        )
        :effect (and
            (assign (belief_state) 1096)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1097_to_1058
        :parameters ()
        :precondition (and
            (= (belief_state) 1097)
        )
        :effect (and
            (assign (belief_state) 1058)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1098_to_984
        :parameters ()
        :precondition (and
            (= (belief_state) 1098)
        )
        :effect (and
            (assign (belief_state) 984)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1098_to_1141
        :parameters ()
        :precondition (and
            (= (belief_state) 1098)
        )
        :effect (and
            (assign (belief_state) 1141)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1098_to_990
        :parameters ()
        :precondition (and
            (= (belief_state) 1098)
        )
        :effect (and
            (assign (belief_state) 990)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1099_to_1142
        :parameters ()
        :precondition (and
            (= (belief_state) 1099)
        )
        :effect (and
            (assign (belief_state) 1142)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1099_to_1143
        :parameters ()
        :precondition (and
            (= (belief_state) 1099)
        )
        :effect (and
            (assign (belief_state) 1143)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1099_to_991
        :parameters ()
        :precondition (and
            (= (belief_state) 1099)
        )
        :effect (and
            (assign (belief_state) 991)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1100_to_1144
        :parameters ()
        :precondition (and
            (= (belief_state) 1100)
        )
        :effect (and
            (assign (belief_state) 1144)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1100_to_1145
        :parameters ()
        :precondition (and
            (= (belief_state) 1100)
        )
        :effect (and
            (assign (belief_state) 1145)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1100_to_992
        :parameters ()
        :precondition (and
            (= (belief_state) 1100)
        )
        :effect (and
            (assign (belief_state) 992)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1101_to_1146
        :parameters ()
        :precondition (and
            (= (belief_state) 1101)
        )
        :effect (and
            (assign (belief_state) 1146)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1101_to_1018
        :parameters ()
        :precondition (and
            (= (belief_state) 1101)
        )
        :effect (and
            (assign (belief_state) 1018)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1102_to_1147
        :parameters ()
        :precondition (and
            (= (belief_state) 1102)
        )
        :effect (and
            (assign (belief_state) 1147)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1102_to_1101
        :parameters ()
        :precondition (and
            (= (belief_state) 1102)
        )
        :effect (and
            (assign (belief_state) 1101)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1102_to_1021
        :parameters ()
        :precondition (and
            (= (belief_state) 1102)
        )
        :effect (and
            (assign (belief_state) 1021)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1103_to_1035
        :parameters ()
        :precondition (and
            (= (belief_state) 1103)
        )
        :effect (and
            (assign (belief_state) 1035)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1104_to_1103
        :parameters ()
        :precondition (and
            (= (belief_state) 1104)
        )
        :effect (and
            (assign (belief_state) 1103)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1104_to_1060
        :parameters ()
        :precondition (and
            (= (belief_state) 1104)
        )
        :effect (and
            (assign (belief_state) 1060)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1105_to_1148
        :parameters ()
        :precondition (and
            (= (belief_state) 1105)
        )
        :effect (and
            (assign (belief_state) 1148)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1105_to_1149
        :parameters ()
        :precondition (and
            (= (belief_state) 1105)
        )
        :effect (and
            (assign (belief_state) 1149)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1105_to_994
        :parameters ()
        :precondition (and
            (= (belief_state) 1105)
        )
        :effect (and
            (assign (belief_state) 994)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1106_to_1150
        :parameters ()
        :precondition (and
            (= (belief_state) 1106)
        )
        :effect (and
            (assign (belief_state) 1150)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1106_to_1151
        :parameters ()
        :precondition (and
            (= (belief_state) 1106)
        )
        :effect (and
            (assign (belief_state) 1151)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1106_to_995
        :parameters ()
        :precondition (and
            (= (belief_state) 1106)
        )
        :effect (and
            (assign (belief_state) 995)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1107_to_1152
        :parameters ()
        :precondition (and
            (= (belief_state) 1107)
        )
        :effect (and
            (assign (belief_state) 1152)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1107_to_1153
        :parameters ()
        :precondition (and
            (= (belief_state) 1107)
        )
        :effect (and
            (assign (belief_state) 1153)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1107_to_996
        :parameters ()
        :precondition (and
            (= (belief_state) 1107)
        )
        :effect (and
            (assign (belief_state) 996)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1108_to_1154
        :parameters ()
        :precondition (and
            (= (belief_state) 1108)
        )
        :effect (and
            (assign (belief_state) 1154)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1108_to_1019
        :parameters ()
        :precondition (and
            (= (belief_state) 1108)
        )
        :effect (and
            (assign (belief_state) 1019)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1109_to_1155
        :parameters ()
        :precondition (and
            (= (belief_state) 1109)
        )
        :effect (and
            (assign (belief_state) 1155)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1109_to_1108
        :parameters ()
        :precondition (and
            (= (belief_state) 1109)
        )
        :effect (and
            (assign (belief_state) 1108)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1109_to_1022
        :parameters ()
        :precondition (and
            (= (belief_state) 1109)
        )
        :effect (and
            (assign (belief_state) 1022)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1110_to_1037
        :parameters ()
        :precondition (and
            (= (belief_state) 1110)
        )
        :effect (and
            (assign (belief_state) 1037)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1111_to_1001
        :parameters ()
        :precondition (and
            (= (belief_state) 1111)
        )
        :effect (and
            (assign (belief_state) 1001)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1112_to_1038
        :parameters ()
        :precondition (and
            (= (belief_state) 1112)
        )
        :effect (and
            (assign (belief_state) 1038)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1113_to_1000
        :parameters ()
        :precondition (and
            (= (belief_state) 1113)
        )
        :effect (and
            (assign (belief_state) 1000)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1113_to_1003
        :parameters ()
        :precondition (and
            (= (belief_state) 1113)
        )
        :effect (and
            (assign (belief_state) 1003)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1114_to_1039
        :parameters ()
        :precondition (and
            (= (belief_state) 1114)
        )
        :effect (and
            (assign (belief_state) 1039)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1115_to_1156
        :parameters ()
        :precondition (and
            (= (belief_state) 1115)
        )
        :effect (and
            (assign (belief_state) 1156)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1115_to_1005
        :parameters ()
        :precondition (and
            (= (belief_state) 1115)
        )
        :effect (and
            (assign (belief_state) 1005)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1116_to_1006
        :parameters ()
        :precondition (and
            (= (belief_state) 1116)
        )
        :effect (and
            (assign (belief_state) 1006)
            (assign (goal_reached) 't')
        )
    )

    (:action left_room2_room1__from_1117_to_1157
        :parameters ()
        :precondition (and
            (= (belief_state) 1117)
        )
        :effect (and
            (assign (belief_state) 1157)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room2_room3__from_1117_to_1007
        :parameters ()
        :precondition (and
            (= (belief_state) 1117)
        )
        :effect (and
            (assign (belief_state) 1007)
            (assign (goal_reached) 't')
        )
    )

    (:action listen_room1__from_1118_to_1158
        :parameters ()
        :precondition (and
            (= (belief_state) 1118)
        )
        :effect (and
            (assign (belief_state) 1158)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1118_to_1008
        :parameters ()
        :precondition (and
            (= (belief_state) 1118)
        )
        :effect (and
            (assign (belief_state) 1008)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1119_to_1159
        :parameters ()
        :precondition (and
            (= (belief_state) 1119)
        )
        :effect (and
            (assign (belief_state) 1159)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1119_to_1020
        :parameters ()
        :precondition (and
            (= (belief_state) 1119)
        )
        :effect (and
            (assign (belief_state) 1020)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1120_to_1137
        :parameters ()
        :precondition (and
            (= (belief_state) 1120)
        )
        :effect (and
            (assign (belief_state) 1137)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1120_to_1041
        :parameters ()
        :precondition (and
            (= (belief_state) 1120)
        )
        :effect (and
            (assign (belief_state) 1041)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1121_to_1139
        :parameters ()
        :precondition (and
            (= (belief_state) 1121)
        )
        :effect (and
            (assign (belief_state) 1139)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1121_to_1120
        :parameters ()
        :precondition (and
            (= (belief_state) 1121)
        )
        :effect (and
            (assign (belief_state) 1120)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1121_to_1044
        :parameters ()
        :precondition (and
            (= (belief_state) 1121)
        )
        :effect (and
            (assign (belief_state) 1044)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1122_to_1142
        :parameters ()
        :precondition (and
            (= (belief_state) 1122)
        )
        :effect (and
            (assign (belief_state) 1142)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1122_to_831
        :parameters ()
        :precondition (and
            (= (belief_state) 1122)
        )
        :effect (and
            (assign (belief_state) 831)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1122_to_1045
        :parameters ()
        :precondition (and
            (= (belief_state) 1122)
        )
        :effect (and
            (assign (belief_state) 1045)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1123_to_1144
        :parameters ()
        :precondition (and
            (= (belief_state) 1123)
        )
        :effect (and
            (assign (belief_state) 1144)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1123_to_845
        :parameters ()
        :precondition (and
            (= (belief_state) 1123)
        )
        :effect (and
            (assign (belief_state) 845)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_1123_to_1038
        :parameters ()
        :precondition (and
            (= (belief_state) 1123)
        )
        :effect (and
            (assign (belief_state) 1038)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1123_to_1034
        :parameters ()
        :precondition (and
            (= (belief_state) 1123)
        )
        :effect (and
            (assign (belief_state) 1034)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1124_to_1148
        :parameters ()
        :precondition (and
            (= (belief_state) 1124)
        )
        :effect (and
            (assign (belief_state) 1148)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1124_to_1042
        :parameters ()
        :precondition (and
            (= (belief_state) 1124)
        )
        :effect (and
            (assign (belief_state) 1042)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1125_to_1150
        :parameters ()
        :precondition (and
            (= (belief_state) 1125)
        )
        :effect (and
            (assign (belief_state) 1150)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1125_to_1124
        :parameters ()
        :precondition (and
            (= (belief_state) 1125)
        )
        :effect (and
            (assign (belief_state) 1124)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1125_to_1046
        :parameters ()
        :precondition (and
            (= (belief_state) 1125)
        )
        :effect (and
            (assign (belief_state) 1046)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1126_to_1152
        :parameters ()
        :precondition (and
            (= (belief_state) 1126)
        )
        :effect (and
            (assign (belief_state) 1152)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1126_to_1037
        :parameters ()
        :precondition (and
            (= (belief_state) 1126)
        )
        :effect (and
            (assign (belief_state) 1037)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_1126_to_902
        :parameters ()
        :precondition (and
            (= (belief_state) 1126)
        )
        :effect (and
            (assign (belief_state) 902)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1126_to_1036
        :parameters ()
        :precondition (and
            (= (belief_state) 1126)
        )
        :effect (and
            (assign (belief_state) 1036)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1127_to_1156
        :parameters ()
        :precondition (and
            (= (belief_state) 1127)
        )
        :effect (and
            (assign (belief_state) 1156)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1127_to_1043
        :parameters ()
        :precondition (and
            (= (belief_state) 1127)
        )
        :effect (and
            (assign (belief_state) 1043)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1128_to_1158
        :parameters ()
        :precondition (and
            (= (belief_state) 1128)
        )
        :effect (and
            (assign (belief_state) 1158)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1128_to_1006
        :parameters ()
        :precondition (and
            (= (belief_state) 1128)
        )
        :effect (and
            (assign (belief_state) 1006)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room2_room3__from_1128_to_1040
        :parameters ()
        :precondition (and
            (= (belief_state) 1128)
        )
        :effect (and
            (assign (belief_state) 1040)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1129_to_1138
        :parameters ()
        :precondition (and
            (= (belief_state) 1129)
        )
        :effect (and
            (assign (belief_state) 1138)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1129_to_1062
        :parameters ()
        :precondition (and
            (= (belief_state) 1129)
        )
        :effect (and
            (assign (belief_state) 1062)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1130_to_1140
        :parameters ()
        :precondition (and
            (= (belief_state) 1130)
        )
        :effect (and
            (assign (belief_state) 1140)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1130_to_1129
        :parameters ()
        :precondition (and
            (= (belief_state) 1130)
        )
        :effect (and
            (assign (belief_state) 1129)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1130_to_1065
        :parameters ()
        :precondition (and
            (= (belief_state) 1130)
        )
        :effect (and
            (assign (belief_state) 1065)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1131_to_1141
        :parameters ()
        :precondition (and
            (= (belief_state) 1131)
        )
        :effect (and
            (assign (belief_state) 1141)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1131_to_1063
        :parameters ()
        :precondition (and
            (= (belief_state) 1131)
        )
        :effect (and
            (assign (belief_state) 1063)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1132_to_1143
        :parameters ()
        :precondition (and
            (= (belief_state) 1132)
        )
        :effect (and
            (assign (belief_state) 1143)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1132_to_1131
        :parameters ()
        :precondition (and
            (= (belief_state) 1132)
        )
        :effect (and
            (assign (belief_state) 1131)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1132_to_1066
        :parameters ()
        :precondition (and
            (= (belief_state) 1132)
        )
        :effect (and
            (assign (belief_state) 1066)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1133_to_1145
        :parameters ()
        :precondition (and
            (= (belief_state) 1133)
        )
        :effect (and
            (assign (belief_state) 1145)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1133_to_1003
        :parameters ()
        :precondition (and
            (= (belief_state) 1133)
        )
        :effect (and
            (assign (belief_state) 1003)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_1133_to_847
        :parameters ()
        :precondition (and
            (= (belief_state) 1133)
        )
        :effect (and
            (assign (belief_state) 847)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1133_to_1059
        :parameters ()
        :precondition (and
            (= (belief_state) 1133)
        )
        :effect (and
            (assign (belief_state) 1059)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1134_to_1149
        :parameters ()
        :precondition (and
            (= (belief_state) 1134)
        )
        :effect (and
            (assign (belief_state) 1149)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1134_to_1064
        :parameters ()
        :precondition (and
            (= (belief_state) 1134)
        )
        :effect (and
            (assign (belief_state) 1064)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1135_to_1151
        :parameters ()
        :precondition (and
            (= (belief_state) 1135)
        )
        :effect (and
            (assign (belief_state) 1151)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1135_to_1134
        :parameters ()
        :precondition (and
            (= (belief_state) 1135)
        )
        :effect (and
            (assign (belief_state) 1134)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1135_to_1067
        :parameters ()
        :precondition (and
            (= (belief_state) 1135)
        )
        :effect (and
            (assign (belief_state) 1067)
            (assign (goal_reached) 'f')
        )
    )

    (:action left_room2_room1__from_1136_to_1153
        :parameters ()
        :precondition (and
            (= (belief_state) 1136)
        )
        :effect (and
            (assign (belief_state) 1153)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room2__from_1136_to_844
        :parameters ()
        :precondition (and
            (= (belief_state) 1136)
        )
        :effect (and
            (assign (belief_state) 844)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room2__from_1136_to_646
        :parameters ()
        :precondition (and
            (= (belief_state) 1136)
        )
        :effect (and
            (assign (belief_state) 646)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room2_room3__from_1136_to_1061
        :parameters ()
        :precondition (and
            (= (belief_state) 1136)
        )
        :effect (and
            (assign (belief_state) 1061)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1137_to_1120
        :parameters ()
        :precondition (and
            (= (belief_state) 1137)
        )
        :effect (and
            (assign (belief_state) 1120)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1138_to_1137
        :parameters ()
        :precondition (and
            (= (belief_state) 1138)
        )
        :effect (and
            (assign (belief_state) 1137)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1138_to_1129
        :parameters ()
        :precondition (and
            (= (belief_state) 1138)
        )
        :effect (and
            (assign (belief_state) 1129)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1139_to_1121
        :parameters ()
        :precondition (and
            (= (belief_state) 1139)
        )
        :effect (and
            (assign (belief_state) 1121)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1140_to_1139
        :parameters ()
        :precondition (and
            (= (belief_state) 1140)
        )
        :effect (and
            (assign (belief_state) 1139)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1140_to_1130
        :parameters ()
        :precondition (and
            (= (belief_state) 1140)
        )
        :effect (and
            (assign (belief_state) 1130)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1141_to_984
        :parameters ()
        :precondition (and
            (= (belief_state) 1141)
        )
        :effect (and
            (assign (belief_state) 984)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1141_to_1131
        :parameters ()
        :precondition (and
            (= (belief_state) 1141)
        )
        :effect (and
            (assign (belief_state) 1131)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1142_to_1122
        :parameters ()
        :precondition (and
            (= (belief_state) 1142)
        )
        :effect (and
            (assign (belief_state) 1122)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1143_to_1142
        :parameters ()
        :precondition (and
            (= (belief_state) 1143)
        )
        :effect (and
            (assign (belief_state) 1142)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1143_to_1132
        :parameters ()
        :precondition (and
            (= (belief_state) 1143)
        )
        :effect (and
            (assign (belief_state) 1132)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1144_to_1123
        :parameters ()
        :precondition (and
            (= (belief_state) 1144)
        )
        :effect (and
            (assign (belief_state) 1123)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1145_to_1144
        :parameters ()
        :precondition (and
            (= (belief_state) 1145)
        )
        :effect (and
            (assign (belief_state) 1144)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1145_to_1133
        :parameters ()
        :precondition (and
            (= (belief_state) 1145)
        )
        :effect (and
            (assign (belief_state) 1133)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1146_to_1000
        :parameters ()
        :precondition (and
            (= (belief_state) 1146)
        )
        :effect (and
            (assign (belief_state) 1000)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1146_to_1113
        :parameters ()
        :precondition (and
            (= (belief_state) 1146)
        )
        :effect (and
            (assign (belief_state) 1113)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1146_to_1101
        :parameters ()
        :precondition (and
            (= (belief_state) 1146)
        )
        :effect (and
            (assign (belief_state) 1101)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1147_to_1112
        :parameters ()
        :precondition (and
            (= (belief_state) 1147)
        )
        :effect (and
            (assign (belief_state) 1112)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1147_to_1002
        :parameters ()
        :precondition (and
            (= (belief_state) 1147)
        )
        :effect (and
            (assign (belief_state) 1002)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1147_to_1102
        :parameters ()
        :precondition (and
            (= (belief_state) 1147)
        )
        :effect (and
            (assign (belief_state) 1102)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1148_to_1124
        :parameters ()
        :precondition (and
            (= (belief_state) 1148)
        )
        :effect (and
            (assign (belief_state) 1124)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1149_to_1148
        :parameters ()
        :precondition (and
            (= (belief_state) 1149)
        )
        :effect (and
            (assign (belief_state) 1148)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1149_to_1134
        :parameters ()
        :precondition (and
            (= (belief_state) 1149)
        )
        :effect (and
            (assign (belief_state) 1134)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1150_to_1125
        :parameters ()
        :precondition (and
            (= (belief_state) 1150)
        )
        :effect (and
            (assign (belief_state) 1125)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1151_to_1150
        :parameters ()
        :precondition (and
            (= (belief_state) 1151)
        )
        :effect (and
            (assign (belief_state) 1150)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1151_to_1135
        :parameters ()
        :precondition (and
            (= (belief_state) 1151)
        )
        :effect (and
            (assign (belief_state) 1135)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1152_to_1126
        :parameters ()
        :precondition (and
            (= (belief_state) 1152)
        )
        :effect (and
            (assign (belief_state) 1126)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1153_to_1152
        :parameters ()
        :precondition (and
            (= (belief_state) 1153)
        )
        :effect (and
            (assign (belief_state) 1152)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1153_to_1136
        :parameters ()
        :precondition (and
            (= (belief_state) 1153)
        )
        :effect (and
            (assign (belief_state) 1136)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1154_to_1110
        :parameters ()
        :precondition (and
            (= (belief_state) 1154)
        )
        :effect (and
            (assign (belief_state) 1110)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1154_to_999
        :parameters ()
        :precondition (and
            (= (belief_state) 1154)
        )
        :effect (and
            (assign (belief_state) 999)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1154_to_1108
        :parameters ()
        :precondition (and
            (= (belief_state) 1154)
        )
        :effect (and
            (assign (belief_state) 1108)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1155_to_998
        :parameters ()
        :precondition (and
            (= (belief_state) 1155)
        )
        :effect (and
            (assign (belief_state) 998)
            (assign (goal_reached) 'f')
        )
    )

    (:action look_room1__from_1155_to_843
        :parameters ()
        :precondition (and
            (= (belief_state) 1155)
        )
        :effect (and
            (assign (belief_state) 843)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1155_to_1109
        :parameters ()
        :precondition (and
            (= (belief_state) 1155)
        )
        :effect (and
            (assign (belief_state) 1109)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1156_to_1127
        :parameters ()
        :precondition (and
            (= (belief_state) 1156)
        )
        :effect (and
            (assign (belief_state) 1127)
            (assign (goal_reached) 'f')
        )
    )

    (:action right_room1_room2__from_1157_to_1117
        :parameters ()
        :precondition (and
            (= (belief_state) 1157)
        )
        :effect (and
            (assign (belief_state) 1117)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room1_room2__from_1158_to_1128
        :parameters ()
        :precondition (and
            (= (belief_state) 1158)
        )
        :effect (and
            (assign (belief_state) 1128)
            (assign (goal_reached) 'f')
        )
    )

    (:action listen_room1__from_1159_to_1116
        :parameters ()
        :precondition (and
            (= (belief_state) 1159)
        )
        :effect (and
            (assign (belief_state) 1116)
            (assign (goal_reached) 't')
        )
    )

    (:action right_room1_room2__from_1159_to_1119
        :parameters ()
        :precondition (and
            (= (belief_state) 1159)
        )
        :effect (and
            (assign (belief_state) 1119)
            (assign (goal_reached) 'f')
        )
    )

)
