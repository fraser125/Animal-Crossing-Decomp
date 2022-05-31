lbl_804B9D4C:
/* 804B9D4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B9D50  7C 08 02 A6 */	mflr r0
/* 804B9D54  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B9D58  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804B9D5C  7C 7F 1B 78 */	mr r31, r3
/* 804B9D60  A8 03 00 16 */	lha r0, 0x16(r3)
/* 804B9D64  2C 00 00 02 */	cmpwi r0, 2
/* 804B9D68  41 82 00 60 */	beq lbl_804B9DC8
/* 804B9D6C  40 80 00 B0 */	bge lbl_804B9E1C
/* 804B9D70  2C 00 00 01 */	cmpwi r0, 1
/* 804B9D74  40 80 00 08 */	bge lbl_804B9D7C
/* 804B9D78  48 00 00 A4 */	b lbl_804B9E1C
lbl_804B9D7C:
/* 804B9D7C  80 7F 00 00 */	lwz r3, 0(r31)
/* 804B9D80  38 81 00 20 */	addi r4, r1, 0x20
/* 804B9D84  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B9D88  38 A0 00 01 */	li r5, 1
/* 804B9D8C  90 61 00 20 */	stw r3, 0x20(r1)
/* 804B9D90  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B9D94  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B9D98  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B9D9C  A0 7F 00 18 */	lhz r3, 0x18(r31)
/* 804B9DA0  4B EE DA 91 */	bl mFI_SetFG_common
/* 804B9DA4  80 9F 00 00 */	lwz r4, 0(r31)
/* 804B9DA8  38 61 00 14 */	addi r3, r1, 0x14
/* 804B9DAC  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B9DB0  90 81 00 14 */	stw r4, 0x14(r1)
/* 804B9DB4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B9DB8  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B9DBC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B9DC0  4B EE F2 69 */	bl mFI_Wpos2DepositOFF
/* 804B9DC4  48 00 00 58 */	b lbl_804B9E1C
lbl_804B9DC8:
/* 804B9DC8  A0 7F 00 1A */	lhz r3, 0x1a(r31)
/* 804B9DCC  7F E5 FB 78 */	mr r5, r31
/* 804B9DD0  A0 9F 00 18 */	lhz r4, 0x18(r31)
/* 804B9DD4  38 C0 00 01 */	li r6, 1
/* 804B9DD8  4B FF EC 51 */	bl bIT_common_hole_throw
/* 804B9DDC  A0 1F 00 1A */	lhz r0, 0x1a(r31)
/* 804B9DE0  28 00 00 00 */	cmplwi r0, 0
/* 804B9DE4  40 82 00 38 */	bne lbl_804B9E1C
/* 804B9DE8  A0 1F 00 18 */	lhz r0, 0x18(r31)
/* 804B9DEC  28 00 00 5D */	cmplwi r0, 0x5d
/* 804B9DF0  40 82 00 2C */	bne lbl_804B9E1C
/* 804B9DF4  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B9DF8  38 81 00 08 */	addi r4, r1, 8
/* 804B9DFC  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B9E00  38 60 00 5C */	li r3, 0x5c
/* 804B9E04  38 A0 00 01 */	li r5, 1
/* 804B9E08  90 C1 00 08 */	stw r6, 8(r1)
/* 804B9E0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B9E10  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B9E14  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B9E18  4B EE DA 19 */	bl mFI_SetFG_common
lbl_804B9E1C:
/* 804B9E1C  38 00 00 00 */	li r0, 0
/* 804B9E20  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 804B9E24  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B9E28  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804B9E2C  7C 08 03 A6 */	mtlr r0
/* 804B9E30  38 21 00 40 */	addi r1, r1, 0x40
/* 804B9E34  4E 80 00 20 */	blr 
