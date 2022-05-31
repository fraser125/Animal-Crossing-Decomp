lbl_8053AF0C:
/* 8053AF0C  3C 60 81 1F */	lis r3, data_811EBD30@ha /* 0x811EBD30@ha */
/* 8053AF10  38 00 00 0A */	li r0, 0xa
/* 8053AF14  80 A3 BD 30 */	lwz r5, data_811EBD30@l(r3)  /* 0x811EBD30@l */
/* 8053AF18  38 80 00 01 */	li r4, 1
/* 8053AF1C  38 60 00 00 */	li r3, 0
/* 8053AF20  38 A5 01 74 */	addi r5, r5, 0x174
/* 8053AF24  7C 09 03 A6 */	mtctr r0
lbl_8053AF28:
/* 8053AF28  88 05 00 07 */	lbz r0, 7(r5)
/* 8053AF2C  28 00 00 FF */	cmplwi r0, 0xff
/* 8053AF30  41 82 00 20 */	beq lbl_8053AF50
/* 8053AF34  A0 05 00 04 */	lhz r0, 4(r5)
/* 8053AF38  28 00 00 00 */	cmplwi r0, 0
/* 8053AF3C  41 82 00 14 */	beq lbl_8053AF50
/* 8053AF40  98 85 00 00 */	stb r4, 0(r5)
/* 8053AF44  98 85 00 63 */	stb r4, 0x63(r5)
/* 8053AF48  98 85 00 BF */	stb r4, 0xbf(r5)
/* 8053AF4C  48 00 00 0C */	b lbl_8053AF58
lbl_8053AF50:
/* 8053AF50  B0 65 00 04 */	sth r3, 4(r5)
/* 8053AF54  98 65 00 06 */	stb r3, 6(r5)
lbl_8053AF58:
/* 8053AF58  38 A5 00 C0 */	addi r5, r5, 0xc0
/* 8053AF5C  42 00 FF CC */	bdnz lbl_8053AF28
/* 8053AF60  4E 80 00 20 */	blr 
