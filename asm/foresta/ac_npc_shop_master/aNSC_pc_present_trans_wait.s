lbl_8057B6C8:
/* 8057B6C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B6CC  7C 08 02 A6 */	mflr r0
/* 8057B6D0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057B6D4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057B6D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B6DC  3C A5 00 02 */	addis r5, r5, 2
/* 8057B6E0  80 A5 60 94 */	lwz r5, 0x6094(r5)
/* 8057B6E4  80 05 00 10 */	lwz r0, 0x10(r5)
/* 8057B6E8  7C 00 18 40 */	cmplw r0, r3
/* 8057B6EC  41 82 00 0C */	beq lbl_8057B6F8
/* 8057B6F0  38 A0 00 3C */	li r5, 0x3c
/* 8057B6F4  48 00 0D C1 */	bl aNSC_setupAction
lbl_8057B6F8:
/* 8057B6F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B6FC  7C 08 03 A6 */	mtlr r0
/* 8057B700  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B704  4E 80 00 20 */	blr 
