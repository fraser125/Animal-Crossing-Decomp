lbl_803CA88C:
/* 803CA88C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CA890  7C 08 02 A6 */	mflr r0
/* 803CA894  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CA898  38 61 00 08 */	addi r3, r1, 8
/* 803CA89C  4B FF FA 3D */	bl mNtc_set_landname_string
/* 803CA8A0  7C 65 1B 78 */	mr r5, r3
/* 803CA8A4  38 81 00 08 */	addi r4, r1, 8
/* 803CA8A8  38 60 00 00 */	li r3, 0
/* 803CA8AC  4B FE 70 AD */	bl mHandbill_Set_free_str
/* 803CA8B0  48 01 F0 B5 */	bl mSP_GetShopLevel
/* 803CA8B4  7C 64 1B 78 */	mr r4, r3
/* 803CA8B8  38 61 00 10 */	addi r3, r1, 0x10
/* 803CA8BC  38 A4 05 58 */	addi r5, r4, 0x558
/* 803CA8C0  38 80 00 10 */	li r4, 0x10
/* 803CA8C4  48 02 44 09 */	bl mString_Load_StringFromRom
/* 803CA8C8  38 81 00 10 */	addi r4, r1, 0x10
/* 803CA8CC  38 60 00 01 */	li r3, 1
/* 803CA8D0  38 A0 00 10 */	li r5, 0x10
/* 803CA8D4  4B FE 70 85 */	bl mHandbill_Set_free_str
/* 803CA8D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CA8DC  7C 08 03 A6 */	mtlr r0
/* 803CA8E0  38 21 00 20 */	addi r1, r1, 0x20
/* 803CA8E4  4E 80 00 20 */	blr 
