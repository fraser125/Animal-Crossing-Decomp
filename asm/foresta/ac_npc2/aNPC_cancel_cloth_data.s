lbl_8053B0C0:
/* 8053B0C0  88 03 07 4C */	lbz r0, 0x74c(r3)
/* 8053B0C4  7C 03 07 74 */	extsb r3, r0
/* 8053B0C8  34 03 FF FF */	addic. r0, r3, -1
/* 8053B0CC  4D 80 00 20 */	bltlr 
/* 8053B0D0  2C 00 00 09 */	cmpwi r0, 9
/* 8053B0D4  4C 80 00 20 */	bgelr 
/* 8053B0D8  1C 60 00 C0 */	mulli r3, r0, 0xc0
/* 8053B0DC  3C 80 81 1F */	lis r4, data_811EBD30@ha /* 0x811EBD30@ha */
/* 8053B0E0  80 A4 BD 30 */	lwz r5, data_811EBD30@l(r4)  /* 0x811EBD30@l */
/* 8053B0E4  38 83 01 7A */	addi r4, r3, 0x17a
/* 8053B0E8  7C 65 20 AE */	lbzx r3, r5, r4
/* 8053B0EC  38 03 FF FF */	addi r0, r3, -1
/* 8053B0F0  7C 05 21 AE */	stbx r0, r5, r4
/* 8053B0F4  4E 80 00 20 */	blr 
