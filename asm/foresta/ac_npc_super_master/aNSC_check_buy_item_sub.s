lbl_805818F0:
/* 805818F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805818F4  7C 08 02 A6 */	mflr r0
/* 805818F8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805818FC  54 87 04 3E */	clrlwi r7, r4, 0x10
/* 80581900  90 01 00 14 */	stw r0, 0x14(r1)
/* 80581904  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80581908  3D 05 00 02 */	addis r8, r5, 2
/* 8058190C  38 00 00 0F */	li r0, 0xf
/* 80581910  80 C8 61 3C */	lwz r6, 0x613c(r8)
/* 80581914  39 40 00 00 */	li r10, 0
/* 80581918  38 A0 00 00 */	li r5, 0
/* 8058191C  39 26 00 68 */	addi r9, r6, 0x68
/* 80581920  7C 09 03 A6 */	mtctr r0
lbl_80581924:
/* 80581924  A0 09 00 00 */	lhz r0, 0(r9)
/* 80581928  7C 00 38 40 */	cmplw r0, r7
/* 8058192C  40 82 00 2C */	bne lbl_80581958
/* 80581930  80 C8 61 3C */	lwz r6, 0x613c(r8)
/* 80581934  80 06 00 88 */	lwz r0, 0x88(r6)
/* 80581938  7C 06 2C 30 */	srw r6, r0, r5
/* 8058193C  54 C0 07 BD */	rlwinm. r0, r6, 0, 0x1e, 0x1e
/* 80581940  40 82 00 18 */	bne lbl_80581958
/* 80581944  54 C0 07 FF */	clrlwi. r0, r6, 0x1f
/* 80581948  40 82 00 10 */	bne lbl_80581958
/* 8058194C  80 C3 00 00 */	lwz r6, 0(r3)
/* 80581950  38 06 00 01 */	addi r0, r6, 1
/* 80581954  90 03 00 00 */	stw r0, 0(r3)
lbl_80581958:
/* 80581958  39 29 00 02 */	addi r9, r9, 2
/* 8058195C  38 A5 00 02 */	addi r5, r5, 2
/* 80581960  42 00 FF C4 */	bdnz lbl_80581924
/* 80581964  80 03 00 00 */	lwz r0, 0(r3)
/* 80581968  28 00 00 01 */	cmplwi r0, 1
/* 8058196C  40 81 00 14 */	ble lbl_80581980
/* 80581970  7C 83 23 78 */	mr r3, r4
/* 80581974  7C 04 03 78 */	mr r4, r0
/* 80581978  4B FF FC 31 */	bl aNSC_set_buy_sum_str
/* 8058197C  39 40 00 05 */	li r10, 5
lbl_80581980:
/* 80581980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80581984  7D 43 53 78 */	mr r3, r10
/* 80581988  7C 08 03 A6 */	mtlr r0
/* 8058198C  38 21 00 10 */	addi r1, r1, 0x10
/* 80581990  4E 80 00 20 */	blr 
