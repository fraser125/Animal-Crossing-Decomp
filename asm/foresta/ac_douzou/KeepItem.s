lbl_805AD8A0:
/* 805AD8A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805AD8A4  7C 08 02 A6 */	mflr r0
/* 805AD8A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805AD8AC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805AD8B0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805AD8B4  7C 7E 1B 78 */	mr r30, r3
/* 805AD8B8  38 61 00 20 */	addi r3, r1, 0x20
/* 805AD8BC  80 BE 00 00 */	lwz r5, 0(r30)
/* 805AD8C0  80 9E 00 04 */	lwz r4, 4(r30)
/* 805AD8C4  80 1E 00 08 */	lwz r0, 8(r30)
/* 805AD8C8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 805AD8CC  90 81 00 24 */	stw r4, 0x24(r1)
/* 805AD8D0  90 01 00 28 */	stw r0, 0x28(r1)
/* 805AD8D4  4B DF 9B 5D */	bl mFI_GetUnitFG
/* 805AD8D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 805AD8DC  41 82 00 54 */	beq lbl_805AD930
/* 805AD8E0  80 BE 00 00 */	lwz r5, 0(r30)
/* 805AD8E4  38 61 00 14 */	addi r3, r1, 0x14
/* 805AD8E8  80 9E 00 04 */	lwz r4, 4(r30)
/* 805AD8EC  80 1E 00 08 */	lwz r0, 8(r30)
/* 805AD8F0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 805AD8F4  90 81 00 18 */	stw r4, 0x18(r1)
/* 805AD8F8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805AD8FC  4B DF B7 2D */	bl mFI_Wpos2DepositOFF
/* 805AD900  A0 7F 00 00 */	lhz r3, 0(r31)
/* 805AD904  4B E3 0F 4D */	bl mPB_keep_item
/* 805AD908  80 FE 00 00 */	lwz r7, 0(r30)
/* 805AD90C  38 81 00 08 */	addi r4, r1, 8
/* 805AD910  80 DE 00 04 */	lwz r6, 4(r30)
/* 805AD914  38 60 00 00 */	li r3, 0
/* 805AD918  80 1E 00 08 */	lwz r0, 8(r30)
/* 805AD91C  38 A0 00 01 */	li r5, 1
/* 805AD920  90 E1 00 08 */	stw r7, 8(r1)
/* 805AD924  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805AD928  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AD92C  4B DF 9F 05 */	bl mFI_SetFG_common
lbl_805AD930:
/* 805AD930  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805AD934  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805AD938  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805AD93C  7C 08 03 A6 */	mtlr r0
/* 805AD940  38 21 00 40 */	addi r1, r1, 0x40
/* 805AD944  4E 80 00 20 */	blr 
