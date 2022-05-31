lbl_80529A98:
/* 80529A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529A9C  7C 08 02 A6 */	mflr r0
/* 80529AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80529AA8  7C 7F 1B 78 */	mr r31, r3
/* 80529AAC  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80529AB0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80529AB4  2C 00 00 01 */	cmpwi r0, 1
/* 80529AB8  40 82 00 50 */	bne lbl_80529B08
/* 80529ABC  80 1F 08 A0 */	lwz r0, 0x8a0(r31)
/* 80529AC0  28 00 00 00 */	cmplwi r0, 0
/* 80529AC4  40 82 00 44 */	bne lbl_80529B08
/* 80529AC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80529ACC  7F E5 FB 78 */	mr r5, r31
/* 80529AD0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80529AD4  7C 86 23 78 */	mr r6, r4
/* 80529AD8  3C 83 00 02 */	addis r4, r3, 2
/* 80529ADC  38 60 00 2E */	li r3, 0x2e
/* 80529AE0  81 24 60 A0 */	lwz r9, 0x60a0(r4)
/* 80529AE4  38 80 00 04 */	li r4, 4
/* 80529AE8  38 E0 FF FF */	li r7, -1
/* 80529AEC  39 00 00 00 */	li r8, 0
/* 80529AF0  81 89 00 00 */	lwz r12, 0(r9)
/* 80529AF4  7D 89 03 A6 */	mtctr r12
/* 80529AF8  4E 80 04 21 */	bctrl 
/* 80529AFC  28 03 00 00 */	cmplwi r3, 0
/* 80529B00  41 82 00 08 */	beq lbl_80529B08
/* 80529B04  90 7F 08 A0 */	stw r3, 0x8a0(r31)
lbl_80529B08:
/* 80529B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529B0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80529B10  7C 08 03 A6 */	mtlr r0
/* 80529B14  38 21 00 10 */	addi r1, r1, 0x10
/* 80529B18  4E 80 00 20 */	blr 
