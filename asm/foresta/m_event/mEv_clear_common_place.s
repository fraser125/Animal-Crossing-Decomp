lbl_8039E31C:
/* 8039E31C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8039E320  38 00 00 0A */	li r0, 0xa
/* 8039E324  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 8039E328  39 60 00 00 */	li r11, 0
/* 8039E32C  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 8039E330  38 80 00 00 */	li r4, 0
/* 8039E334  3D 46 00 03 */	addis r10, r6, 3
/* 8039E338  38 E0 00 01 */	li r7, 1
/* 8039E33C  7C 09 03 A6 */	mtctr r0
/* 8039E340  39 4A 85 C8 */	addi r10, r10, -31288
lbl_8039E344:
/* 8039E344  A8 CA 01 0A */	lha r6, 0x10a(r10)
/* 8039E348  7C E9 58 30 */	slw r9, r7, r11
/* 8039E34C  7D 20 30 39 */	and. r0, r9, r6
/* 8039E350  41 82 00 30 */	beq lbl_8039E380
/* 8039E354  7D 0A 22 14 */	add r8, r10, r4
/* 8039E358  88 08 01 0C */	lbz r0, 0x10c(r8)
/* 8039E35C  7C 03 00 00 */	cmpw r3, r0
/* 8039E360  40 82 00 20 */	bne lbl_8039E380
/* 8039E364  88 08 01 0D */	lbz r0, 0x10d(r8)
/* 8039E368  7C 05 00 40 */	cmplw r5, r0
/* 8039E36C  40 82 00 14 */	bne lbl_8039E380
/* 8039E370  7C C0 48 78 */	andc r0, r6, r9
/* 8039E374  38 60 00 14 */	li r3, 0x14
/* 8039E378  B0 0A 01 0A */	sth r0, 0x10a(r10)
/* 8039E37C  4E 80 00 20 */	blr 
lbl_8039E380:
/* 8039E380  39 6B 00 01 */	addi r11, r11, 1
/* 8039E384  38 84 00 1C */	addi r4, r4, 0x1c
/* 8039E388  42 00 FF BC */	bdnz lbl_8039E344
/* 8039E38C  38 60 00 00 */	li r3, 0
/* 8039E390  4E 80 00 20 */	blr 