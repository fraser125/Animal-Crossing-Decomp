lbl_804D171C:
/* 804D171C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D1720  7C 08 02 A6 */	mflr r0
/* 804D1724  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D1728  39 61 00 20 */	addi r11, r1, 0x20
/* 804D172C  4B BC 97 A9 */	bl func_8009AED4
/* 804D1730  3C 60 80 64 */	lis r3, lit_542@ha /* 0x80646464@ha */
/* 804D1734  83 C4 00 00 */	lwz r30, 0(r4)
/* 804D1738  C0 23 64 64 */	lfs f1, lit_542@l(r3)  /* 0x80646464@l */
/* 804D173C  7C 9D 23 78 */	mr r29, r4
/* 804D1740  38 60 00 00 */	li r3, 0
/* 804D1744  FC 40 08 90 */	fmr f2, f1
/* 804D1748  FC 60 08 90 */	fmr f3, f1
/* 804D174C  4B F3 AC A1 */	bl Matrix_scale
/* 804D1750  7F A3 EB 78 */	mr r3, r29
/* 804D1754  4B EE 6F C5 */	bl Global_kankyo_set_room_prim
/* 804D1758  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 804D175C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804D1760  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804D1764  38 7F 00 08 */	addi r3, r31, 8
/* 804D1768  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 804D176C  90 1F 00 00 */	stw r0, 0(r31)
/* 804D1770  80 7D 00 00 */	lwz r3, 0(r29)
/* 804D1774  4B F3 BC 61 */	bl _Matrix_to_Mtx_new
/* 804D1778  90 7F 00 04 */	stw r3, 4(r31)
/* 804D177C  3C 60 80 F2 */	lis r3, rom_museum4_model@ha /* 0x80F23610@ha */
/* 804D1780  3C 80 DE 00 */	lis r4, 0xde00
/* 804D1784  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 804D1788  38 03 36 10 */	addi r0, r3, rom_museum4_model@l /* 0x80F23610@l */
/* 804D178C  38 65 00 08 */	addi r3, r5, 8
/* 804D1790  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 804D1794  90 85 00 00 */	stw r4, 0(r5)
/* 804D1798  90 05 00 04 */	stw r0, 4(r5)
/* 804D179C  39 61 00 20 */	addi r11, r1, 0x20
/* 804D17A0  4B BC 97 81 */	bl func_8009AF20
/* 804D17A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D17A8  7C 08 03 A6 */	mtlr r0
/* 804D17AC  38 21 00 20 */	addi r1, r1, 0x20
/* 804D17B0  4E 80 00 20 */	blr 
