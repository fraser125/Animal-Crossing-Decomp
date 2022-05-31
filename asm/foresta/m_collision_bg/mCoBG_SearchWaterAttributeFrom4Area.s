lbl_80389364:
/* 80389364  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80389368  7C 08 02 A6 */	mflr r0
/* 8038936C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80389370  38 81 00 08 */	addi r4, r1, 8
/* 80389374  80 C3 00 00 */	lwz r6, 0(r3)
/* 80389378  80 A3 00 04 */	lwz r5, 4(r3)
/* 8038937C  80 03 00 08 */	lwz r0, 8(r3)
/* 80389380  38 61 00 14 */	addi r3, r1, 0x14
/* 80389384  90 C1 00 08 */	stw r6, 8(r1)
/* 80389388  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8038938C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80389390  4B FF C8 79 */	bl mCoBG_Wpos2UnitInfo
/* 80389394  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80389398  3C 60 80 65 */	lis r3, mCoBG_unit_attribute_water_info@ha /* 0x80650D94@ha */
/* 8038939C  38 63 0D 94 */	addi r3, r3, mCoBG_unit_attribute_water_info@l /* 0x80650D94@l */
/* 803893A0  88 04 00 03 */	lbz r0, 3(r4)
/* 803893A4  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 803893A8  7C 63 00 AE */	lbzx r3, r3, r0
/* 803893AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803893B0  7C 08 03 A6 */	mtlr r0
/* 803893B4  38 21 00 50 */	addi r1, r1, 0x50
/* 803893B8  4E 80 00 20 */	blr 
