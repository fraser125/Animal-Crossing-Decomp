lbl_8039DE3C:
/* 8039DE3C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8039DE40  38 00 00 05 */	li r0, 5
/* 8039DE44  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 8039DE48  39 60 00 00 */	li r11, 0
/* 8039DE4C  3D 46 00 02 */	addis r10, r6, 2
/* 8039DE50  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 8039DE54  38 80 00 00 */	li r4, 0
/* 8039DE58  80 CA 05 68 */	lwz r6, 0x568(r10)
/* 8039DE5C  38 E0 00 01 */	li r7, 1
/* 8039DE60  7C 09 03 A6 */	mtctr r0
/* 8039DE64  39 4A 05 54 */	addi r10, r10, 0x554
lbl_8039DE68:
/* 8039DE68  7C E9 58 30 */	slw r9, r7, r11
/* 8039DE6C  7D 20 30 39 */	and. r0, r9, r6
/* 8039DE70  41 82 00 30 */	beq lbl_8039DEA0
/* 8039DE74  7D 0A 22 14 */	add r8, r10, r4
/* 8039DE78  88 08 00 18 */	lbz r0, 0x18(r8)
/* 8039DE7C  7C 03 00 00 */	cmpw r3, r0
/* 8039DE80  40 82 00 20 */	bne lbl_8039DEA0
/* 8039DE84  88 08 00 19 */	lbz r0, 0x19(r8)
/* 8039DE88  7C 05 00 40 */	cmplw r5, r0
/* 8039DE8C  40 82 00 14 */	bne lbl_8039DEA0
/* 8039DE90  7C C0 48 78 */	andc r0, r6, r9
/* 8039DE94  38 60 00 2C */	li r3, 0x2c
/* 8039DE98  90 0A 00 14 */	stw r0, 0x14(r10)
/* 8039DE9C  4E 80 00 20 */	blr 
lbl_8039DEA0:
/* 8039DEA0  39 6B 00 01 */	addi r11, r11, 1
/* 8039DEA4  38 84 00 34 */	addi r4, r4, 0x34
/* 8039DEA8  42 00 FF C0 */	bdnz lbl_8039DE68
/* 8039DEAC  38 60 00 00 */	li r3, 0
/* 8039DEB0  4E 80 00 20 */	blr 
