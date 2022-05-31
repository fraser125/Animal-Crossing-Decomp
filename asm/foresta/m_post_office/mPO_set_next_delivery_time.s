lbl_803DFAEC:
/* 803DFAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DFAF0  7C 08 02 A6 */	mflr r0
/* 803DFAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DFAF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DFAFC  7C 7F 1B 78 */	mr r31, r3
/* 803DFB00  88 03 00 02 */	lbz r0, 2(r3)
/* 803DFB04  28 00 00 09 */	cmplwi r0, 9
/* 803DFB08  40 80 00 10 */	bge lbl_803DFB18
/* 803DFB0C  38 00 00 09 */	li r0, 9
/* 803DFB10  98 1F 00 02 */	stb r0, 2(r31)
/* 803DFB14  48 00 00 28 */	b lbl_803DFB3C
lbl_803DFB18:
/* 803DFB18  28 00 00 11 */	cmplwi r0, 0x11
/* 803DFB1C  40 80 00 10 */	bge lbl_803DFB2C
/* 803DFB20  38 00 00 11 */	li r0, 0x11
/* 803DFB24  98 1F 00 02 */	stb r0, 2(r31)
/* 803DFB28  48 00 00 14 */	b lbl_803DFB3C
lbl_803DFB2C:
/* 803DFB2C  38 80 00 01 */	li r4, 1
/* 803DFB30  48 02 71 F5 */	bl lbRTC_Add_DD
/* 803DFB34  38 00 00 09 */	li r0, 9
/* 803DFB38  98 1F 00 02 */	stb r0, 2(r31)
lbl_803DFB3C:
/* 803DFB3C  38 00 00 00 */	li r0, 0
/* 803DFB40  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFB44  98 1F 00 01 */	stb r0, 1(r31)
/* 803DFB48  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DFB4C  3C 63 00 02 */	addis r3, r3, 2
/* 803DFB50  7F E4 FB 78 */	mr r4, r31
/* 803DFB54  98 1F 00 00 */	stb r0, 0(r31)
/* 803DFB58  38 63 0E C8 */	addi r3, r3, 0xec8
/* 803DFB5C  48 02 76 D9 */	bl lbRTC_TimeCopy
/* 803DFB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DFB64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DFB68  7C 08 03 A6 */	mtlr r0
/* 803DFB6C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DFB70  4E 80 00 20 */	blr 
