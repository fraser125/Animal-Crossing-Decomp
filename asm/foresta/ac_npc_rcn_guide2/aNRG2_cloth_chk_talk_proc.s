lbl_80570AE0:
/* 80570AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570AE4  7C 08 02 A6 */	mflr r0
/* 80570AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570AEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570AF0  7C 7F 1B 78 */	mr r31, r3
/* 80570AF4  4B E7 30 75 */	bl mQst_GetFirstJobData
/* 80570AF8  88 03 00 01 */	lbz r0, 1(r3)
/* 80570AFC  54 00 EF 3E */	rlwinm r0, r0, 0x1d, 0x1c, 0x1f
/* 80570B00  28 00 00 01 */	cmplwi r0, 1
/* 80570B04  40 82 00 10 */	bne lbl_80570B14
/* 80570B08  38 00 00 05 */	li r0, 5
/* 80570B0C  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80570B10  48 00 00 0C */	b lbl_80570B1C
lbl_80570B14:
/* 80570B14  38 00 00 04 */	li r0, 4
/* 80570B18  90 1F 09 9C */	stw r0, 0x99c(r31)
lbl_80570B1C:
/* 80570B1C  7F E3 FB 78 */	mr r3, r31
/* 80570B20  38 80 00 04 */	li r4, 4
/* 80570B24  48 00 07 91 */	bl aNRG2_change_talk_proc
/* 80570B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570B2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570B30  7C 08 03 A6 */	mtlr r0
/* 80570B34  38 21 00 10 */	addi r1, r1, 0x10
/* 80570B38  4E 80 00 20 */	blr 
