lbl_8058A6B8:
/* 8058A6B8  A0 83 00 06 */	lhz r4, 6(r3)
/* 8058A6BC  3C 60 81 1F */	lis r3, aTMN1_flag@ha /* 0x811ED3E0@ha */
/* 8058A6C0  38 63 D3 E0 */	addi r3, r3, aTMN1_flag@l /* 0x811ED3E0@l */
/* 8058A6C4  3C 84 FF FF */	addis r4, r4, 0xffff
/* 8058A6C8  A0 63 00 00 */	lhz r3, 0(r3)
/* 8058A6CC  38 04 2F AC */	addi r0, r4, 0x2fac
/* 8058A6D0  54 04 07 BD */	rlwinm. r4, r0, 0, 0x1e, 0x1e
/* 8058A6D4  60 60 00 02 */	ori r0, r3, 2
/* 8058A6D8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8058A6DC  40 82 00 0C */	bne lbl_8058A6E8
/* 8058A6E0  60 60 00 01 */	ori r0, r3, 1
/* 8058A6E4  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8058A6E8:
/* 8058A6E8  3C 60 81 1F */	lis r3, aTMN1_flag@ha /* 0x811ED3E0@ha */
/* 8058A6EC  B0 03 D3 E0 */	sth r0, aTMN1_flag@l(r3)  /* 0x811ED3E0@l */
/* 8058A6F0  4E 80 00 20 */	blr 
