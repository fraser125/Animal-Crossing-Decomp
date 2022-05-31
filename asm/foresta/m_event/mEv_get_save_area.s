lbl_8039DDCC:
/* 8039DDCC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8039DDD0  38 00 00 05 */	li r0, 5
/* 8039DDD4  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 8039DDD8  39 40 00 00 */	li r10, 0
/* 8039DDDC  3D 26 00 02 */	addis r9, r6, 2
/* 8039DDE0  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 8039DDE4  38 80 00 00 */	li r4, 0
/* 8039DDE8  80 C9 05 68 */	lwz r6, 0x568(r9)
/* 8039DDEC  38 E0 00 01 */	li r7, 1
/* 8039DDF0  7C 09 03 A6 */	mtctr r0
/* 8039DDF4  39 29 05 54 */	addi r9, r9, 0x554
lbl_8039DDF8:
/* 8039DDF8  7C E0 50 30 */	slw r0, r7, r10
/* 8039DDFC  7C 00 30 39 */	and. r0, r0, r6
/* 8039DE00  41 82 00 28 */	beq lbl_8039DE28
/* 8039DE04  7D 09 22 14 */	add r8, r9, r4
/* 8039DE08  88 08 00 18 */	lbz r0, 0x18(r8)
/* 8039DE0C  7C 03 00 00 */	cmpw r3, r0
/* 8039DE10  40 82 00 18 */	bne lbl_8039DE28
/* 8039DE14  88 08 00 19 */	lbz r0, 0x19(r8)
/* 8039DE18  7C 05 00 40 */	cmplw r5, r0
/* 8039DE1C  40 82 00 0C */	bne lbl_8039DE28
/* 8039DE20  38 68 00 20 */	addi r3, r8, 0x20
/* 8039DE24  4E 80 00 20 */	blr 
lbl_8039DE28:
/* 8039DE28  39 4A 00 01 */	addi r10, r10, 1
/* 8039DE2C  38 84 00 34 */	addi r4, r4, 0x34
/* 8039DE30  42 00 FF C8 */	bdnz lbl_8039DDF8
/* 8039DE34  38 60 00 00 */	li r3, 0
/* 8039DE38  4E 80 00 20 */	blr 
