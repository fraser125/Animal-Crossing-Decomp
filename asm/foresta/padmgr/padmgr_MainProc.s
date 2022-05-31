lbl_80408668:
/* 80408668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040866C  7C 08 02 A6 */	mflr r0
/* 80408670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80408674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80408678  3B E0 00 00 */	li r31, 0
/* 8040867C  93 C1 00 08 */	stw r30, 8(r1)
/* 80408680  48 00 00 50 */	b lbl_804086D0
lbl_80408684:
/* 80408684  4B C8 00 BD */	bl VIWaitForRetrace
/* 80408688  3B C0 00 01 */	li r30, 1
/* 8040868C  48 00 00 3C */	b lbl_804086C8
lbl_80408690:
/* 80408690  57 C0 07 7B */	rlwinm. r0, r30, 0, 0x1d, 0x1d
/* 80408694  41 82 00 10 */	beq lbl_804086A4
/* 80408698  57 DE 07 B8 */	rlwinm r30, r30, 0, 0x1e, 0x1c
/* 8040869C  3B E0 00 01 */	li r31, 1
/* 804086A0  48 00 00 28 */	b lbl_804086C8
lbl_804086A4:
/* 804086A4  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 804086A8  41 82 00 10 */	beq lbl_804086B8
/* 804086AC  57 DE 07 FA */	rlwinm r30, r30, 0, 0x1f, 0x1d
/* 804086B0  4B FF FD A5 */	bl padmgr_HandlePreNMIMsg
/* 804086B4  48 00 00 14 */	b lbl_804086C8
lbl_804086B8:
/* 804086B8  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 804086BC  41 82 00 0C */	beq lbl_804086C8
/* 804086C0  57 DE 00 3C */	rlwinm r30, r30, 0, 0, 0x1e
/* 804086C4  4B FF FB E9 */	bl padmgr_HandleRetraceMsg
lbl_804086C8:
/* 804086C8  2C 1E 00 00 */	cmpwi r30, 0
/* 804086CC  40 82 FF C4 */	bne lbl_80408690
lbl_804086D0:
/* 804086D0  2C 1F 00 00 */	cmpwi r31, 0
/* 804086D4  41 82 FF B0 */	beq lbl_80408684
/* 804086D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804086DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804086E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804086E4  7C 08 03 A6 */	mtlr r0
/* 804086E8  38 21 00 10 */	addi r1, r1, 0x10
/* 804086EC  4E 80 00 20 */	blr 
