lbl_803F2764:
/* 803F2764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F2768  7C 08 02 A6 */	mflr r0
/* 803F276C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F2770  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F2774  3B E0 00 00 */	li r31, 0
/* 803F2778  4B FA 87 41 */	bl mEv_CheckTitleDemo
/* 803F277C  2C 03 00 00 */	cmpwi r3, 0
/* 803F2780  41 82 00 14 */	beq lbl_803F2794
/* 803F2784  2C 03 00 01 */	cmpwi r3, 1
/* 803F2788  41 82 00 0C */	beq lbl_803F2794
/* 803F278C  2C 03 FF F7 */	cmpwi r3, -9
/* 803F2790  40 82 00 28 */	bne lbl_803F27B8
lbl_803F2794:
/* 803F2794  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F2798  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F279C  3C 63 00 02 */	addis r3, r3, 2
/* 803F27A0  88 03 60 02 */	lbz r0, 0x6002(r3)
/* 803F27A4  28 00 00 02 */	cmplwi r0, 2
/* 803F27A8  41 82 00 10 */	beq lbl_803F27B8
/* 803F27AC  28 00 00 03 */	cmplwi r0, 3
/* 803F27B0  41 82 00 08 */	beq lbl_803F27B8
/* 803F27B4  3B E0 00 01 */	li r31, 1
lbl_803F27B8:
/* 803F27B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F27BC  7F E3 FB 78 */	mr r3, r31
/* 803F27C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F27C4  7C 08 03 A6 */	mtlr r0
/* 803F27C8  38 21 00 10 */	addi r1, r1, 0x10
/* 803F27CC  4E 80 00 20 */	blr 
