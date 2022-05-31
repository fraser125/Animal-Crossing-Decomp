lbl_80510D4C:
/* 80510D4C  3C 80 80 6A */	lis r4, l_magrw_change_tree@ha /* 0x8069FA64@ha */
/* 80510D50  38 00 00 03 */	li r0, 3
/* 80510D54  54 66 04 3E */	clrlwi r6, r3, 0x10
/* 80510D58  38 60 00 00 */	li r3, 0
/* 80510D5C  38 A4 FA 64 */	addi r5, r4, l_magrw_change_tree@l /* 0x8069FA64@l */
/* 80510D60  38 80 00 00 */	li r4, 0
/* 80510D64  7C 09 03 A6 */	mtctr r0
lbl_80510D68:
/* 80510D68  7C 05 22 2E */	lhzx r0, r5, r4
/* 80510D6C  7C 06 00 40 */	cmplw r6, r0
/* 80510D70  40 82 00 0C */	bne lbl_80510D7C
/* 80510D74  38 60 00 01 */	li r3, 1
/* 80510D78  4E 80 00 20 */	blr 
lbl_80510D7C:
/* 80510D7C  38 84 00 02 */	addi r4, r4, 2
/* 80510D80  42 00 FF E8 */	bdnz lbl_80510D68
/* 80510D84  4E 80 00 20 */	blr 
