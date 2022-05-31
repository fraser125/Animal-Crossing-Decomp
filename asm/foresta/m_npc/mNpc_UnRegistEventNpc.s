lbl_803CEB64:
/* 803CEB64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CEB68  7C 08 02 A6 */	mflr r0
/* 803CEB6C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CEB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CEB74  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803CEB78  38 00 00 05 */	li r0, 5
/* 803CEB7C  3C 84 00 02 */	addis r4, r4, 2
/* 803CEB80  7C 09 03 A6 */	mtctr r0
/* 803CEB84  38 84 68 38 */	addi r4, r4, 0x6838
lbl_803CEB88:
/* 803CEB88  7C 04 18 40 */	cmplw r4, r3
/* 803CEB8C  40 82 00 10 */	bne lbl_803CEB9C
/* 803CEB90  38 80 00 0C */	li r4, 0xc
/* 803CEB94  4B C8 E4 D5 */	bl bzero
/* 803CEB98  48 00 00 0C */	b lbl_803CEBA4
lbl_803CEB9C:
/* 803CEB9C  38 84 00 0C */	addi r4, r4, 0xc
/* 803CEBA0  42 00 FF E8 */	bdnz lbl_803CEB88
lbl_803CEBA4:
/* 803CEBA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CEBA8  7C 08 03 A6 */	mtlr r0
/* 803CEBAC  38 21 00 10 */	addi r1, r1, 0x10
/* 803CEBB0  4E 80 00 20 */	blr 
