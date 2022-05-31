lbl_804141B0:
/* 804141B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804141B4  7C 08 02 A6 */	mflr r0
/* 804141B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804141BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804141C0  7C 9F 23 78 */	mr r31, r4
/* 804141C4  93 C1 00 08 */	stw r30, 8(r1)
/* 804141C8  7C 7E 1B 78 */	mr r30, r3
/* 804141CC  4B FF FD 8D */	bl Ac_Balloon_CulcAnimation_fly
/* 804141D0  7F C3 F3 78 */	mr r3, r30
/* 804141D4  4B FF FD A9 */	bl Ac_Balloon_Movement_fly
/* 804141D8  7F C3 F3 78 */	mr r3, r30
/* 804141DC  7F E4 FB 78 */	mr r4, r31
/* 804141E0  4B FF FF 65 */	bl Ac_Balloon_request_change_mode_fromFly
/* 804141E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804141E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804141EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804141F0  7C 08 03 A6 */	mtlr r0
/* 804141F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804141F8  4E 80 00 20 */	blr 
