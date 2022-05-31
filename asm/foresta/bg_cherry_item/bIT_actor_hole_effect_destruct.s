lbl_804B29C8:
/* 804B29C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B29CC  7C 08 02 A6 */	mflr r0
/* 804B29D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B29D4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804B29D8  7C 7F 1B 78 */	mr r31, r3
/* 804B29DC  A8 03 00 16 */	lha r0, 0x16(r3)
/* 804B29E0  2C 00 00 02 */	cmpwi r0, 2
/* 804B29E4  41 82 00 60 */	beq lbl_804B2A44
/* 804B29E8  40 80 00 B0 */	bge lbl_804B2A98
/* 804B29EC  2C 00 00 01 */	cmpwi r0, 1
/* 804B29F0  40 80 00 08 */	bge lbl_804B29F8
/* 804B29F4  48 00 00 A4 */	b lbl_804B2A98
lbl_804B29F8:
/* 804B29F8  80 7F 00 00 */	lwz r3, 0(r31)
/* 804B29FC  38 81 00 20 */	addi r4, r1, 0x20
/* 804B2A00  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B2A04  38 A0 00 01 */	li r5, 1
/* 804B2A08  90 61 00 20 */	stw r3, 0x20(r1)
/* 804B2A0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B2A10  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B2A14  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B2A18  A0 7F 00 18 */	lhz r3, 0x18(r31)
/* 804B2A1C  4B EF 4E 15 */	bl mFI_SetFG_common
/* 804B2A20  80 9F 00 00 */	lwz r4, 0(r31)
/* 804B2A24  38 61 00 14 */	addi r3, r1, 0x14
/* 804B2A28  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B2A2C  90 81 00 14 */	stw r4, 0x14(r1)
/* 804B2A30  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B2A34  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B2A38  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B2A3C  4B EF 65 ED */	bl mFI_Wpos2DepositOFF
/* 804B2A40  48 00 00 58 */	b lbl_804B2A98
lbl_804B2A44:
/* 804B2A44  A0 7F 00 1A */	lhz r3, 0x1a(r31)
/* 804B2A48  7F E5 FB 78 */	mr r5, r31
/* 804B2A4C  A0 9F 00 18 */	lhz r4, 0x18(r31)
/* 804B2A50  38 C0 00 01 */	li r6, 1
/* 804B2A54  4B FF EC 51 */	bl bIT_common_hole_throw
/* 804B2A58  A0 1F 00 1A */	lhz r0, 0x1a(r31)
/* 804B2A5C  28 00 00 00 */	cmplwi r0, 0
/* 804B2A60  40 82 00 38 */	bne lbl_804B2A98
/* 804B2A64  A0 1F 00 18 */	lhz r0, 0x18(r31)
/* 804B2A68  28 00 00 5D */	cmplwi r0, 0x5d
/* 804B2A6C  40 82 00 2C */	bne lbl_804B2A98
/* 804B2A70  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B2A74  38 81 00 08 */	addi r4, r1, 8
/* 804B2A78  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B2A7C  38 60 00 5C */	li r3, 0x5c
/* 804B2A80  38 A0 00 01 */	li r5, 1
/* 804B2A84  90 C1 00 08 */	stw r6, 8(r1)
/* 804B2A88  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B2A8C  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B2A90  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B2A94  4B EF 4D 9D */	bl mFI_SetFG_common
lbl_804B2A98:
/* 804B2A98  38 00 00 00 */	li r0, 0
/* 804B2A9C  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 804B2AA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B2AA4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804B2AA8  7C 08 03 A6 */	mtlr r0
/* 804B2AAC  38 21 00 40 */	addi r1, r1, 0x40
/* 804B2AB0  4E 80 00 20 */	blr 
