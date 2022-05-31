lbl_803CEF0C:
/* 803CEF0C  A0 83 00 00 */	lhz r4, 0(r3)
/* 803CEF10  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803CEF14  2C 00 00 0E */	cmpwi r0, 0xe
/* 803CEF18  4C 82 00 20 */	bnelr 
/* 803CEF1C  54 80 05 3F */	clrlwi. r0, r4, 0x14
/* 803CEF20  4D 80 00 20 */	bltlr 
/* 803CEF24  2C 00 00 EC */	cmpwi r0, 0xec
/* 803CEF28  4C 80 00 20 */	bgelr 
/* 803CEF2C  1C A0 00 06 */	mulli r5, r0, 6
/* 803CEF30  3C 80 80 97 */	lis r4, data_8096CC90@ha /* 0x8096CC90@ha */
/* 803CEF34  38 00 00 FF */	li r0, 0xff
/* 803CEF38  38 84 CC 90 */	addi r4, r4, data_8096CC90@l /* 0x8096CC90@l */
/* 803CEF3C  7C 84 2A 2E */	lhzx r4, r4, r5
/* 803CEF40  B0 83 08 E4 */	sth r4, 0x8e4(r3)
/* 803CEF44  98 03 08 EB */	stb r0, 0x8eb(r3)
/* 803CEF48  4E 80 00 20 */	blr 
