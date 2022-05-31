lbl_80381AD4:
/* 80381AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80381AD8  7C 08 02 A6 */	mflr r0
/* 80381ADC  3C 80 80 64 */	lis r4, lit_474@ha /* 0x80641354@ha */
/* 80381AE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80381AE4  C0 04 13 54 */	lfs f0, lit_474@l(r4)  /* 0x80641354@l */
/* 80381AE8  80 A3 1C 50 */	lwz r5, 0x1c50(r3)
/* 80381AEC  80 03 1C 54 */	lwz r0, 0x1c54(r3)
/* 80381AF0  90 A3 1C 00 */	stw r5, 0x1c00(r3)
/* 80381AF4  90 03 1C 04 */	stw r0, 0x1c04(r3)
/* 80381AF8  80 03 1C 58 */	lwz r0, 0x1c58(r3)
/* 80381AFC  90 03 1C 08 */	stw r0, 0x1c08(r3)
/* 80381B00  80 03 1C 5C */	lwz r0, 0x1c5c(r3)
/* 80381B04  90 03 1C 0C */	stw r0, 0x1c0c(r3)
/* 80381B08  A0 03 1C 60 */	lhz r0, 0x1c60(r3)
/* 80381B0C  B0 03 1C 10 */	sth r0, 0x1c10(r3)
/* 80381B10  C0 23 1C 64 */	lfs f1, 0x1c64(r3)
/* 80381B14  D0 23 1C 14 */	stfs f1, 0x1c14(r3)
/* 80381B18  80 03 1C 68 */	lwz r0, 0x1c68(r3)
/* 80381B1C  90 03 1C 18 */	stw r0, 0x1c18(r3)
/* 80381B20  80 03 1C 6C */	lwz r0, 0x1c6c(r3)
/* 80381B24  90 03 1C 1C */	stw r0, 0x1c1c(r3)
/* 80381B28  D0 03 1C 20 */	stfs f0, 0x1c20(r3)
/* 80381B2C  4B FF CF 69 */	bl Camera2_setup_main_Base
/* 80381B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80381B34  7C 08 03 A6 */	mtlr r0
/* 80381B38  38 21 00 10 */	addi r1, r1, 0x10
/* 80381B3C  4E 80 00 20 */	blr 
