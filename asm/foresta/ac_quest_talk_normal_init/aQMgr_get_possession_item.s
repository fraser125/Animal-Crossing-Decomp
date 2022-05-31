lbl_804918C4:
/* 804918C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804918C8  7C 08 02 A6 */	mflr r0
/* 804918CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804918D0  38 80 2D 00 */	li r4, 0x2d00
/* 804918D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804918D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804918DC  3C 63 00 02 */	addis r3, r3, 2
/* 804918E0  38 A0 2D 28 */	li r5, 0x2d28
/* 804918E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804918E8  38 C0 00 00 */	li r6, 0
/* 804918EC  83 E3 61 3C */	lwz r31, 0x613c(r3)
/* 804918F0  7F E3 FB 78 */	mr r3, r31
/* 804918F4  4B F4 F0 2D */	bl mPr_GetPossessionItemIdxKindWithCond
/* 804918F8  2C 03 FF FF */	cmpwi r3, -1
/* 804918FC  40 82 00 18 */	bne lbl_80491914
/* 80491900  7F E3 FB 78 */	mr r3, r31
/* 80491904  38 80 23 00 */	li r4, 0x2300
/* 80491908  38 A0 23 28 */	li r5, 0x2328
/* 8049190C  38 C0 00 00 */	li r6, 0
/* 80491910  4B F4 F0 11 */	bl mPr_GetPossessionItemIdxKindWithCond
lbl_80491914:
/* 80491914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80491918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049191C  7C 08 03 A6 */	mtlr r0
/* 80491920  38 21 00 10 */	addi r1, r1, 0x10
/* 80491924  4E 80 00 20 */	blr 
