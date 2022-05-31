lbl_80472D44:
/* 80472D44  3C 60 80 69 */	lis r3, aMR_place_table@ha /* 0x8068897C@ha */
/* 80472D48  38 C0 00 00 */	li r6, 0
/* 80472D4C  38 83 89 7C */	addi r4, r3, aMR_place_table@l /* 0x8068897C@l */
/* 80472D50  38 60 00 C8 */	li r3, 0xc8
/* 80472D54  38 00 01 00 */	li r0, 0x100
lbl_80472D58:
/* 80472D58  54 C5 17 7A */	rlwinm r5, r6, 2, 0x1d, 0x1d
/* 80472D5C  7C E4 28 2E */	lwzx r7, r4, r5
/* 80472D60  7C 09 03 A6 */	mtctr r0
lbl_80472D64:
/* 80472D64  88 A7 00 00 */	lbz r5, 0(r7)
/* 80472D68  28 05 00 C9 */	cmplwi r5, 0xc9
/* 80472D6C  41 82 00 10 */	beq lbl_80472D7C
/* 80472D70  28 05 00 C8 */	cmplwi r5, 0xc8
/* 80472D74  41 82 00 08 */	beq lbl_80472D7C
/* 80472D78  98 67 00 00 */	stb r3, 0(r7)
lbl_80472D7C:
/* 80472D7C  38 E7 00 01 */	addi r7, r7, 1
/* 80472D80  42 00 FF E4 */	bdnz lbl_80472D64
/* 80472D84  38 C6 00 01 */	addi r6, r6, 1
/* 80472D88  2C 06 00 02 */	cmpwi r6, 2
/* 80472D8C  41 80 FF CC */	blt lbl_80472D58
/* 80472D90  4E 80 00 20 */	blr 
