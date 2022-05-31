lbl_804ECBCC:
/* 804ECBCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ECBD0  7C 08 02 A6 */	mflr r0
/* 804ECBD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ECBD8  4B EE CA 69 */	bl get_player_actor_withoutCheck
/* 804ECBDC  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804ECBE0  2C 00 00 1B */	cmpwi r0, 0x1b
/* 804ECBE4  41 82 00 08 */	beq lbl_804ECBEC
/* 804ECBE8  48 00 00 0C */	b lbl_804ECBF4
lbl_804ECBEC:
/* 804ECBEC  38 60 00 01 */	li r3, 1
/* 804ECBF0  48 00 00 08 */	b lbl_804ECBF8
lbl_804ECBF4:
/* 804ECBF4  38 60 00 00 */	li r3, 0
lbl_804ECBF8:
/* 804ECBF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ECBFC  7C 08 03 A6 */	mtlr r0
/* 804ECC00  38 21 00 10 */	addi r1, r1, 0x10
/* 804ECC04  4E 80 00 20 */	blr 
