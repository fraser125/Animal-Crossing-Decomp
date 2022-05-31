lbl_8049A0D8:
/* 8049A0D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049A0DC  7C 08 02 A6 */	mflr r0
/* 8049A0E0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049A0E4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8049A0E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049A0EC  3C 84 00 02 */	addis r4, r4, 2
/* 8049A0F0  98 64 41 76 */	stb r3, 0x4176(r4)
/* 8049A0F4  4B BC 2C 01 */	bl fqrand
/* 8049A0F8  3C 80 80 64 */	lis r4, lit_716@ha /* 0x80644CF8@ha */
/* 8049A0FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049A100  C0 04 4C F8 */	lfs f0, lit_716@l(r4)  /* 0x80644CF8@l */
/* 8049A104  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049A108  3C 63 00 02 */	addis r3, r3, 2
/* 8049A10C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8049A110  FC 00 00 1E */	fctiwz f0, f0
/* 8049A114  D8 01 00 08 */	stfd f0, 8(r1)
/* 8049A118  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8049A11C  98 03 41 77 */	stb r0, 0x4177(r3)
/* 8049A120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049A124  7C 08 03 A6 */	mtlr r0
/* 8049A128  38 21 00 10 */	addi r1, r1, 0x10
/* 8049A12C  4E 80 00 20 */	blr 
