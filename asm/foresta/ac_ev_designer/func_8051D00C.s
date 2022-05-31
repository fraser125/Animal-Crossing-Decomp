lbl_8051D00C:
/* 8051D00C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051D010  7C 08 02 A6 */	mflr r0
/* 8051D014  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051D018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051D01C  7C 9F 23 78 */	mr r31, r4
/* 8051D020  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8051D024  93 C1 00 08 */	stw r30, 8(r1)
/* 8051D028  7C 7E 1B 78 */	mr r30, r3
/* 8051D02C  88 83 09 A7 */	lbz r4, 0x9a7(r3)
/* 8051D030  7C 04 00 40 */	cmplw r4, r0
/* 8051D034  41 82 00 1C */	beq lbl_8051D050
/* 8051D038  28 00 00 01 */	cmplwi r0, 1
/* 8051D03C  40 82 00 0C */	bne lbl_8051D048
/* 8051D040  4B EB CF 85 */	bl mPlib_Set_able_force_speak_label
/* 8051D044  48 00 00 08 */	b lbl_8051D04C
lbl_8051D048:
/* 8051D048  4B EB CF D1 */	bl mPlib_Reset_able_force_speak_label
lbl_8051D04C:
/* 8051D04C  9B FE 09 A7 */	stb r31, 0x9a7(r30)
lbl_8051D050:
/* 8051D050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051D054  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051D058  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051D05C  7C 08 03 A6 */	mtlr r0
/* 8051D060  38 21 00 10 */	addi r1, r1, 0x10
/* 8051D064  4E 80 00 20 */	blr 
