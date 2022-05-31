lbl_803CC030:
/* 803CC030  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CC034  7C 08 02 A6 */	mflr r0
/* 803CC038  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CC03C  39 61 00 20 */	addi r11, r1, 0x20
/* 803CC040  4B CC EE 95 */	bl func_8009AED4
/* 803CC044  7C 9E 23 78 */	mr r30, r4
/* 803CC048  88 05 00 00 */	lbz r0, 0(r5)
/* 803CC04C  88 84 00 30 */	lbz r4, 0x30(r4)
/* 803CC050  7C 7D 1B 78 */	mr r29, r3
/* 803CC054  7C 00 07 74 */	extsb r0, r0
/* 803CC058  3B E0 00 00 */	li r31, 0
/* 803CC05C  7C 83 07 74 */	extsb r3, r4
/* 803CC060  7C 03 00 00 */	cmpw r3, r0
/* 803CC064  40 81 00 14 */	ble lbl_803CC078
/* 803CC068  98 85 00 00 */	stb r4, 0(r5)
/* 803CC06C  3B E0 00 01 */	li r31, 1
/* 803CC070  93 DD 00 00 */	stw r30, 0(r29)
/* 803CC074  48 00 00 68 */	b lbl_803CC0DC
lbl_803CC078:
/* 803CC078  40 82 00 64 */	bne lbl_803CC0DC
/* 803CC07C  80 9D 00 00 */	lwz r4, 0(r29)
/* 803CC080  28 04 00 00 */	cmplwi r4, 0
/* 803CC084  41 82 00 50 */	beq lbl_803CC0D4
/* 803CC088  88 64 00 31 */	lbz r3, 0x31(r4)
/* 803CC08C  88 1E 00 31 */	lbz r0, 0x31(r30)
/* 803CC090  54 63 CF FE */	rlwinm r3, r3, 0x19, 0x1f, 0x1f
/* 803CC094  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 803CC098  7C 03 00 40 */	cmplw r3, r0
/* 803CC09C  40 82 00 24 */	bne lbl_803CC0C0
/* 803CC0A0  38 64 00 14 */	addi r3, r4, 0x14
/* 803CC0A4  38 9E 00 14 */	addi r4, r30, 0x14
/* 803CC0A8  48 03 A8 6D */	bl lbRTC_IsOverTime
/* 803CC0AC  2C 03 FF FF */	cmpwi r3, -1
/* 803CC0B0  40 82 00 2C */	bne lbl_803CC0DC
/* 803CC0B4  93 DD 00 00 */	stw r30, 0(r29)
/* 803CC0B8  3B E0 00 01 */	li r31, 1
/* 803CC0BC  48 00 00 20 */	b lbl_803CC0DC
lbl_803CC0C0:
/* 803CC0C0  28 00 00 01 */	cmplwi r0, 1
/* 803CC0C4  40 82 00 18 */	bne lbl_803CC0DC
/* 803CC0C8  93 DD 00 00 */	stw r30, 0(r29)
/* 803CC0CC  3B E0 00 01 */	li r31, 1
/* 803CC0D0  48 00 00 0C */	b lbl_803CC0DC
lbl_803CC0D4:
/* 803CC0D4  93 DD 00 00 */	stw r30, 0(r29)
/* 803CC0D8  3B E0 00 01 */	li r31, 1
lbl_803CC0DC:
/* 803CC0DC  7F E3 FB 78 */	mr r3, r31
/* 803CC0E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803CC0E4  4B CC EE 3D */	bl func_8009AF20
/* 803CC0E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CC0EC  7C 08 03 A6 */	mtlr r0
/* 803CC0F0  38 21 00 20 */	addi r1, r1, 0x20
/* 803CC0F4  4E 80 00 20 */	blr 
