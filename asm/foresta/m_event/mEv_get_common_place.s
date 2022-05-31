lbl_8039E2AC:
/* 8039E2AC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8039E2B0  38 00 00 0A */	li r0, 0xa
/* 8039E2B4  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 8039E2B8  39 20 00 00 */	li r9, 0
/* 8039E2BC  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 8039E2C0  38 80 00 00 */	li r4, 0
/* 8039E2C4  3D 06 00 03 */	addis r8, r6, 3
/* 8039E2C8  38 E0 00 01 */	li r7, 1
/* 8039E2CC  7C 09 03 A6 */	mtctr r0
/* 8039E2D0  39 08 85 C8 */	addi r8, r8, -31288
lbl_8039E2D4:
/* 8039E2D4  A8 08 01 0A */	lha r0, 0x10a(r8)
/* 8039E2D8  7C E6 48 30 */	slw r6, r7, r9
/* 8039E2DC  7C C0 00 39 */	and. r0, r6, r0
/* 8039E2E0  41 82 00 28 */	beq lbl_8039E308
/* 8039E2E4  7C C8 22 14 */	add r6, r8, r4
/* 8039E2E8  88 06 01 0C */	lbz r0, 0x10c(r6)
/* 8039E2EC  7C 03 00 00 */	cmpw r3, r0
/* 8039E2F0  40 82 00 18 */	bne lbl_8039E308
/* 8039E2F4  88 06 01 0D */	lbz r0, 0x10d(r6)
/* 8039E2F8  7C 05 00 40 */	cmplw r5, r0
/* 8039E2FC  40 82 00 0C */	bne lbl_8039E308
/* 8039E300  38 66 01 14 */	addi r3, r6, 0x114
/* 8039E304  4E 80 00 20 */	blr 
lbl_8039E308:
/* 8039E308  39 29 00 01 */	addi r9, r9, 1
/* 8039E30C  38 84 00 1C */	addi r4, r4, 0x1c
/* 8039E310  42 00 FF C4 */	bdnz lbl_8039E2D4
/* 8039E314  38 60 00 00 */	li r3, 0
/* 8039E318  4E 80 00 20 */	blr 
