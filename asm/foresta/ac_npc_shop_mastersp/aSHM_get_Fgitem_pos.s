lbl_8057CDE0:
/* 8057CDE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057CDE4  7C 08 02 A6 */	mflr r0
/* 8057CDE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057CDEC  39 61 00 20 */	addi r11, r1, 0x20
/* 8057CDF0  4B B1 E0 E5 */	bl func_8009AED4
/* 8057CDF4  7C 7D 1B 78 */	mr r29, r3
/* 8057CDF8  7C 9E 23 78 */	mr r30, r4
/* 8057CDFC  7C BF 2B 78 */	mr r31, r5
/* 8057CE00  38 60 00 00 */	li r3, 0
/* 8057CE04  38 80 00 00 */	li r4, 0
/* 8057CE08  4B E2 A3 4D */	bl mFI_BkNumtoUtFGTop
/* 8057CE0C  38 00 01 00 */	li r0, 0x100
/* 8057CE10  57 A4 04 3E */	clrlwi r4, r29, 0x10
/* 8057CE14  38 A0 00 00 */	li r5, 0
/* 8057CE18  7C 09 03 A6 */	mtctr r0
lbl_8057CE1C:
/* 8057CE1C  A0 03 00 00 */	lhz r0, 0(r3)
/* 8057CE20  7C 04 00 40 */	cmplw r4, r0
/* 8057CE24  40 82 00 2C */	bne lbl_8057CE50
/* 8057CE28  54 A0 E0 06 */	slwi r0, r5, 0x1c
/* 8057CE2C  54 A4 0F FE */	srwi r4, r5, 0x1f
/* 8057CE30  7C 64 00 50 */	subf r3, r4, r0
/* 8057CE34  7C A0 26 70 */	srawi r0, r5, 4
/* 8057CE38  54 63 20 3E */	rotlwi r3, r3, 4
/* 8057CE3C  7C 63 22 14 */	add r3, r3, r4
/* 8057CE40  7C 00 01 94 */	addze r0, r0
/* 8057CE44  90 7E 00 00 */	stw r3, 0(r30)
/* 8057CE48  90 1F 00 00 */	stw r0, 0(r31)
/* 8057CE4C  48 00 00 10 */	b lbl_8057CE5C
lbl_8057CE50:
/* 8057CE50  38 63 00 02 */	addi r3, r3, 2
/* 8057CE54  38 A5 00 01 */	addi r5, r5, 1
/* 8057CE58  42 00 FF C4 */	bdnz lbl_8057CE1C
lbl_8057CE5C:
/* 8057CE5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8057CE60  4B B1 E0 C1 */	bl func_8009AF20
/* 8057CE64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057CE68  7C 08 03 A6 */	mtlr r0
/* 8057CE6C  38 21 00 20 */	addi r1, r1, 0x20
/* 8057CE70  4E 80 00 20 */	blr 
