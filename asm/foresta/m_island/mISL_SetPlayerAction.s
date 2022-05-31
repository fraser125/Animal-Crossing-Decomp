lbl_803B3F5C:
/* 803B3F5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B3F60  7C 08 02 A6 */	mflr r0
/* 803B3F64  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3F68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B3F6C  7C 9F 23 78 */	mr r31, r4
/* 803B3F70  93 C1 00 08 */	stw r30, 8(r1)
/* 803B3F74  7C 7E 1B 79 */	or. r30, r3, r3
/* 803B3F78  41 82 00 88 */	beq lbl_803B4000
/* 803B3F7C  4B FF 31 5D */	bl mFI_CheckInIsland
/* 803B3F80  2C 03 00 01 */	cmpwi r3, 1
/* 803B3F84  40 82 00 7C */	bne lbl_803B4000
/* 803B3F88  7F C3 F3 78 */	mr r3, r30
/* 803B3F8C  4B FF FE FD */	bl mISL_GetCheckP
/* 803B3F90  28 03 00 00 */	cmplwi r3, 0
/* 803B3F94  41 82 00 6C */	beq lbl_803B4000
/* 803B3F98  3C A0 80 65 */	lis r5, data_80655240@ha /* 0x80655240@ha */
/* 803B3F9C  3C 80 81 17 */	lis r4, l_misl_count_table@ha /* 0x81169B7C@ha */
/* 803B3FA0  38 00 00 20 */	li r0, 0x20
/* 803B3FA4  39 00 00 00 */	li r8, 0
/* 803B3FA8  38 E5 52 40 */	addi r7, r5, data_80655240@l /* 0x80655240@l */
/* 803B3FAC  38 C4 9B 7C */	addi r6, r4, l_misl_count_table@l /* 0x81169B7C@l */
/* 803B3FB0  38 80 00 01 */	li r4, 1
/* 803B3FB4  7C 09 03 A6 */	mtctr r0
lbl_803B3FB8:
/* 803B3FB8  7F E0 44 30 */	srw r0, r31, r8
/* 803B3FBC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803B3FC0  41 82 00 10 */	beq lbl_803B3FD0
/* 803B3FC4  7C A6 40 AE */	lbzx r5, r6, r8
/* 803B3FC8  38 05 00 01 */	addi r0, r5, 1
/* 803B3FCC  7C 06 41 AE */	stbx r0, r6, r8
lbl_803B3FD0:
/* 803B3FD0  7C A7 40 AE */	lbzx r5, r7, r8
/* 803B3FD4  7C 06 40 AE */	lbzx r0, r6, r8
/* 803B3FD8  7C 05 00 40 */	cmplw r5, r0
/* 803B3FDC  41 81 00 1C */	bgt lbl_803B3FF8
/* 803B3FE0  80 A3 00 00 */	lwz r5, 0(r3)
/* 803B3FE4  7C 80 40 30 */	slw r0, r4, r8
/* 803B3FE8  7C A0 03 78 */	or r0, r5, r0
/* 803B3FEC  90 03 00 00 */	stw r0, 0(r3)
/* 803B3FF0  7C 07 40 AE */	lbzx r0, r7, r8
/* 803B3FF4  7C 06 41 AE */	stbx r0, r6, r8
lbl_803B3FF8:
/* 803B3FF8  39 08 00 01 */	addi r8, r8, 1
/* 803B3FFC  42 00 FF BC */	bdnz lbl_803B3FB8
lbl_803B4000:
/* 803B4000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B4004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B4008  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B400C  7C 08 03 A6 */	mtlr r0
/* 803B4010  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4014  4E 80 00 20 */	blr 
