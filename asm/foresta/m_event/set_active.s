lbl_8039DA28:
/* 8039DA28  3C 80 81 16 */	lis r4, data_81167688@ha /* 0x81167688@ha */
/* 8039DA2C  38 C0 00 00 */	li r6, 0
/* 8039DA30  38 A4 76 88 */	addi r5, r4, data_81167688@l /* 0x81167688@l */
/* 8039DA34  38 85 01 24 */	addi r4, r5, 0x124
/* 8039DA38  7C 04 18 AE */	lbzx r0, r4, r3
/* 8039DA3C  38 85 00 24 */	addi r4, r5, 0x24
/* 8039DA40  28 00 00 FF */	cmplwi r0, 0xff
/* 8039DA44  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 8039DA48  7C 84 02 14 */	add r4, r4, r0
/* 8039DA4C  41 82 00 2C */	beq lbl_8039DA78
/* 8039DA50  A8 04 00 0C */	lha r0, 0xc(r4)
/* 8039DA54  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8039DA58  40 82 00 08 */	bne lbl_8039DA60
/* 8039DA5C  38 C0 00 01 */	li r6, 1
lbl_8039DA60:
/* 8039DA60  80 65 00 04 */	lwz r3, 4(r5)
/* 8039DA64  A8 04 00 0C */	lha r0, 0xc(r4)
/* 8039DA68  60 63 00 01 */	ori r3, r3, 1
/* 8039DA6C  60 00 00 01 */	ori r0, r0, 1
/* 8039DA70  90 65 00 04 */	stw r3, 4(r5)
/* 8039DA74  B0 04 00 0C */	sth r0, 0xc(r4)
lbl_8039DA78:
/* 8039DA78  7C C3 33 78 */	mr r3, r6
/* 8039DA7C  4E 80 00 20 */	blr 
