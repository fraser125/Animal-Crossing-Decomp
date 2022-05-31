lbl_803CCB44:
/* 803CCB44  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 803CCB48  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CCB4C  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803CCB50  38 60 00 00 */	li r3, 0
/* 803CCB54  3C A5 00 01 */	addis r5, r5, 1
/* 803CCB58  28 04 00 06 */	cmplwi r4, 6
/* 803CCB5C  38 A5 74 38 */	addi r5, r5, 0x7438
/* 803CCB60  4C 80 00 20 */	bgelr 
/* 803CCB64  38 00 00 0F */	li r0, 0xf
/* 803CCB68  7C 09 03 A6 */	mtctr r0
lbl_803CCB6C:
/* 803CCB6C  88 05 00 0D */	lbz r0, 0xd(r5)
/* 803CCB70  7C 04 00 40 */	cmplw r4, r0
/* 803CCB74  40 82 00 08 */	bne lbl_803CCB7C
/* 803CCB78  38 63 00 01 */	addi r3, r3, 1
lbl_803CCB7C:
/* 803CCB7C  38 A5 09 88 */	addi r5, r5, 0x988
/* 803CCB80  42 00 FF EC */	bdnz lbl_803CCB6C
/* 803CCB84  4E 80 00 20 */	blr 
