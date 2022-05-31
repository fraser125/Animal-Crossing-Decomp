lbl_803DAF10:
/* 803DAF10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DAF14  7C 08 02 A6 */	mflr r0
/* 803DAF18  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DAF1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DAF20  7C 7F 1B 78 */	mr r31, r3
/* 803DAF24  4B FF E7 1D */	bl get_player_actor_withoutCheck
/* 803DAF28  81 83 12 D0 */	lwz r12, 0x12d0(r3)
/* 803DAF2C  7F E3 FB 78 */	mr r3, r31
/* 803DAF30  38 80 00 13 */	li r4, 0x13
/* 803DAF34  7D 89 03 A6 */	mtctr r12
/* 803DAF38  4E 80 04 21 */	bctrl 
/* 803DAF3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DAF40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DAF44  7C 08 03 A6 */	mtlr r0
/* 803DAF48  38 21 00 10 */	addi r1, r1, 0x10
/* 803DAF4C  4E 80 00 20 */	blr 
