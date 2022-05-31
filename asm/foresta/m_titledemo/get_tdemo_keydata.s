lbl_803F1FB0:
/* 803F1FB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F1FB4  7C 08 02 A6 */	mflr r0
/* 803F1FB8  3C 80 80 64 */	lis r4, data_80643244@ha /* 0x80643244@ha */
/* 803F1FBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F1FC0  38 84 32 44 */	addi r4, r4, data_80643244@l /* 0x80643244@l */
/* 803F1FC4  38 00 00 02 */	li r0, 2
/* 803F1FC8  38 A1 00 04 */	addi r5, r1, 4
/* 803F1FCC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803F1FD0  7C 7F 1B 78 */	mr r31, r3
/* 803F1FD4  38 84 FF FC */	addi r4, r4, -4
/* 803F1FD8  7C 09 03 A6 */	mtctr r0
lbl_803F1FDC:
/* 803F1FDC  80 64 00 04 */	lwz r3, 4(r4)
/* 803F1FE0  84 04 00 08 */	lwzu r0, 8(r4)
/* 803F1FE4  90 65 00 04 */	stw r3, 4(r5)
/* 803F1FE8  94 05 00 08 */	stwu r0, 8(r5)
/* 803F1FEC  42 00 FF F0 */	bdnz lbl_803F1FDC
/* 803F1FF0  80 04 00 04 */	lwz r0, 4(r4)
/* 803F1FF4  90 05 00 04 */	stw r0, 4(r5)
/* 803F1FF8  4B FA 8E C1 */	bl mEv_CheckTitleDemo
/* 803F1FFC  54 60 10 3A */	slwi r0, r3, 2
/* 803F2000  38 61 00 04 */	addi r3, r1, 4
/* 803F2004  7C 63 00 2E */	lwzx r3, r3, r0
/* 803F2008  57 E0 08 3C */	slwi r0, r31, 1
/* 803F200C  7C 63 02 2E */	lhzx r3, r3, r0
/* 803F2010  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803F2014  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F2018  7C 08 03 A6 */	mtlr r0
/* 803F201C  38 21 00 30 */	addi r1, r1, 0x30
/* 803F2020  4E 80 00 20 */	blr 
