lbl_80627C44:
/* 80627C44  38 00 00 10 */	li r0, 0x10
/* 80627C48  3C 80 80 65 */	lis r4, data_8064D0A4@ha /* 0x8064D0A4@ha */
/* 80627C4C  B0 03 00 00 */	sth r0, 0(r3)
/* 80627C50  38 E4 D0 A4 */	addi r7, r4, data_8064D0A4@l /* 0x8064D0A4@l */
/* 80627C54  3C A0 80 65 */	lis r5, lit_383@ha /* 0x8064D0A8@ha */
/* 80627C58  C0 87 00 00 */	lfs f4, 0(r7)
/* 80627C5C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80627C60  38 C5 D0 A8 */	addi r6, r5, lit_383@l /* 0x8064D0A8@l */
/* 80627C64  3C 80 80 65 */	lis r4, lit_384@ha /* 0x8064D0AC@ha */
/* 80627C68  C0 46 00 00 */	lfs f2, 0(r6)
/* 80627C6C  EC 60 20 2A */	fadds f3, f0, f4
/* 80627C70  38 A4 D0 AC */	addi r5, r4, lit_384@l /* 0x8064D0AC@l */
/* 80627C74  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064D0B0@ha */
/* 80627C78  C0 25 00 00 */	lfs f1, 0(r5)
/* 80627C7C  C0 04 D0 B0 */	lfs f0, lit_385@l(r4)  /* 0x8064D0B0@l */
/* 80627C80  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 80627C84  D0 43 00 34 */	stfs f2, 0x34(r3)
/* 80627C88  D0 43 00 38 */	stfs f2, 0x38(r3)
/* 80627C8C  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 80627C90  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80627C94  D0 83 00 20 */	stfs f4, 0x20(r3)
/* 80627C98  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 80627C9C  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80627CA0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80627CA4  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 80627CA8  4E 80 00 20 */	blr 
