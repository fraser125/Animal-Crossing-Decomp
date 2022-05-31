lbl_803AC218:
/* 803AC218  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803AC21C  7C 08 02 A6 */	mflr r0
/* 803AC220  90 01 00 34 */	stw r0, 0x34(r1)
/* 803AC224  39 61 00 30 */	addi r11, r1, 0x30
/* 803AC228  4B CE EC AD */	bl func_8009AED4
/* 803AC22C  7C 9E 23 78 */	mr r30, r4
/* 803AC230  7C 7D 1B 78 */	mr r29, r3
/* 803AC234  7F C3 F3 78 */	mr r3, r30
/* 803AC238  48 01 04 C9 */	bl mMl_clear_mail
/* 803AC23C  7F A3 EB 78 */	mr r3, r29
/* 803AC240  48 03 44 69 */	bl mPr_GetPrivateIdx
/* 803AC244  48 03 F3 4D */	bl mSP_SelectFishginPresent
/* 803AC248  7C 60 1B 78 */	mr r0, r3
/* 803AC24C  38 61 00 0C */	addi r3, r1, 0xc
/* 803AC250  7C 1F 03 78 */	mr r31, r0
/* 803AC254  7F E4 FB 78 */	mr r4, r31
/* 803AC258  48 00 97 4D */	bl mIN_copy_name_str
/* 803AC25C  38 81 00 0C */	addi r4, r1, 0xc
/* 803AC260  38 60 00 00 */	li r3, 0
/* 803AC264  38 A0 00 10 */	li r5, 0x10
/* 803AC268  48 00 56 F1 */	bl mHandbill_Set_free_str
/* 803AC26C  88 BD 00 17 */	lbz r5, 0x17(r29)
/* 803AC270  38 00 00 07 */	li r0, 7
/* 803AC274  38 7E 00 32 */	addi r3, r30, 0x32
/* 803AC278  38 81 00 08 */	addi r4, r1, 8
/* 803AC27C  38 C5 FF FF */	addi r6, r5, -1
/* 803AC280  38 BE 01 0A */	addi r5, r30, 0x10a
/* 803AC284  7C 06 03 D6 */	divw r0, r6, r0
/* 803AC288  38 DE 00 4A */	addi r6, r30, 0x4a
/* 803AC28C  54 07 07 BE */	clrlwi r7, r0, 0x1e
/* 803AC290  38 E7 02 3E */	addi r7, r7, 0x23e
/* 803AC294  48 00 64 A1 */	bl mHandbill_Load_HandbillFromRom
/* 803AC298  80 61 00 08 */	lwz r3, 8(r1)
/* 803AC29C  38 C0 00 00 */	li r6, 0
/* 803AC2A0  38 A0 00 09 */	li r5, 9
/* 803AC2A4  38 00 00 0F */	li r0, 0xf
/* 803AC2A8  98 7E 00 2F */	stb r3, 0x2f(r30)
/* 803AC2AC  7F C3 F3 78 */	mr r3, r30
/* 803AC2B0  7F A4 EB 78 */	mr r4, r29
/* 803AC2B4  98 DE 00 2E */	stb r6, 0x2e(r30)
/* 803AC2B8  98 BE 00 30 */	stb r5, 0x30(r30)
/* 803AC2BC  B3 FE 00 2C */	sth r31, 0x2c(r30)
/* 803AC2C0  98 1E 00 31 */	stb r0, 0x31(r30)
/* 803AC2C4  48 03 3E 5D */	bl mPr_CopyPersonalID
/* 803AC2C8  38 00 00 00 */	li r0, 0
/* 803AC2CC  39 61 00 30 */	addi r11, r1, 0x30
/* 803AC2D0  98 1E 00 14 */	stb r0, 0x14(r30)
/* 803AC2D4  4B CE EC 4D */	bl func_8009AF20
/* 803AC2D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803AC2DC  7C 08 03 A6 */	mtlr r0
/* 803AC2E0  38 21 00 30 */	addi r1, r1, 0x30
/* 803AC2E4  4E 80 00 20 */	blr 
