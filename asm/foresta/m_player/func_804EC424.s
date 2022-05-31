lbl_804EC424:
/* 804EC424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EC428  7C 08 02 A6 */	mflr r0
/* 804EC42C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EC430  4B EE D2 11 */	bl get_player_actor_withoutCheck
/* 804EC434  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804EC438  2C 00 00 1B */	cmpwi r0, 0x1b
/* 804EC43C  41 82 00 24 */	beq lbl_804EC460
/* 804EC440  40 80 00 10 */	bge lbl_804EC450
/* 804EC444  2C 00 00 1A */	cmpwi r0, 0x1a
/* 804EC448  40 80 00 10 */	bge lbl_804EC458
/* 804EC44C  48 00 00 14 */	b lbl_804EC460
lbl_804EC450:
/* 804EC450  2C 00 00 1D */	cmpwi r0, 0x1d
/* 804EC454  40 80 00 0C */	bge lbl_804EC460
lbl_804EC458:
/* 804EC458  38 60 00 01 */	li r3, 1
/* 804EC45C  48 00 00 08 */	b lbl_804EC464
lbl_804EC460:
/* 804EC460  38 60 00 00 */	li r3, 0
lbl_804EC464:
/* 804EC464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EC468  7C 08 03 A6 */	mtlr r0
/* 804EC46C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EC470  4E 80 00 20 */	blr 
