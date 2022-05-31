lbl_8048AF6C:
/* 8048AF6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048AF70  7C 08 02 A6 */	mflr r0
/* 8048AF74  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048AF78  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8048AF7C  2C 00 00 05 */	cmpwi r0, 5
/* 8048AF80  40 82 00 3C */	bne lbl_8048AFBC
/* 8048AF84  80 A3 00 24 */	lwz r5, 0x24(r3)
/* 8048AF88  38 61 00 08 */	addi r3, r1, 8
/* 8048AF8C  38 80 00 10 */	li r4, 0x10
/* 8048AF90  38 C0 00 0A */	li r6, 0xa
/* 8048AF94  38 E0 00 01 */	li r7, 1
/* 8048AF98  39 00 00 00 */	li r8, 0
/* 8048AF9C  39 20 00 01 */	li r9, 1
/* 8048AFA0  4B F2 44 D9 */	bl mFont_UnintToString
/* 8048AFA4  4B F3 47 05 */	bl func_803BF6A8
/* 8048AFA8  38 A1 00 08 */	addi r5, r1, 8
/* 8048AFAC  38 80 00 09 */	li r4, 9
/* 8048AFB0  38 C0 00 10 */	li r6, 0x10
/* 8048AFB4  4B F3 4C A1 */	bl mMsg_Set_free_str
/* 8048AFB8  48 00 00 10 */	b lbl_8048AFC8
lbl_8048AFBC:
/* 8048AFBC  A0 63 00 20 */	lhz r3, 0x20(r3)
/* 8048AFC0  38 80 00 00 */	li r4, 0
/* 8048AFC4  4B F5 86 71 */	bl mQst_SetItemNameStr
lbl_8048AFC8:
/* 8048AFC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048AFCC  7C 08 03 A6 */	mtlr r0
/* 8048AFD0  38 21 00 20 */	addi r1, r1, 0x20
/* 8048AFD4  4E 80 00 20 */	blr 
