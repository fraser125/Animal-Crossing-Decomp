lbl_804B8BD8:
/* 804B8BD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B8BDC  7C 08 02 A6 */	mflr r0
/* 804B8BE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B8BE4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804B8BE8  7C 7F 1B 78 */	mr r31, r3
/* 804B8BEC  80 03 00 00 */	lwz r0, 0(r3)
/* 804B8BF0  28 00 00 00 */	cmplwi r0, 0
/* 804B8BF4  41 82 00 9C */	beq lbl_804B8C90
/* 804B8BF8  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804B8BFC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804B8C00  40 82 00 84 */	bne lbl_804B8C84
/* 804B8C04  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 804B8C08  38 61 00 14 */	addi r3, r1, 0x14
/* 804B8C0C  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 804B8C10  90 81 00 14 */	stw r4, 0x14(r1)
/* 804B8C14  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B8C18  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 804B8C1C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B8C20  4B EE E8 11 */	bl mFI_GetUnitFG
/* 804B8C24  28 03 00 00 */	cmplwi r3, 0
/* 804B8C28  41 82 00 34 */	beq lbl_804B8C5C
/* 804B8C2C  A0 83 00 00 */	lhz r4, 0(r3)
/* 804B8C30  28 04 00 11 */	cmplwi r4, 0x11
/* 804B8C34  41 80 00 0C */	blt lbl_804B8C40
/* 804B8C38  28 04 00 29 */	cmplwi r4, 0x29
/* 804B8C3C  40 81 00 0C */	ble lbl_804B8C48
lbl_804B8C40:
/* 804B8C40  28 04 00 5D */	cmplwi r4, 0x5d
/* 804B8C44  40 82 00 18 */	bne lbl_804B8C5C
lbl_804B8C48:
/* 804B8C48  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804B8C4C  38 BF 00 20 */	addi r5, r31, 0x20
/* 804B8C50  38 C0 00 01 */	li r6, 1
/* 804B8C54  4B FF FD D5 */	bl bIT_common_hole_throw
/* 804B8C58  48 00 00 2C */	b lbl_804B8C84
lbl_804B8C5C:
/* 804B8C5C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 804B8C60  38 81 00 08 */	addi r4, r1, 8
/* 804B8C64  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 804B8C68  38 A0 00 00 */	li r5, 0
/* 804B8C6C  90 61 00 08 */	stw r3, 8(r1)
/* 804B8C70  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B8C74  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 804B8C78  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B8C7C  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804B8C80  4B EE EB B1 */	bl mFI_SetFG_common
lbl_804B8C84:
/* 804B8C84  38 00 00 00 */	li r0, 0
/* 804B8C88  90 1F 00 00 */	stw r0, 0(r31)
/* 804B8C8C  90 1F 00 04 */	stw r0, 4(r31)
lbl_804B8C90:
/* 804B8C90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B8C94  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804B8C98  7C 08 03 A6 */	mtlr r0
/* 804B8C9C  38 21 00 30 */	addi r1, r1, 0x30
/* 804B8CA0  4E 80 00 20 */	blr 
