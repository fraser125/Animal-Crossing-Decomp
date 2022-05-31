lbl_8049ACB4:
/* 8049ACB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049ACB8  7C 08 02 A6 */	mflr r0
/* 8049ACBC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049ACC0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8049ACC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049ACC8  3C 84 00 02 */	addis r4, r4, 2
/* 8049ACCC  98 64 41 74 */	stb r3, 0x4174(r4)
/* 8049ACD0  4B BC 20 25 */	bl fqrand
/* 8049ACD4  3C 80 80 64 */	lis r4, lit_526@ha /* 0x80644D1C@ha */
/* 8049ACD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049ACDC  C0 04 4D 1C */	lfs f0, lit_526@l(r4)  /* 0x80644D1C@l */
/* 8049ACE0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049ACE4  3C 63 00 02 */	addis r3, r3, 2
/* 8049ACE8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8049ACEC  FC 00 00 1E */	fctiwz f0, f0
/* 8049ACF0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8049ACF4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8049ACF8  98 03 41 75 */	stb r0, 0x4175(r3)
/* 8049ACFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049AD00  7C 08 03 A6 */	mtlr r0
/* 8049AD04  38 21 00 10 */	addi r1, r1, 0x10
/* 8049AD08  4E 80 00 20 */	blr 
