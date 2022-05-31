lbl_804FFB24:
/* 804FFB24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FFB28  7C 08 02 A6 */	mflr r0
/* 804FFB2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FFB30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FFB34  7C 9F 23 78 */	mr r31, r4
/* 804FFB38  80 03 0D 38 */	lwz r0, 0xd38(r3)
/* 804FFB3C  2C 00 00 00 */	cmpwi r0, 0
/* 804FFB40  41 82 00 14 */	beq lbl_804FFB54
/* 804FFB44  4B FD 58 29 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804FFB48  7F E3 FB 78 */	mr r3, r31
/* 804FFB4C  38 80 00 13 */	li r4, 0x13
/* 804FFB50  48 00 00 6D */	bl func_804FFBBC
lbl_804FFB54:
/* 804FFB54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FFB58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FFB5C  7C 08 03 A6 */	mtlr r0
/* 804FFB60  38 21 00 10 */	addi r1, r1, 0x10
/* 804FFB64  4E 80 00 20 */	blr 
