lbl_803C3BB8:
/* 803C3BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3BBC  7C 08 02 A6 */	mflr r0
/* 803C3BC0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803C3BC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3BC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C3BCC  7C 7F 1B 78 */	mr r31, r3
/* 803C3BD0  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803C3BD4  3C 63 00 02 */	addis r3, r3, 2
/* 803C3BD8  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 803C3BDC  88 03 61 22 */	lbz r0, 0x6122(r3)
/* 803C3BE0  38 65 00 20 */	addi r3, r5, 0x20
/* 803C3BE4  80 A5 00 08 */	lwz r5, 8(r5)
/* 803C3BE8  2C 00 00 0C */	cmpwi r0, 0xc
/* 803C3BEC  40 80 00 14 */	bge lbl_803C3C00
/* 803C3BF0  80 1F 04 0C */	lwz r0, 0x40c(r31)
/* 803C3BF4  64 00 00 02 */	oris r0, r0, 2
/* 803C3BF8  90 1F 04 0C */	stw r0, 0x40c(r31)
/* 803C3BFC  48 00 00 10 */	b lbl_803C3C0C
lbl_803C3C00:
/* 803C3C00  80 1F 04 0C */	lwz r0, 0x40c(r31)
/* 803C3C04  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 803C3C08  90 1F 04 0C */	stw r0, 0x40c(r31)
lbl_803C3C0C:
/* 803C3C0C  80 84 00 00 */	lwz r4, 0(r4)
/* 803C3C10  4B FF D7 B9 */	bl mMsg_CopyHour
/* 803C3C14  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 803C3C18  90 64 00 08 */	stw r3, 8(r4)
/* 803C3C1C  38 60 00 00 */	li r3, 0
/* 803C3C20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C3C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3C28  7C 08 03 A6 */	mtlr r0
/* 803C3C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3C30  4E 80 00 20 */	blr 
