lbl_8049150C:
/* 8049150C  38 C0 00 00 */	li r6, 0
/* 80491510  38 A0 FF FF */	li r5, -1
/* 80491514  90 C3 00 00 */	stw r6, 0(r3)
/* 80491518  38 00 00 05 */	li r0, 5
/* 8049151C  7C C4 33 78 */	mr r4, r6
/* 80491520  90 C3 00 04 */	stw r6, 4(r3)
/* 80491524  90 C3 00 08 */	stw r6, 8(r3)
/* 80491528  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8049152C  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80491530  7C 09 03 A6 */	mtctr r0
lbl_80491534:
/* 80491534  38 04 00 14 */	addi r0, r4, 0x14
/* 80491538  38 84 00 02 */	addi r4, r4, 2
/* 8049153C  7C C3 03 2E */	sthx r6, r3, r0
/* 80491540  42 00 FF F4 */	bdnz lbl_80491534
/* 80491544  4E 80 00 20 */	blr 
