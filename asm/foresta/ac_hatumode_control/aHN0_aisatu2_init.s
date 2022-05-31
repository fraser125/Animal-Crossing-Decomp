lbl_8042A07C:
/* 8042A07C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042A080  7C 08 02 A6 */	mflr r0
/* 8042A084  38 80 00 07 */	li r4, 7
/* 8042A088  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042A08C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042A090  93 C1 00 08 */	stw r30, 8(r1)
/* 8042A094  7C 7E 1B 78 */	mr r30, r3
/* 8042A098  38 60 00 01 */	li r3, 1
/* 8042A09C  4B F7 3D 31 */	bl mEv_get_save_area
/* 8042A0A0  7C 7F 1B 78 */	mr r31, r3
/* 8042A0A4  7F C3 F3 78 */	mr r3, r30
/* 8042A0A8  4B FF FA 35 */	bl func_80429ADC
/* 8042A0AC  A0 1F 00 02 */	lhz r0, 2(r31)
/* 8042A0B0  60 00 20 00 */	ori r0, r0, 0x2000
/* 8042A0B4  B0 1F 00 02 */	sth r0, 2(r31)
/* 8042A0B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042A0BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042A0C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042A0C4  7C 08 03 A6 */	mtlr r0
/* 8042A0C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8042A0CC  4E 80 00 20 */	blr 
