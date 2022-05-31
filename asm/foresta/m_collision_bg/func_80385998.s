lbl_80385998:
/* 80385998  28 03 00 00 */	cmplwi r3, 0
/* 8038599C  4D 82 00 20 */	beqlr 
/* 803859A0  2C 05 00 00 */	cmpwi r5, 0
/* 803859A4  4D 80 00 20 */	bltlr 
/* 803859A8  2C 05 00 08 */	cmpwi r5, 8
/* 803859AC  4C 80 00 20 */	bgelr 
/* 803859B0  1C 05 00 0C */	mulli r0, r5, 0xc
/* 803859B4  3C A0 80 65 */	lis r5, mCoBG_unit_offset@ha /* 0x806509B0@ha */
/* 803859B8  C0 24 00 00 */	lfs f1, 0(r4)
/* 803859BC  38 A5 09 B0 */	addi r5, r5, mCoBG_unit_offset@l /* 0x806509B0@l */
/* 803859C0  7C 05 04 2E */	lfsx f0, r5, r0
/* 803859C4  7C A5 02 14 */	add r5, r5, r0
/* 803859C8  EC 01 00 2A */	fadds f0, f1, f0
/* 803859CC  D0 03 00 00 */	stfs f0, 0(r3)
/* 803859D0  C0 24 00 04 */	lfs f1, 4(r4)
/* 803859D4  C0 05 00 04 */	lfs f0, 4(r5)
/* 803859D8  EC 01 00 2A */	fadds f0, f1, f0
/* 803859DC  D0 03 00 04 */	stfs f0, 4(r3)
/* 803859E0  C0 24 00 08 */	lfs f1, 8(r4)
/* 803859E4  C0 05 00 08 */	lfs f0, 8(r5)
/* 803859E8  EC 01 00 2A */	fadds f0, f1, f0
/* 803859EC  D0 03 00 08 */	stfs f0, 8(r3)
/* 803859F0  4E 80 00 20 */	blr 
