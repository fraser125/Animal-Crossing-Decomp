lbl_804A37BC:
/* 804A37BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A37C0  7C 08 02 A6 */	mflr r0
/* 804A37C4  38 60 01 2A */	li r3, 0x12a
/* 804A37C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A37CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A37D0  4B F1 8C 8D */	bl zelda_malloc
/* 804A37D4  7C 7F 1B 78 */	mr r31, r3
/* 804A37D8  4B F1 03 31 */	bl mLd_PlayerManKindCheck
/* 804A37DC  2C 03 00 00 */	cmpwi r3, 0
/* 804A37E0  40 82 00 34 */	bne lbl_804A3814
/* 804A37E4  28 1F 00 00 */	cmplwi r31, 0
/* 804A37E8  41 82 00 2C */	beq lbl_804A3814
/* 804A37EC  4B F3 B6 79 */	bl mPO_get_keep_mail_sum
/* 804A37F0  2C 03 00 05 */	cmpwi r3, 5
/* 804A37F4  40 80 00 20 */	bge lbl_804A3814
/* 804A37F8  7F E3 FB 78 */	mr r3, r31
/* 804A37FC  4B F1 8F 05 */	bl mMl_clear_mail
/* 804A3800  7F E3 FB 78 */	mr r3, r31
/* 804A3804  4B FF FE A5 */	bl aSMAN_GetSnowmanPresentMail
/* 804A3808  7F E3 FB 78 */	mr r3, r31
/* 804A380C  38 80 00 00 */	li r4, 0
/* 804A3810  4B F3 B8 51 */	bl mPO_receipt_proc
lbl_804A3814:
/* 804A3814  7F E3 FB 78 */	mr r3, r31
/* 804A3818  4B F1 8C 9D */	bl zelda_free
/* 804A381C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A3820  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A3824  7C 08 03 A6 */	mtlr r0
/* 804A3828  38 21 00 10 */	addi r1, r1, 0x10
/* 804A382C  4E 80 00 20 */	blr 
