lbl_80373638:
/* 80373638  38 E0 00 00 */	li r7, 0
/* 8037363C  7C 89 03 A6 */	mtctr r4
/* 80373640  2C 04 00 00 */	cmpwi r4, 0
/* 80373644  40 81 00 28 */	ble lbl_8037366C
lbl_80373648:
/* 80373648  88 03 00 00 */	lbz r0, 0(r3)
/* 8037364C  7C 00 28 00 */	cmpw r0, r5
/* 80373650  40 82 00 14 */	bne lbl_80373664
/* 80373654  88 03 00 01 */	lbz r0, 1(r3)
/* 80373658  7C 00 30 00 */	cmpw r0, r6
/* 8037365C  40 82 00 08 */	bne lbl_80373664
/* 80373660  38 E0 00 01 */	li r7, 1
lbl_80373664:
/* 80373664  38 63 00 02 */	addi r3, r3, 2
/* 80373668  42 00 FF E0 */	bdnz lbl_80373648
lbl_8037366C:
/* 8037366C  7C E3 3B 78 */	mr r3, r7
/* 80373670  4E 80 00 20 */	blr 