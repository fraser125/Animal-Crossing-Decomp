lbl_80384C54:
/* 80384C54  3C A0 80 64 */	lis r5, lit_399@ha /* 0x80641744@ha */
/* 80384C58  3C 80 80 64 */	lis r4, lit_402@ha /* 0x80641750@ha */
/* 80384C5C  38 C5 17 44 */	addi r6, r5, lit_399@l /* 0x80641744@l */
/* 80384C60  C0 04 17 50 */	lfs f0, lit_402@l(r4)  /* 0x80641750@l */
/* 80384C64  C0 26 00 00 */	lfs f1, 0(r6)
/* 80384C68  38 A0 FF FF */	li r5, -1
/* 80384C6C  38 80 00 02 */	li r4, 2
/* 80384C70  38 00 00 01 */	li r0, 1
/* 80384C74  D0 23 00 DC */	stfs f1, 0xdc(r3)
/* 80384C78  D0 03 00 F8 */	stfs f0, 0xf8(r3)
/* 80384C7C  90 A3 00 E4 */	stw r5, 0xe4(r3)
/* 80384C80  90 83 00 E0 */	stw r4, 0xe0(r3)
/* 80384C84  90 03 00 EC */	stw r0, 0xec(r3)
/* 80384C88  4E 80 00 20 */	blr 
