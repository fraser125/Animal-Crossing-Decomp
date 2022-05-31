lbl_804C4D64:
/* 804C4D64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C4D68  7C 08 02 A6 */	mflr r0
/* 804C4D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C4D70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C4D74  7C BF 2B 78 */	mr r31, r5
/* 804C4D78  3C 7F 00 01 */	addis r3, r31, 1
/* 804C4D7C  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804C4D80  4B FF D5 81 */	bl bIT_actor_drop_destruct
/* 804C4D84  3C 7F 00 01 */	addis r3, r31, 1
/* 804C4D88  38 63 25 D4 */	addi r3, r3, 0x25d4
/* 804C4D8C  4B FF D5 75 */	bl bIT_actor_drop_destruct
/* 804C4D90  3C 7F 00 01 */	addis r3, r31, 1
/* 804C4D94  38 63 37 B0 */	addi r3, r3, 0x37b0
/* 804C4D98  4B FF CA AD */	bl bIT_actor_hole_effect_destruct
/* 804C4D9C  3C 7F 00 01 */	addis r3, r31, 1
/* 804C4DA0  38 63 25 DC */	addi r3, r3, 0x25dc
/* 804C4DA4  4B FF F3 9D */	bl bIT_actor_pit_destruct
/* 804C4DA8  3C 7F 00 01 */	addis r3, r31, 1
/* 804C4DAC  38 63 37 E4 */	addi r3, r3, 0x37e4
/* 804C4DB0  4B FF AE 9D */	bl bIT_actor_ten_coin_destruct
/* 804C4DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C4DB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C4DBC  7C 08 03 A6 */	mtlr r0
/* 804C4DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 804C4DC4  4E 80 00 20 */	blr 
