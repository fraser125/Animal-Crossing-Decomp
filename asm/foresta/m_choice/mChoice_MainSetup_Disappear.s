lbl_80384DE0:
/* 80384DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80384DE4  7C 08 02 A6 */	mflr r0
/* 80384DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80384DEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80384DF0  7C 7F 1B 78 */	mr r31, r3
/* 80384DF4  88 03 00 FC */	lbz r0, 0xfc(r3)
/* 80384DF8  28 00 00 00 */	cmplwi r0, 0
/* 80384DFC  41 82 00 44 */	beq lbl_80384E40
/* 80384E00  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 80384E04  80 9F 00 C8 */	lwz r4, 0xc8(r31)
/* 80384E08  38 03 FF FF */	addi r0, r3, -1
/* 80384E0C  7C 04 00 00 */	cmpw r4, r0
/* 80384E10  40 82 00 30 */	bne lbl_80384E40
/* 80384E14  88 1F 00 FD */	lbz r0, 0xfd(r31)
/* 80384E18  28 00 00 00 */	cmplwi r0, 0
/* 80384E1C  41 82 00 1C */	beq lbl_80384E38
/* 80384E20  4B FF F7 6D */	bl mChoice_sound_ZOOMDOWN_LONG
/* 80384E24  48 03 A8 85 */	bl func_803BF6A8
/* 80384E28  80 03 04 0C */	lwz r0, 0x40c(r3)
/* 80384E2C  60 00 08 00 */	ori r0, r0, 0x800
/* 80384E30  90 03 04 0C */	stw r0, 0x40c(r3)
/* 80384E34  48 00 00 10 */	b lbl_80384E44
lbl_80384E38:
/* 80384E38  4B FF F7 2D */	bl mChoice_sound_ZOOMDOWN_SHORT
/* 80384E3C  48 00 00 08 */	b lbl_80384E44
lbl_80384E40:
/* 80384E40  4B FF F6 B9 */	bl func_803844F8
lbl_80384E44:
/* 80384E44  3C 80 80 64 */	lis r4, lit_399@ha /* 0x80641744@ha */
/* 80384E48  38 C0 00 03 */	li r6, 3
/* 80384E4C  C0 04 17 44 */	lfs f0, lit_399@l(r4)  /* 0x80641744@l */
/* 80384E50  38 A0 FF FF */	li r5, -1
/* 80384E54  3C 60 80 64 */	lis r3, lit_402@ha /* 0x80641750@ha */
/* 80384E58  38 80 00 01 */	li r4, 1
/* 80384E5C  D0 1F 00 DC */	stfs f0, 0xdc(r31)
/* 80384E60  38 00 00 00 */	li r0, 0
/* 80384E64  C0 03 17 50 */	lfs f0, lit_402@l(r3)  /* 0x80641750@l */
/* 80384E68  90 DF 00 E0 */	stw r6, 0xe0(r31)
/* 80384E6C  90 BF 00 E4 */	stw r5, 0xe4(r31)
/* 80384E70  90 9F 00 E8 */	stw r4, 0xe8(r31)
/* 80384E74  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
/* 80384E78  90 1F 00 EC */	stw r0, 0xec(r31)
/* 80384E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80384E80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80384E84  7C 08 03 A6 */	mtlr r0
/* 80384E88  38 21 00 10 */	addi r1, r1, 0x10
/* 80384E8C  4E 80 00 20 */	blr 
