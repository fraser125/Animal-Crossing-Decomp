lbl_8059921C:
/* 8059921C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599220  7C 08 02 A6 */	mflr r0
/* 80599224  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059922C  7C 7F 1B 78 */	mr r31, r3
/* 80599230  4B FF FA FD */	bl aICH_chou_fuwafuwa
/* 80599234  3C 60 80 65 */	lis r3, lit_676@ha /* 0x80649F14@ha */
/* 80599238  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8059923C  38 83 9F 14 */	addi r4, r3, lit_676@l /* 0x80649F14@l */
/* 80599240  7F E3 FB 78 */	mr r3, r31
/* 80599244  C0 04 00 00 */	lfs f0, 0(r4)
/* 80599248  EC 01 00 2A */	fadds f0, f1, f0
/* 8059924C  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 80599250  4B FF F2 D1 */	bl aICH_anime_proc
/* 80599254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059925C  7C 08 03 A6 */	mtlr r0
/* 80599260  38 21 00 10 */	addi r1, r1, 0x10
/* 80599264  4E 80 00 20 */	blr 