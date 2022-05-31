lbl_8058A690:
/* 8058A690  A0 83 00 06 */	lhz r4, 6(r3)
/* 8058A694  3C 60 81 1F */	lis r3, aTMN1_flag@ha /* 0x811ED3E0@ha */
/* 8058A698  A0 03 D3 E0 */	lhz r0, aTMN1_flag@l(r3)  /* 0x811ED3E0@l */
/* 8058A69C  3C 84 FF FF */	addis r4, r4, 0xffff
/* 8058A6A0  38 64 2F AC */	addi r3, r4, 0x2fac
/* 8058A6A4  54 64 07 BD */	rlwinm. r4, r3, 0, 0x1e, 0x1e
/* 8058A6A8  54 03 07 BC */	rlwinm r3, r0, 0, 0x1e, 0x1e
/* 8058A6AC  4C 82 00 20 */	bnelr 
/* 8058A6B0  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 8058A6B4  4E 80 00 20 */	blr 
