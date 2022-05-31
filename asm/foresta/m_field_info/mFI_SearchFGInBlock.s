lbl_803A82A0:
/* 803A82A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A82A4  7C 08 02 A6 */	mflr r0
/* 803A82A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A82AC  39 61 00 20 */	addi r11, r1, 0x20
/* 803A82B0  4B CF 2C 25 */	bl func_8009AED4
/* 803A82B4  7C 7D 1B 78 */	mr r29, r3
/* 803A82B8  7C 9E 23 78 */	mr r30, r4
/* 803A82BC  7C BF 2B 78 */	mr r31, r5
/* 803A82C0  7C C3 33 78 */	mr r3, r6
/* 803A82C4  7C E4 3B 78 */	mr r4, r7
/* 803A82C8  4B FF EE 8D */	bl mFI_BkNumtoUtFGTop
/* 803A82CC  28 03 00 00 */	cmplwi r3, 0
/* 803A82D0  38 A0 00 00 */	li r5, 0
/* 803A82D4  41 82 00 44 */	beq lbl_803A8318
/* 803A82D8  38 00 01 00 */	li r0, 0x100
/* 803A82DC  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 803A82E0  38 C0 00 00 */	li r6, 0
/* 803A82E4  7C 09 03 A6 */	mtctr r0
lbl_803A82E8:
/* 803A82E8  A0 03 00 00 */	lhz r0, 0(r3)
/* 803A82EC  7C 00 20 40 */	cmplw r0, r4
/* 803A82F0  40 82 00 1C */	bne lbl_803A830C
/* 803A82F4  54 C3 07 3E */	clrlwi r3, r6, 0x1c
/* 803A82F8  7C C0 26 70 */	srawi r0, r6, 4
/* 803A82FC  90 7D 00 00 */	stw r3, 0(r29)
/* 803A8300  38 A0 00 01 */	li r5, 1
/* 803A8304  90 1E 00 00 */	stw r0, 0(r30)
/* 803A8308  48 00 00 10 */	b lbl_803A8318
lbl_803A830C:
/* 803A830C  38 63 00 02 */	addi r3, r3, 2
/* 803A8310  38 C6 00 01 */	addi r6, r6, 1
/* 803A8314  42 00 FF D4 */	bdnz lbl_803A82E8
lbl_803A8318:
/* 803A8318  7C A3 2B 78 */	mr r3, r5
/* 803A831C  39 61 00 20 */	addi r11, r1, 0x20
/* 803A8320  4B CF 2C 01 */	bl func_8009AF20
/* 803A8324  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A8328  7C 08 03 A6 */	mtlr r0
/* 803A832C  38 21 00 20 */	addi r1, r1, 0x20
/* 803A8330  4E 80 00 20 */	blr 
