lbl_804B5EE8:
/* 804B5EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804B5EEC  7C 08 02 A6 */	mflr r0
/* 804B5EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B5EF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804B5EF8  7C BF 2B 78 */	mr r31, r5
/* 804B5EFC  3C 7F 00 01 */	addis r3, r31, 1
/* 804B5F00  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804B5F04  4B FF D5 81 */	bl bIT_actor_drop_destruct
/* 804B5F08  3C 7F 00 01 */	addis r3, r31, 1
/* 804B5F0C  38 63 25 D4 */	addi r3, r3, 0x25d4
/* 804B5F10  4B FF D5 75 */	bl bIT_actor_drop_destruct
/* 804B5F14  3C 7F 00 01 */	addis r3, r31, 1
/* 804B5F18  38 63 37 B0 */	addi r3, r3, 0x37b0
/* 804B5F1C  4B FF CA AD */	bl bIT_actor_hole_effect_destruct
/* 804B5F20  3C 7F 00 01 */	addis r3, r31, 1
/* 804B5F24  38 63 25 DC */	addi r3, r3, 0x25dc
/* 804B5F28  4B FF F3 9D */	bl bIT_actor_pit_destruct
/* 804B5F2C  3C 7F 00 01 */	addis r3, r31, 1
/* 804B5F30  38 63 37 E4 */	addi r3, r3, 0x37e4
/* 804B5F34  4B FF AE 9D */	bl bIT_actor_ten_coin_destruct
/* 804B5F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804B5F3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804B5F40  7C 08 03 A6 */	mtlr r0
/* 804B5F44  38 21 00 10 */	addi r1, r1, 0x10
/* 804B5F48  4E 80 00 20 */	blr 
