lbl_803C76B0:
/* 803C76B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C76B4  7C 08 02 A6 */	mflr r0
/* 803C76B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C76BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C76C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 803C76C4  41 80 00 60 */	blt lbl_803C7724
/* 803C76C8  2C 1F 00 28 */	cmpwi r31, 0x28
/* 803C76CC  40 80 00 58 */	bge lbl_803C7724
/* 803C76D0  4B FE C4 39 */	bl mLd_PlayerManKindCheck
/* 803C76D4  2C 03 00 00 */	cmpwi r3, 0
/* 803C76D8  40 82 00 4C */	bne lbl_803C7724
/* 803C76DC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C76E0  7F E3 0E 70 */	srawi r3, r31, 1
/* 803C76E4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803C76E8  57 E5 17 7A */	rlwinm r5, r31, 2, 0x1d, 0x1d
/* 803C76EC  3C 84 00 02 */	addis r4, r4, 2
/* 803C76F0  38 00 00 0F */	li r0, 0xf
/* 803C76F4  7C C4 1A 14 */	add r6, r4, r3
/* 803C76F8  88 66 13 BD */	lbz r3, 0x13bd(r6)
/* 803C76FC  7C 00 28 30 */	slw r0, r0, r5
/* 803C7700  7C 60 00 78 */	andc r0, r3, r0
/* 803C7704  98 06 13 BD */	stb r0, 0x13bd(r6)
/* 803C7708  88 64 60 03 */	lbz r3, 0x6003(r4)
/* 803C770C  88 86 13 BD */	lbz r4, 0x13bd(r6)
/* 803C7710  38 03 00 01 */	addi r0, r3, 1
/* 803C7714  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 803C7718  7C 00 28 30 */	slw r0, r0, r5
/* 803C771C  7C 80 03 78 */	or r0, r4, r0
/* 803C7720  98 06 13 BD */	stb r0, 0x13bd(r6)
lbl_803C7724:
/* 803C7724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C7728  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C772C  7C 08 03 A6 */	mtlr r0
/* 803C7730  38 21 00 10 */	addi r1, r1, 0x10
/* 803C7734  4E 80 00 20 */	blr 
