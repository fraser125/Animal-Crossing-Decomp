lbl_803D6B58:
/* 803D6B58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D6B5C  7C 08 02 A6 */	mflr r0
/* 803D6B60  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D6B64  39 61 00 20 */	addi r11, r1, 0x20
/* 803D6B68  4B CC 43 6D */	bl func_8009AED4
/* 803D6B6C  7C BF 2B 78 */	mr r31, r5
/* 803D6B70  7C 7D 1B 78 */	mr r29, r3
/* 803D6B74  7C 9E 23 78 */	mr r30, r4
/* 803D6B78  7F E3 FB 78 */	mr r3, r31
/* 803D6B7C  4B FE 77 25 */	bl mMpswd_password_zuru_check
/* 803D6B80  2C 03 00 00 */	cmpwi r3, 0
/* 803D6B84  40 82 00 34 */	bne lbl_803D6BB8
/* 803D6B88  7F E3 FB 78 */	mr r3, r31
/* 803D6B8C  4B FE 7E E5 */	bl mMpswd_check_present
/* 803D6B90  2C 03 00 01 */	cmpwi r3, 1
/* 803D6B94  40 82 00 24 */	bne lbl_803D6BB8
/* 803D6B98  7F E3 FB 78 */	mr r3, r31
/* 803D6B9C  4B FE 7F A5 */	bl mMpswd_check_name
/* 803D6BA0  2C 03 00 01 */	cmpwi r3, 1
/* 803D6BA4  40 82 00 14 */	bne lbl_803D6BB8
/* 803D6BA8  7F A3 EB 78 */	mr r3, r29
/* 803D6BAC  7F C4 F3 78 */	mr r4, r30
/* 803D6BB0  4B FF FE DD */	bl mNpc_SendHPMailNum_cardE_mini_user_password_common
/* 803D6BB4  48 00 00 10 */	b lbl_803D6BC4
lbl_803D6BB8:
/* 803D6BB8  7F A3 EB 78 */	mr r3, r29
/* 803D6BBC  7F C4 F3 78 */	mr r4, r30
/* 803D6BC0  4B FF FD F1 */	bl mNpc_SendHPMailNum_NG
lbl_803D6BC4:
/* 803D6BC4  39 61 00 20 */	addi r11, r1, 0x20
/* 803D6BC8  4B CC 43 59 */	bl func_8009AF20
/* 803D6BCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D6BD0  7C 08 03 A6 */	mtlr r0
/* 803D6BD4  38 21 00 20 */	addi r1, r1, 0x20
/* 803D6BD8  4E 80 00 20 */	blr 
