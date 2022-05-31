lbl_8039AE14:
/* 8039AE14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039AE18  7C 08 02 A6 */	mflr r0
/* 8039AE1C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039AE20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039AE24  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039AE28  3C 63 00 02 */	addis r3, r3, 2
/* 8039AE2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039AE30  3B E0 00 00 */	li r31, 0
/* 8039AE34  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 8039AE38  28 00 00 05 */	cmplwi r0, 5
/* 8039AE3C  40 80 00 20 */	bge lbl_8039AE5C
/* 8039AE40  3C 60 20 00 */	lis r3, 0x2000 /* 0x20000016@ha */
/* 8039AE44  38 63 00 16 */	addi r3, r3, 0x0016 /* 0x20000016@l */
/* 8039AE48  7C 63 02 14 */	add r3, r3, r0
/* 8039AE4C  4B FF FB CD */	bl mEv_CheckEvent
/* 8039AE50  2C 03 00 01 */	cmpwi r3, 1
/* 8039AE54  40 82 00 08 */	bne lbl_8039AE5C
/* 8039AE58  3B E0 00 01 */	li r31, 1
lbl_8039AE5C:
/* 8039AE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039AE60  7F E3 FB 78 */	mr r3, r31
/* 8039AE64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039AE68  7C 08 03 A6 */	mtlr r0
/* 8039AE6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039AE70  4E 80 00 20 */	blr 
