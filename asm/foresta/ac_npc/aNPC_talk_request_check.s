lbl_8052EC58:
/* 8052EC58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052EC5C  7C 08 02 A6 */	mflr r0
/* 8052EC60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052EC64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052EC68  7C 9F 23 78 */	mr r31, r4
/* 8052EC6C  93 C1 00 08 */	stw r30, 8(r1)
/* 8052EC70  7C 7E 1B 78 */	mr r30, r3
/* 8052EC74  80 03 08 40 */	lwz r0, 0x840(r3)
/* 8052EC78  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8052EC7C  40 82 00 84 */	bne lbl_8052ED00
/* 8052EC80  88 1E 08 33 */	lbz r0, 0x833(r30)
/* 8052EC84  28 00 00 00 */	cmplwi r0, 0
/* 8052EC88  40 82 00 78 */	bne lbl_8052ED00
/* 8052EC8C  88 1E 08 30 */	lbz r0, 0x830(r30)
/* 8052EC90  28 00 00 00 */	cmplwi r0, 0
/* 8052EC94  40 82 00 6C */	bne lbl_8052ED00
/* 8052EC98  4B E6 C2 21 */	bl mEv_CheckTitleDemo
/* 8052EC9C  2C 03 00 00 */	cmpwi r3, 0
/* 8052ECA0  41 82 00 10 */	beq lbl_8052ECB0
/* 8052ECA4  4B E6 C2 15 */	bl mEv_CheckTitleDemo
/* 8052ECA8  2C 03 FF F7 */	cmpwi r3, -9
/* 8052ECAC  40 82 00 54 */	bne lbl_8052ED00
lbl_8052ECB0:
/* 8052ECB0  88 1E 07 F5 */	lbz r0, 0x7f5(r30)
/* 8052ECB4  28 00 00 08 */	cmplwi r0, 8
/* 8052ECB8  41 82 00 48 */	beq lbl_8052ED00
/* 8052ECBC  A0 1E 00 06 */	lhz r0, 6(r30)
/* 8052ECC0  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 8052ECC4  2C 00 00 0D */	cmpwi r0, 0xd
/* 8052ECC8  40 82 00 2C */	bne lbl_8052ECF4
/* 8052ECCC  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 8052ECD0  28 03 00 00 */	cmplwi r3, 0
/* 8052ECD4  41 82 00 10 */	beq lbl_8052ECE4
/* 8052ECD8  88 03 08 E2 */	lbz r0, 0x8e2(r3)
/* 8052ECDC  28 00 00 05 */	cmplwi r0, 5
/* 8052ECE0  41 82 00 14 */	beq lbl_8052ECF4
lbl_8052ECE4:
/* 8052ECE4  7F C3 F3 78 */	mr r3, r30
/* 8052ECE8  7F E4 FB 78 */	mr r4, r31
/* 8052ECEC  4B FF FB F9 */	bl aNPC_talk_request_event_npc
/* 8052ECF0  48 00 00 10 */	b lbl_8052ED00
lbl_8052ECF4:
/* 8052ECF4  7F C3 F3 78 */	mr r3, r30
/* 8052ECF8  7F E4 FB 78 */	mr r4, r31
/* 8052ECFC  4B FF FE 7D */	bl aNPC_talk_request_normal_npc
lbl_8052ED00:
/* 8052ED00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052ED04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052ED08  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052ED0C  7C 08 03 A6 */	mtlr r0
/* 8052ED10  38 21 00 10 */	addi r1, r1, 0x10
/* 8052ED14  4E 80 00 20 */	blr 
