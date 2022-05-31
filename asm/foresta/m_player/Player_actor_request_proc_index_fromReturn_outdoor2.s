lbl_804E5AE8:
/* 804E5AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5AEC  7C 08 02 A6 */	mflr r0
/* 804E5AF0  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804E5AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5AF8  C0 05 65 64 */	lfs f0, lit_603@l(r5)  /* 0x80646564@l */
/* 804E5AFC  C0 23 0D 18 */	lfs f1, 0xd18(r3)
/* 804E5B00  C0 43 0D 1C */	lfs f2, 0xd1c(r3)
/* 804E5B04  EC 01 00 2A */	fadds f0, f1, f0
/* 804E5B08  80 03 0D 20 */	lwz r0, 0xd20(r3)
/* 804E5B0C  D0 03 0D 18 */	stfs f0, 0xd18(r3)
/* 804E5B10  C0 03 0D 18 */	lfs f0, 0xd18(r3)
/* 804E5B14  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804E5B18  4C 41 13 82 */	cror 2, 1, 2
/* 804E5B1C  40 82 00 48 */	bne lbl_804E5B64
/* 804E5B20  2C 00 00 4A */	cmpwi r0, 0x4a
/* 804E5B24  41 82 00 2C */	beq lbl_804E5B50
/* 804E5B28  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804E5B2C  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804E5B30  38 C3 83 54 */	addi r6, r3, lit_7381@l /* 0x80648354@l */
/* 804E5B34  C0 45 65 68 */	lfs f2, lit_604@l(r5)  /* 0x80646568@l */
/* 804E5B38  C0 26 00 00 */	lfs f1, 0(r6)
/* 804E5B3C  7C 83 23 78 */	mr r3, r4
/* 804E5B40  38 80 00 00 */	li r4, 0
/* 804E5B44  38 A0 00 01 */	li r5, 1
/* 804E5B48  48 00 00 B5 */	bl func_804E5BFC
/* 804E5B4C  48 00 00 18 */	b lbl_804E5B64
lbl_804E5B50:
/* 804E5B50  7C 83 23 78 */	mr r3, r4
/* 804E5B54  38 80 00 00 */	li r4, 0
/* 804E5B58  38 A0 00 00 */	li r5, 0
/* 804E5B5C  38 C0 00 13 */	li r6, 0x13
/* 804E5B60  48 01 71 E1 */	bl func_804FCD40
lbl_804E5B64:
/* 804E5B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5B68  7C 08 03 A6 */	mtlr r0
/* 804E5B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5B70  4E 80 00 20 */	blr 
