lbl_8054CAFC:
/* 8054CAFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054CB00  7C 08 02 A6 */	mflr r0
/* 8054CB04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054CB08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054CB0C  83 E4 1F 60 */	lwz r31, 0x1f60(r4)
/* 8054CB10  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8054CB14  4B E7 AE 15 */	bl mMmd_RequestMuseumDisplay
/* 8054CB18  2C 03 00 01 */	cmpwi r3, 1
/* 8054CB1C  40 82 00 24 */	bne lbl_8054CB40
/* 8054CB20  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054CB24  88 9F 00 02 */	lbz r4, 2(r31)
/* 8054CB28  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054CB2C  38 A0 00 00 */	li r5, 0
/* 8054CB30  3C 63 00 02 */	addis r3, r3, 2
/* 8054CB34  38 C0 00 00 */	li r6, 0
/* 8054CB38  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8054CB3C  4B E9 42 ED */	bl mPr_SetPossessionItem
lbl_8054CB40:
/* 8054CB40  4B E7 2B 69 */	bl func_803BF6A8
/* 8054CB44  4B E7 41 FD */	bl mMsg_Set_LockContinue
/* 8054CB48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054CB4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054CB50  7C 08 03 A6 */	mtlr r0
/* 8054CB54  38 21 00 10 */	addi r1, r1, 0x10
/* 8054CB58  4E 80 00 20 */	blr 
