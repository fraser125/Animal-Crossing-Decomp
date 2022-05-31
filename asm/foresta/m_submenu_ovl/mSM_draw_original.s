lbl_805EEB18:
/* 805EEB18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805EEB1C  7C 08 02 A6 */	mflr r0
/* 805EEB20  90 01 00 34 */	stw r0, 0x34(r1)
/* 805EEB24  39 61 00 30 */	addi r11, r1, 0x30
/* 805EEB28  4B AA C3 15 */	bl func_8009AE3C
/* 805EEB2C  39 61 00 18 */	addi r11, r1, 0x18
/* 805EEB30  4B AA C3 A1 */	bl func_8009AED0
/* 805EEB34  7C BE 2B 78 */	mr r30, r5
/* 805EEB38  FF A0 08 90 */	fmr f29, f1
/* 805EEB3C  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 805EEB40  FF C0 10 90 */	fmr f30, f2
/* 805EEB44  FF E0 18 90 */	fmr f31, f3
/* 805EEB48  28 05 FE 31 */	cmplwi r5, 0xfe31
/* 805EEB4C  7C 7C 1B 78 */	mr r28, r3
/* 805EEB50  7C 9D 23 78 */	mr r29, r4
/* 805EEB54  7C DF 33 78 */	mr r31, r6
/* 805EEB58  41 80 00 18 */	blt lbl_805EEB70
/* 805EEB5C  28 05 FE 38 */	cmplwi r5, 0xfe38
/* 805EEB60  41 81 00 10 */	bgt lbl_805EEB70
/* 805EEB64  3C A5 FF FF */	addis r5, r5, 0xffff
/* 805EEB68  38 A5 01 CF */	addi r5, r5, 0x1cf
/* 805EEB6C  4B FF AF 41 */	bl mNW_draw_original
lbl_805EEB70:
/* 805EEB70  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 805EEB74  28 03 FE 39 */	cmplwi r3, 0xfe39
/* 805EEB78  41 80 00 30 */	blt lbl_805EEBA8
/* 805EEB7C  28 03 FE 98 */	cmplwi r3, 0xfe98
/* 805EEB80  41 81 00 28 */	bgt lbl_805EEBA8
/* 805EEB84  FC 20 E8 90 */	fmr f1, f29
/* 805EEB88  3C A3 FF FF */	addis r5, r3, 0xffff
/* 805EEB8C  FC 40 F0 90 */	fmr f2, f30
/* 805EEB90  7F 83 E3 78 */	mr r3, r28
/* 805EEB94  FC 60 F8 90 */	fmr f3, f31
/* 805EEB98  7F A4 EB 78 */	mr r4, r29
/* 805EEB9C  7F E6 FB 78 */	mr r6, r31
/* 805EEBA0  38 A5 01 CF */	addi r5, r5, 0x1cf
/* 805EEBA4  4B FD E9 0D */	bl mCO_draw_cporiginal
lbl_805EEBA8:
/* 805EEBA8  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 805EEBAC  28 03 FE 99 */	cmplwi r3, 0xfe99
/* 805EEBB0  41 80 00 30 */	blt lbl_805EEBE0
/* 805EEBB4  28 03 FE A0 */	cmplwi r3, 0xfea0
/* 805EEBB8  41 81 00 28 */	bgt lbl_805EEBE0
/* 805EEBBC  FC 20 E8 90 */	fmr f1, f29
/* 805EEBC0  3C A3 FF FF */	addis r5, r3, 0xffff
/* 805EEBC4  FC 40 F0 90 */	fmr f2, f30
/* 805EEBC8  7F 83 E3 78 */	mr r3, r28
/* 805EEBCC  FC 60 F8 90 */	fmr f3, f31
/* 805EEBD0  7F A4 EB 78 */	mr r4, r29
/* 805EEBD4  7F E6 FB 78 */	mr r6, r31
/* 805EEBD8  38 A5 01 67 */	addi r5, r5, 0x167
/* 805EEBDC  4B FE D9 19 */	bl mGB_draw_gba
lbl_805EEBE0:
/* 805EEBE0  39 61 00 30 */	addi r11, r1, 0x30
/* 805EEBE4  4B AA C2 A5 */	bl func_8009AE88
/* 805EEBE8  39 61 00 18 */	addi r11, r1, 0x18
/* 805EEBEC  4B AA C3 31 */	bl func_8009AF1C
/* 805EEBF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805EEBF4  7C 08 03 A6 */	mtlr r0
/* 805EEBF8  38 21 00 30 */	addi r1, r1, 0x30
/* 805EEBFC  4E 80 00 20 */	blr 
