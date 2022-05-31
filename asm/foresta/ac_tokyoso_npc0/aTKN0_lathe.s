lbl_8058BB40:
/* 8058BB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058BB44  7C 08 02 A6 */	mflr r0
/* 8058BB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058BB4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058BB50  7C 9F 23 78 */	mr r31, r4
/* 8058BB54  38 80 00 08 */	li r4, 8
/* 8058BB58  93 C1 00 08 */	stw r30, 8(r1)
/* 8058BB5C  7C 7E 1B 78 */	mr r30, r3
/* 8058BB60  38 60 00 0F */	li r3, 0xf
/* 8058BB64  4B E1 22 69 */	bl mEv_get_save_area
/* 8058BB68  80 1E 08 40 */	lwz r0, 0x840(r30)
/* 8058BB6C  7C 64 1B 78 */	mr r4, r3
/* 8058BB70  60 00 08 00 */	ori r0, r0, 0x800
/* 8058BB74  90 1E 08 40 */	stw r0, 0x840(r30)
/* 8058BB78  A0 63 00 02 */	lhz r3, 2(r3)
/* 8058BB7C  54 60 04 65 */	rlwinm. r0, r3, 0, 0x11, 0x12
/* 8058BB80  40 82 00 0C */	bne lbl_8058BB8C
/* 8058BB84  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 8058BB88  41 82 00 24 */	beq lbl_8058BBAC
lbl_8058BB8C:
/* 8058BB8C  7F C3 F3 78 */	mr r3, r30
/* 8058BB90  7F E4 FB 78 */	mr r4, r31
/* 8058BB94  38 A0 00 02 */	li r5, 2
/* 8058BB98  48 00 04 09 */	bl aTKN0_setup_think_proc
/* 8058BB9C  80 1E 08 40 */	lwz r0, 0x840(r30)
/* 8058BBA0  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 8058BBA4  90 1E 08 40 */	stw r0, 0x840(r30)
/* 8058BBA8  48 00 00 24 */	b lbl_8058BBCC
lbl_8058BBAC:
/* 8058BBAC  A9 04 00 0A */	lha r8, 0xa(r4)
/* 8058BBB0  7F C3 F3 78 */	mr r3, r30
/* 8058BBB4  A9 24 00 0C */	lha r9, 0xc(r4)
/* 8058BBB8  38 80 00 04 */	li r4, 4
/* 8058BBBC  38 A0 00 04 */	li r5, 4
/* 8058BBC0  38 C0 00 03 */	li r6, 3
/* 8058BBC4  38 E0 00 00 */	li r7, 0
/* 8058BBC8  4B FF FA 85 */	bl aTKN0_set_request_act
lbl_8058BBCC:
/* 8058BBCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058BBD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058BBD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058BBD8  7C 08 03 A6 */	mtlr r0
/* 8058BBDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8058BBE0  4E 80 00 20 */	blr 
