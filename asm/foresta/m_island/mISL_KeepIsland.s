lbl_803B3BFC:
/* 803B3BFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B3C00  7C 08 02 A6 */	mflr r0
/* 803B3C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3C08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B3C0C  7C 7F 1B 78 */	mr r31, r3
/* 803B3C10  A0 83 00 12 */	lhz r4, 0x12(r3)
/* 803B3C14  38 7F 00 08 */	addi r3, r31, 8
/* 803B3C18  4B FF FF 21 */	bl mLd_CheckThisLand
/* 803B3C1C  2C 03 00 01 */	cmpwi r3, 1
/* 803B3C20  40 82 00 18 */	bne lbl_803B3C38
/* 803B3C24  3C 80 81 17 */	lis r4, data_81168278@ha /* 0x81168278@ha */
/* 803B3C28  7F E3 FB 78 */	mr r3, r31
/* 803B3C2C  38 84 82 78 */	addi r4, r4, data_81168278@l /* 0x81168278@l */
/* 803B3C30  38 A0 19 00 */	li r5, 0x1900
/* 803B3C34  4B CA 93 E9 */	bl func_8005D01C
lbl_803B3C38:
/* 803B3C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B3C3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B3C40  7C 08 03 A6 */	mtlr r0
/* 803B3C44  38 21 00 10 */	addi r1, r1, 0x10
/* 803B3C48  4E 80 00 20 */	blr 
