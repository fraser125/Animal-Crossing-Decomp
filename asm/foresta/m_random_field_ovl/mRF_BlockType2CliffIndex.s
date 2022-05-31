lbl_80508D84:
/* 80508D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80508D88  7C 08 02 A6 */	mflr r0
/* 80508D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80508D90  4B FF FF E1 */	bl func_80508D70
/* 80508D94  3C 80 80 6A */	lis r4, cliff_info@ha /* 0x8069EE24@ha */
/* 80508D98  38 00 00 07 */	li r0, 7
/* 80508D9C  38 A4 EE 24 */	addi r5, r4, cliff_info@l /* 0x8069EE24@l */
/* 80508DA0  38 C0 00 00 */	li r6, 0
/* 80508DA4  38 80 00 00 */	li r4, 0
/* 80508DA8  7C 09 03 A6 */	mtctr r0
lbl_80508DAC:
/* 80508DAC  7C 05 20 2E */	lwzx r0, r5, r4
/* 80508DB0  7C 60 00 39 */	and. r0, r3, r0
/* 80508DB4  41 82 00 0C */	beq lbl_80508DC0
/* 80508DB8  7C C3 33 78 */	mr r3, r6
/* 80508DBC  48 00 00 14 */	b lbl_80508DD0
lbl_80508DC0:
/* 80508DC0  38 C6 00 01 */	addi r6, r6, 1
/* 80508DC4  38 84 00 04 */	addi r4, r4, 4
/* 80508DC8  42 00 FF E4 */	bdnz lbl_80508DAC
/* 80508DCC  38 60 FF FF */	li r3, -1
lbl_80508DD0:
/* 80508DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80508DD4  7C 08 03 A6 */	mtlr r0
/* 80508DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80508DDC  4E 80 00 20 */	blr 
