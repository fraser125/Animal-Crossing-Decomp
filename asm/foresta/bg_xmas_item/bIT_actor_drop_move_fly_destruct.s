lbl_804C7AE8:
/* 804C7AE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C7AEC  7C 08 02 A6 */	mflr r0
/* 804C7AF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C7AF4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804C7AF8  7C 7F 1B 78 */	mr r31, r3
/* 804C7AFC  80 03 00 00 */	lwz r0, 0(r3)
/* 804C7B00  28 00 00 00 */	cmplwi r0, 0
/* 804C7B04  41 82 00 9C */	beq lbl_804C7BA0
/* 804C7B08  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C7B0C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804C7B10  40 82 00 84 */	bne lbl_804C7B94
/* 804C7B14  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 804C7B18  38 61 00 14 */	addi r3, r1, 0x14
/* 804C7B1C  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 804C7B20  90 81 00 14 */	stw r4, 0x14(r1)
/* 804C7B24  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C7B28  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 804C7B2C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C7B30  4B ED F9 01 */	bl mFI_GetUnitFG
/* 804C7B34  28 03 00 00 */	cmplwi r3, 0
/* 804C7B38  41 82 00 34 */	beq lbl_804C7B6C
/* 804C7B3C  A0 83 00 00 */	lhz r4, 0(r3)
/* 804C7B40  28 04 00 11 */	cmplwi r4, 0x11
/* 804C7B44  41 80 00 0C */	blt lbl_804C7B50
/* 804C7B48  28 04 00 29 */	cmplwi r4, 0x29
/* 804C7B4C  40 81 00 0C */	ble lbl_804C7B58
lbl_804C7B50:
/* 804C7B50  28 04 00 5D */	cmplwi r4, 0x5d
/* 804C7B54  40 82 00 18 */	bne lbl_804C7B6C
lbl_804C7B58:
/* 804C7B58  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804C7B5C  38 BF 00 20 */	addi r5, r31, 0x20
/* 804C7B60  38 C0 00 01 */	li r6, 1
/* 804C7B64  4B FF FD D5 */	bl bIT_common_hole_throw
/* 804C7B68  48 00 00 2C */	b lbl_804C7B94
lbl_804C7B6C:
/* 804C7B6C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 804C7B70  38 81 00 08 */	addi r4, r1, 8
/* 804C7B74  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 804C7B78  38 A0 00 00 */	li r5, 0
/* 804C7B7C  90 61 00 08 */	stw r3, 8(r1)
/* 804C7B80  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C7B84  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 804C7B88  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C7B8C  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804C7B90  4B ED FC A1 */	bl mFI_SetFG_common
lbl_804C7B94:
/* 804C7B94  38 00 00 00 */	li r0, 0
/* 804C7B98  90 1F 00 00 */	stw r0, 0(r31)
/* 804C7B9C  90 1F 00 04 */	stw r0, 4(r31)
lbl_804C7BA0:
/* 804C7BA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C7BA4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804C7BA8  7C 08 03 A6 */	mtlr r0
/* 804C7BAC  38 21 00 30 */	addi r1, r1, 0x30
/* 804C7BB0  4E 80 00 20 */	blr 
