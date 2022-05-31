lbl_804CC17C:
/* 804CC17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CC180  7C 08 02 A6 */	mflr r0
/* 804CC184  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CC188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CC18C  7C BF 2B 78 */	mr r31, r5
/* 804CC190  3C 7F 00 01 */	addis r3, r31, 1
/* 804CC194  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804CC198  4B FF D5 81 */	bl bIT_actor_drop_destruct
/* 804CC19C  3C 7F 00 01 */	addis r3, r31, 1
/* 804CC1A0  38 63 25 D4 */	addi r3, r3, 0x25d4
/* 804CC1A4  4B FF D5 75 */	bl bIT_actor_drop_destruct
/* 804CC1A8  3C 7F 00 01 */	addis r3, r31, 1
/* 804CC1AC  38 63 37 B0 */	addi r3, r3, 0x37b0
/* 804CC1B0  4B FF CA AD */	bl bIT_actor_hole_effect_destruct
/* 804CC1B4  3C 7F 00 01 */	addis r3, r31, 1
/* 804CC1B8  38 63 25 DC */	addi r3, r3, 0x25dc
/* 804CC1BC  4B FF F3 9D */	bl bIT_actor_pit_destruct
/* 804CC1C0  3C 7F 00 01 */	addis r3, r31, 1
/* 804CC1C4  38 63 37 E4 */	addi r3, r3, 0x37e4
/* 804CC1C8  4B FF AE 9D */	bl bIT_actor_ten_coin_destruct
/* 804CC1CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CC1D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CC1D4  7C 08 03 A6 */	mtlr r0
/* 804CC1D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804CC1DC  4E 80 00 20 */	blr 
