lbl_803DE148:
/* 803DE148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE14C  7C 08 02 A6 */	mflr r0
/* 803DE150  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE154  4B FB CB D9 */	bl mEv_CheckFirstIntro
/* 803DE158  2C 03 00 00 */	cmpwi r3, 0
/* 803DE15C  40 82 00 34 */	bne lbl_803DE190
/* 803DE160  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DE164  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DE168  3C 63 00 03 */	addis r3, r3, 3
/* 803DE16C  88 03 88 68 */	lbz r0, -0x7798(r3)
/* 803DE170  28 00 00 00 */	cmplwi r0, 0
/* 803DE174  40 82 00 1C */	bne lbl_803DE190
/* 803DE178  88 03 88 39 */	lbz r0, -0x77c7(r3)
/* 803DE17C  7C 00 07 75 */	extsb. r0, r0
/* 803DE180  40 82 00 10 */	bne lbl_803DE190
/* 803DE184  4B FB CD 35 */	bl mEv_CheckTitleDemo
/* 803DE188  2C 03 00 00 */	cmpwi r3, 0
/* 803DE18C  40 81 00 0C */	ble lbl_803DE198
lbl_803DE190:
/* 803DE190  38 60 00 00 */	li r3, 0
/* 803DE194  48 00 00 08 */	b lbl_803DE19C
lbl_803DE198:
/* 803DE198  38 60 00 01 */	li r3, 1
lbl_803DE19C:
/* 803DE19C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE1A0  7C 08 03 A6 */	mtlr r0
/* 803DE1A4  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE1A8  4E 80 00 20 */	blr 
