lbl_803DB0A8:
/* 803DB0A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB0AC  7C 08 02 A6 */	mflr r0
/* 803DB0B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB0B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB0B8  3B E0 00 00 */	li r31, 0
/* 803DB0BC  93 C1 00 08 */	stw r30, 8(r1)
/* 803DB0C0  7C 7E 1B 78 */	mr r30, r3
/* 803DB0C4  4B FF E5 7D */	bl get_player_actor_withoutCheck
/* 803DB0C8  81 83 12 FC */	lwz r12, 0x12fc(r3)
/* 803DB0CC  7F C3 F3 78 */	mr r3, r30
/* 803DB0D0  38 80 00 07 */	li r4, 7
/* 803DB0D4  7D 89 03 A6 */	mtctr r12
/* 803DB0D8  4E 80 04 21 */	bctrl 
/* 803DB0DC  2C 03 00 00 */	cmpwi r3, 0
/* 803DB0E0  40 81 00 28 */	ble lbl_803DB108
/* 803DB0E4  7F C3 F3 78 */	mr r3, r30
/* 803DB0E8  4B FF E5 59 */	bl get_player_actor_withoutCheck
/* 803DB0EC  81 83 13 30 */	lwz r12, 0x1330(r3)
/* 803DB0F0  38 60 00 10 */	li r3, 0x10
/* 803DB0F4  7D 89 03 A6 */	mtctr r12
/* 803DB0F8  4E 80 04 21 */	bctrl 
/* 803DB0FC  2C 03 00 00 */	cmpwi r3, 0
/* 803DB100  40 82 00 08 */	bne lbl_803DB108
/* 803DB104  3B E0 00 01 */	li r31, 1
lbl_803DB108:
/* 803DB108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB10C  7F E3 FB 78 */	mr r3, r31
/* 803DB110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB114  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DB118  7C 08 03 A6 */	mtlr r0
/* 803DB11C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB120  4E 80 00 20 */	blr 
