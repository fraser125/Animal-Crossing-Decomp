lbl_8054D72C:
/* 8054D72C  3C 80 80 65 */	lis r4, lit_652@ha /* 0x806494F0@ha */
/* 8054D730  3C A0 80 65 */	lis r5, lit_653@ha /* 0x806494F4@ha */
/* 8054D734  38 C4 94 F0 */	addi r6, r4, lit_652@l /* 0x806494F0@l */
/* 8054D738  C0 25 94 F4 */	lfs f1, lit_653@l(r5)  /* 0x806494F4@l */
/* 8054D73C  C0 06 00 00 */	lfs f0, 0(r6)
/* 8054D740  3C 80 80 65 */	lis r4, lit_654@ha /* 0x806494F8@ha */
/* 8054D744  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 8054D748  C0 04 94 F8 */	lfs f0, lit_654@l(r4)  /* 0x806494F8@l */
/* 8054D74C  D0 23 08 FC */	stfs f1, 0x8fc(r3)
/* 8054D750  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8054D754  4E 80 00 20 */	blr 
