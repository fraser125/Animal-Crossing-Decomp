lbl_804C8C5C:
/* 804C8C5C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C8C60  7C 08 02 A6 */	mflr r0
/* 804C8C64  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C8C68  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804C8C6C  7C 7F 1B 78 */	mr r31, r3
/* 804C8C70  A8 03 00 16 */	lha r0, 0x16(r3)
/* 804C8C74  2C 00 00 02 */	cmpwi r0, 2
/* 804C8C78  41 82 00 60 */	beq lbl_804C8CD8
/* 804C8C7C  40 80 00 B0 */	bge lbl_804C8D2C
/* 804C8C80  2C 00 00 01 */	cmpwi r0, 1
/* 804C8C84  40 80 00 08 */	bge lbl_804C8C8C
/* 804C8C88  48 00 00 A4 */	b lbl_804C8D2C
lbl_804C8C8C:
/* 804C8C8C  80 7F 00 00 */	lwz r3, 0(r31)
/* 804C8C90  38 81 00 20 */	addi r4, r1, 0x20
/* 804C8C94  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C8C98  38 A0 00 01 */	li r5, 1
/* 804C8C9C  90 61 00 20 */	stw r3, 0x20(r1)
/* 804C8CA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C8CA4  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C8CA8  90 01 00 28 */	stw r0, 0x28(r1)
/* 804C8CAC  A0 7F 00 18 */	lhz r3, 0x18(r31)
/* 804C8CB0  4B ED EB 81 */	bl mFI_SetFG_common
/* 804C8CB4  80 9F 00 00 */	lwz r4, 0(r31)
/* 804C8CB8  38 61 00 14 */	addi r3, r1, 0x14
/* 804C8CBC  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C8CC0  90 81 00 14 */	stw r4, 0x14(r1)
/* 804C8CC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C8CC8  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C8CCC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C8CD0  4B EE 03 59 */	bl mFI_Wpos2DepositOFF
/* 804C8CD4  48 00 00 58 */	b lbl_804C8D2C
lbl_804C8CD8:
/* 804C8CD8  A0 7F 00 1A */	lhz r3, 0x1a(r31)
/* 804C8CDC  7F E5 FB 78 */	mr r5, r31
/* 804C8CE0  A0 9F 00 18 */	lhz r4, 0x18(r31)
/* 804C8CE4  38 C0 00 01 */	li r6, 1
/* 804C8CE8  4B FF EC 51 */	bl bIT_common_hole_throw
/* 804C8CEC  A0 1F 00 1A */	lhz r0, 0x1a(r31)
/* 804C8CF0  28 00 00 00 */	cmplwi r0, 0
/* 804C8CF4  40 82 00 38 */	bne lbl_804C8D2C
/* 804C8CF8  A0 1F 00 18 */	lhz r0, 0x18(r31)
/* 804C8CFC  28 00 00 5D */	cmplwi r0, 0x5d
/* 804C8D00  40 82 00 2C */	bne lbl_804C8D2C
/* 804C8D04  80 DF 00 00 */	lwz r6, 0(r31)
/* 804C8D08  38 81 00 08 */	addi r4, r1, 8
/* 804C8D0C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C8D10  38 60 00 5C */	li r3, 0x5c
/* 804C8D14  38 A0 00 01 */	li r5, 1
/* 804C8D18  90 C1 00 08 */	stw r6, 8(r1)
/* 804C8D1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C8D20  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C8D24  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C8D28  4B ED EB 09 */	bl mFI_SetFG_common
lbl_804C8D2C:
/* 804C8D2C  38 00 00 00 */	li r0, 0
/* 804C8D30  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 804C8D34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C8D38  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804C8D3C  7C 08 03 A6 */	mtlr r0
/* 804C8D40  38 21 00 40 */	addi r1, r1, 0x40
/* 804C8D44  4E 80 00 20 */	blr 
