lbl_80471B20:
/* 80471B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80471B24  7C 08 02 A6 */	mflr r0
/* 80471B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80471B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80471B30  7C 9F 23 78 */	mr r31, r4
/* 80471B34  93 C1 00 08 */	stw r30, 8(r1)
/* 80471B38  7C 7E 1B 78 */	mr r30, r3
/* 80471B3C  A0 63 00 00 */	lhz r3, 0(r3)
/* 80471B40  4B FF E6 61 */	bl func_804701A0
/* 80471B44  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 80471B48  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80471B4C  41 82 00 44 */	beq lbl_80471B90
/* 80471B50  88 1E 01 2C */	lbz r0, 0x12c(r30)
/* 80471B54  28 00 00 01 */	cmplwi r0, 1
/* 80471B58  40 82 00 38 */	bne lbl_80471B90
/* 80471B5C  80 1F 04 64 */	lwz r0, 0x464(r31)
/* 80471B60  38 80 00 00 */	li r4, 0
/* 80471B64  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80471B68  4B F0 A8 B1 */	bl mBGMPsComp_delete_ps_room
/* 80471B6C  38 60 00 00 */	li r3, 0
/* 80471B70  38 00 FF FF */	li r0, -1
/* 80471B74  90 7F 04 78 */	stw r3, 0x478(r31)
/* 80471B78  90 7F 04 74 */	stw r3, 0x474(r31)
/* 80471B7C  90 1F 04 68 */	stw r0, 0x468(r31)
/* 80471B80  80 1F 04 64 */	lwz r0, 0x464(r31)
/* 80471B84  2C 00 00 1B */	cmpwi r0, 0x1b
/* 80471B88  41 82 00 08 */	beq lbl_80471B90
/* 80471B8C  4B F0 AC 29 */	bl mBGMPsComp_MDPlayerPos_delete
lbl_80471B90:
/* 80471B90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80471B94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80471B98  83 C1 00 08 */	lwz r30, 8(r1)
/* 80471B9C  7C 08 03 A6 */	mtlr r0
/* 80471BA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80471BA4  4E 80 00 20 */	blr 
