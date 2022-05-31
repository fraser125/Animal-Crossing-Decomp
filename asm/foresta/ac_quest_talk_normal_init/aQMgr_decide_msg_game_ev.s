lbl_804941B8:
/* 804941B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804941BC  7C 08 02 A6 */	mflr r0
/* 804941C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804941C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804941C8  7C 9F 23 78 */	mr r31, r4
/* 804941CC  93 C1 00 08 */	stw r30, 8(r1)
/* 804941D0  7C 7E 1B 78 */	mr r30, r3
/* 804941D4  4B F1 F9 35 */	bl mLd_PlayerManKindCheck
/* 804941D8  2C 03 00 00 */	cmpwi r3, 0
/* 804941DC  40 82 00 24 */	bne lbl_80494200
/* 804941E0  7F C3 F3 78 */	mr r3, r30
/* 804941E4  4B FF D7 B9 */	bl aQMgr_check_client_remove
/* 804941E8  2C 03 00 01 */	cmpwi r3, 1
/* 804941EC  40 82 00 14 */	bne lbl_80494200
/* 804941F0  7F C3 F3 78 */	mr r3, r30
/* 804941F4  7F E4 FB 78 */	mr r4, r31
/* 804941F8  4B FF FB 8D */	bl aQMgr_decide_msg_remove
/* 804941FC  48 00 00 10 */	b lbl_8049420C
lbl_80494200:
/* 80494200  7F C3 F3 78 */	mr r3, r30
/* 80494204  7F E4 FB 78 */	mr r4, r31
/* 80494208  4B FF FE FD */	bl aQMgr_decide_msg_ev
lbl_8049420C:
/* 8049420C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80494214  83 C1 00 08 */	lwz r30, 8(r1)
/* 80494218  7C 08 03 A6 */	mtlr r0
/* 8049421C  38 21 00 10 */	addi r1, r1, 0x10
/* 80494220  4E 80 00 20 */	blr 
