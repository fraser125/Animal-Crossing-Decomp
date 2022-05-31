lbl_803D6BDC:
/* 803D6BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D6BE0  7C 08 02 A6 */	mflr r0
/* 803D6BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D6BE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D6BEC  7C 9F 23 78 */	mr r31, r4
/* 803D6BF0  93 C1 00 08 */	stw r30, 8(r1)
/* 803D6BF4  7C 7E 1B 78 */	mr r30, r3
/* 803D6BF8  7C A3 2B 78 */	mr r3, r5
/* 803D6BFC  4B FE 76 A5 */	bl mMpswd_password_zuru_check
/* 803D6C00  2C 03 00 00 */	cmpwi r3, 0
/* 803D6C04  40 82 00 14 */	bne lbl_803D6C18
/* 803D6C08  7F C3 F3 78 */	mr r3, r30
/* 803D6C0C  7F E4 FB 78 */	mr r4, r31
/* 803D6C10  4B FF FE 7D */	bl mNpc_SendHPMailNum_cardE_mini_user_password_common
/* 803D6C14  48 00 00 10 */	b lbl_803D6C24
lbl_803D6C18:
/* 803D6C18  7F C3 F3 78 */	mr r3, r30
/* 803D6C1C  7F E4 FB 78 */	mr r4, r31
/* 803D6C20  4B FF FD 91 */	bl mNpc_SendHPMailNum_NG
lbl_803D6C24:
/* 803D6C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D6C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D6C2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D6C30  7C 08 03 A6 */	mtlr r0
/* 803D6C34  38 21 00 10 */	addi r1, r1, 0x10
/* 803D6C38  4E 80 00 20 */	blr 
