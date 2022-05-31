lbl_804EC848:
/* 804EC848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EC84C  7C 08 02 A6 */	mflr r0
/* 804EC850  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EC854  4B EE CD ED */	bl get_player_actor_withoutCheck
/* 804EC858  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804EC85C  2C 00 00 1B */	cmpwi r0, 0x1b
/* 804EC860  41 82 00 08 */	beq lbl_804EC868
/* 804EC864  48 00 00 0C */	b lbl_804EC870
lbl_804EC868:
/* 804EC868  38 60 00 01 */	li r3, 1
/* 804EC86C  48 00 00 08 */	b lbl_804EC874
lbl_804EC870:
/* 804EC870  38 60 00 00 */	li r3, 0
lbl_804EC874:
/* 804EC874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EC878  7C 08 03 A6 */	mtlr r0
/* 804EC87C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EC880  4E 80 00 20 */	blr 
