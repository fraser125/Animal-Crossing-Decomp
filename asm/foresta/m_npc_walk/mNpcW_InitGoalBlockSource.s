lbl_803D82BC:
/* 803D82BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D82C0  7C 08 02 A6 */	mflr r0
/* 803D82C4  38 A0 00 04 */	li r5, 4
/* 803D82C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D82CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D82D0  7C 9F 23 78 */	mr r31, r4
/* 803D82D4  38 81 00 08 */	addi r4, r1, 8
/* 803D82D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803D82DC  7C 7E 1B 78 */	mr r30, r3
/* 803D82E0  38 61 00 0C */	addi r3, r1, 0xc
/* 803D82E4  4B FC E1 1D */	bl mFI_BlockKind2BkNum
/* 803D82E8  2C 03 00 00 */	cmpwi r3, 0
/* 803D82EC  40 82 00 14 */	bne lbl_803D8300
/* 803D82F0  38 60 00 04 */	li r3, 4
/* 803D82F4  38 00 00 03 */	li r0, 3
/* 803D82F8  90 61 00 0C */	stw r3, 0xc(r1)
/* 803D82FC  90 01 00 08 */	stw r0, 8(r1)
lbl_803D8300:
/* 803D8300  3C 60 81 17 */	lis r3, data_8116ED80@ha /* 0x8116ED80@ha */
/* 803D8304  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803D8308  38 A3 ED 80 */	addi r5, r3, data_8116ED80@l /* 0x8116ED80@l */
/* 803D830C  80 01 00 08 */	lwz r0, 8(r1)
/* 803D8310  90 85 00 00 */	stw r4, 0(r5)
/* 803D8314  7F C3 F3 78 */	mr r3, r30
/* 803D8318  7F E4 FB 78 */	mr r4, r31
/* 803D831C  90 05 00 04 */	stw r0, 4(r5)
/* 803D8320  4B FF FD F5 */	bl mNpcW_SetHomeBlockSource
/* 803D8324  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D8328  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D832C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803D8330  7C 08 03 A6 */	mtlr r0
/* 803D8334  38 21 00 20 */	addi r1, r1, 0x20
/* 803D8338  4E 80 00 20 */	blr 
