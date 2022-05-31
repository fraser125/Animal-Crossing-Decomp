lbl_803CEF4C:
/* 803CEF4C  A0 83 00 00 */	lhz r4, 0(r3)
/* 803CEF50  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803CEF54  2C 00 00 0E */	cmpwi r0, 0xe
/* 803CEF58  4C 82 00 20 */	bnelr 
/* 803CEF5C  54 80 05 3F */	clrlwi. r0, r4, 0x14
/* 803CEF60  4D 80 00 20 */	bltlr 
/* 803CEF64  2C 00 00 EC */	cmpwi r0, 0xec
/* 803CEF68  4C 80 00 20 */	bgelr 
/* 803CEF6C  1C 00 00 06 */	mulli r0, r0, 6
/* 803CEF70  3C 80 80 97 */	lis r4, data_8096CC90@ha /* 0x8096CC90@ha */
/* 803CEF74  38 84 CC 90 */	addi r4, r4, data_8096CC90@l /* 0x8096CC90@l */
/* 803CEF78  7C 84 02 14 */	add r4, r4, r0
/* 803CEF7C  88 04 00 04 */	lbz r0, 4(r4)
/* 803CEF80  98 03 08 EC */	stb r0, 0x8ec(r3)
/* 803CEF84  4E 80 00 20 */	blr 
