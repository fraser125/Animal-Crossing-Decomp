lbl_8058A6F4:
/* 8058A6F4  A0 83 00 06 */	lhz r4, 6(r3)
/* 8058A6F8  3C 60 81 1F */	lis r3, aTMN1_flag@ha /* 0x811ED3E0@ha */
/* 8058A6FC  38 63 D3 E0 */	addi r3, r3, aTMN1_flag@l /* 0x811ED3E0@l */
/* 8058A700  3C 84 FF FF */	addis r4, r4, 0xffff
/* 8058A704  A0 63 00 00 */	lhz r3, 0(r3)
/* 8058A708  38 04 2F AC */	addi r0, r4, 0x2fac
/* 8058A70C  54 04 07 BD */	rlwinm. r4, r0, 0, 0x1e, 0x1e
/* 8058A710  54 60 07 FA */	rlwinm r0, r3, 0, 0x1f, 0x1d
/* 8058A714  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8058A718  40 82 00 08 */	bne lbl_8058A720
/* 8058A71C  54 60 04 3C */	rlwinm r0, r3, 0, 0x10, 0x1e
lbl_8058A720:
/* 8058A720  3C 60 81 1F */	lis r3, aTMN1_flag@ha /* 0x811ED3E0@ha */
/* 8058A724  B0 03 D3 E0 */	sth r0, aTMN1_flag@l(r3)  /* 0x811ED3E0@l */
/* 8058A728  4E 80 00 20 */	blr 
