lbl_804D1644:
/* 804D1644  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D1648  7C 08 02 A6 */	mflr r0
/* 804D164C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D1650  39 61 00 20 */	addi r11, r1, 0x20
/* 804D1654  4B BC 98 81 */	bl func_8009AED4
/* 804D1658  3C 60 81 1D */	lis r3, draw_status@ha /* 0x811D2D08@ha */
/* 804D165C  7C 9F 23 78 */	mr r31, r4
/* 804D1660  38 83 2D 08 */	addi r4, r3, draw_status@l /* 0x811D2D08@l */
/* 804D1664  88 64 00 00 */	lbz r3, 0(r4)
/* 804D1668  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 804D166C  40 82 00 0C */	bne lbl_804D1678
/* 804D1670  60 60 00 04 */	ori r0, r3, 4
/* 804D1674  98 04 00 00 */	stb r0, 0(r4)
lbl_804D1678:
/* 804D1678  3C 60 81 1D */	lis r3, draw_status@ha /* 0x811D2D08@ha */
/* 804D167C  8C 83 2D 08 */	lbzu r4, draw_status@l(r3)  /* 0x811D2D08@l */
/* 804D1680  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 804D1684  41 82 00 14 */	beq lbl_804D1698
/* 804D1688  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 804D168C  41 82 00 0C */	beq lbl_804D1698
/* 804D1690  38 00 00 00 */	li r0, 0
/* 804D1694  98 03 00 00 */	stb r0, 0(r3)
lbl_804D1698:
/* 804D1698  3C 60 80 64 */	lis r3, lit_542@ha /* 0x80646464@ha */
/* 804D169C  83 BF 00 00 */	lwz r29, 0(r31)
/* 804D16A0  38 83 64 64 */	addi r4, r3, lit_542@l /* 0x80646464@l */
/* 804D16A4  38 60 00 00 */	li r3, 0
/* 804D16A8  C0 24 00 00 */	lfs f1, 0(r4)
/* 804D16AC  FC 40 08 90 */	fmr f2, f1
/* 804D16B0  FC 60 08 90 */	fmr f3, f1
/* 804D16B4  4B F3 AD 39 */	bl Matrix_scale
/* 804D16B8  7F E3 FB 78 */	mr r3, r31
/* 804D16BC  4B EE 70 5D */	bl Global_kankyo_set_room_prim
/* 804D16C0  83 DD 02 D0 */	lwz r30, 0x2d0(r29)
/* 804D16C4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804D16C8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804D16CC  38 7E 00 08 */	addi r3, r30, 8
/* 804D16D0  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 804D16D4  90 1E 00 00 */	stw r0, 0(r30)
/* 804D16D8  80 7F 00 00 */	lwz r3, 0(r31)
/* 804D16DC  4B F3 BC F9 */	bl _Matrix_to_Mtx_new
/* 804D16E0  90 7E 00 04 */	stw r3, 4(r30)
/* 804D16E4  3C 60 80 9C */	lis r3, rom_museum4_ue_model@ha /* 0x809C6510@ha */
/* 804D16E8  3C 80 DE 00 */	lis r4, 0xde00
/* 804D16EC  80 BD 02 D0 */	lwz r5, 0x2d0(r29)
/* 804D16F0  38 03 65 10 */	addi r0, r3, rom_museum4_ue_model@l /* 0x809C6510@l */
/* 804D16F4  38 65 00 08 */	addi r3, r5, 8
/* 804D16F8  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 804D16FC  90 85 00 00 */	stw r4, 0(r5)
/* 804D1700  90 05 00 04 */	stw r0, 4(r5)
/* 804D1704  39 61 00 20 */	addi r11, r1, 0x20
/* 804D1708  4B BC 98 19 */	bl func_8009AF20
/* 804D170C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D1710  7C 08 03 A6 */	mtlr r0
/* 804D1714  38 21 00 20 */	addi r1, r1, 0x20
/* 804D1718  4E 80 00 20 */	blr 
