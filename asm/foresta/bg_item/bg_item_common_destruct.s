lbl_804BD26C:
/* 804BD26C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BD270  7C 08 02 A6 */	mflr r0
/* 804BD274  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BD278  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BD27C  7C BF 2B 78 */	mr r31, r5
/* 804BD280  3C 7F 00 01 */	addis r3, r31, 1
/* 804BD284  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804BD288  4B FF D5 81 */	bl bIT_actor_drop_destruct
/* 804BD28C  3C 7F 00 01 */	addis r3, r31, 1
/* 804BD290  38 63 25 D4 */	addi r3, r3, 0x25d4
/* 804BD294  4B FF D5 75 */	bl bIT_actor_drop_destruct
/* 804BD298  3C 7F 00 01 */	addis r3, r31, 1
/* 804BD29C  38 63 37 B0 */	addi r3, r3, 0x37b0
/* 804BD2A0  4B FF CA AD */	bl bIT_actor_hole_effect_destruct
/* 804BD2A4  3C 7F 00 01 */	addis r3, r31, 1
/* 804BD2A8  38 63 25 DC */	addi r3, r3, 0x25dc
/* 804BD2AC  4B FF F3 9D */	bl bIT_actor_pit_destruct
/* 804BD2B0  3C 7F 00 01 */	addis r3, r31, 1
/* 804BD2B4  38 63 37 E4 */	addi r3, r3, 0x37e4
/* 804BD2B8  4B FF AE 9D */	bl bIT_actor_ten_coin_destruct
/* 804BD2BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BD2C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BD2C4  7C 08 03 A6 */	mtlr r0
/* 804BD2C8  38 21 00 10 */	addi r1, r1, 0x10
/* 804BD2CC  4E 80 00 20 */	blr 
