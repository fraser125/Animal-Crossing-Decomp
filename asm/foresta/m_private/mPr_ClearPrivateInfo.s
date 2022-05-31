lbl_803E0218:
/* 803E0218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E021C  7C 08 02 A6 */	mflr r0
/* 803E0220  38 80 24 40 */	li r4, 0x2440
/* 803E0224  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E0228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E022C  7C 7F 1B 78 */	mr r31, r3
/* 803E0230  4B C7 CE 39 */	bl bzero
/* 803E0234  7F E3 FB 78 */	mr r3, r31
/* 803E0238  4B FF FE 55 */	bl mPr_ClearPersonalID
/* 803E023C  38 00 00 00 */	li r0, 0
/* 803E0240  38 7F 00 94 */	addi r3, r31, 0x94
/* 803E0244  98 1F 00 14 */	stb r0, 0x14(r31)
/* 803E0248  38 80 00 0F */	li r4, 0xf
/* 803E024C  48 00 26 9D */	bl mQst_ClearDelivery
/* 803E0250  38 7F 02 EC */	addi r3, r31, 0x2ec
/* 803E0254  38 80 00 05 */	li r4, 5
/* 803E0258  48 00 26 F5 */	bl mQst_ClearErrand
/* 803E025C  38 7F 04 E0 */	addi r3, r31, 0x4e0
/* 803E0260  38 80 00 0A */	li r4, 0xa
/* 803E0264  4B FD C4 ED */	bl mMl_clear_mail_box
/* 803E0268  38 7F 04 A6 */	addi r3, r31, 0x4a6
/* 803E026C  4B FD C7 2D */	bl mMl_clear_mail_header_common
/* 803E0270  7F E3 FB 78 */	mr r3, r31
/* 803E0274  38 80 24 01 */	li r4, 0x2401
/* 803E0278  4B FF 95 31 */	bl mPlib_change_player_cloth_info_lv2
/* 803E027C  38 7F 10 8C */	addi r3, r31, 0x108c
/* 803E0280  4B FE B1 05 */	bl mNpc_ClearAnimalPersonalID
/* 803E0284  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 803E0288  4B FF FF 45 */	bl mPr_ClearPrivateBirthday
/* 803E028C  38 00 24 E2 */	li r0, 0x24e2
/* 803E0290  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 803E0294  B0 1F 10 84 */	sth r0, 0x1084(r31)
/* 803E0298  4B FE D1 B9 */	bl mNpc_ClearRemail
/* 803E029C  38 7F 10 F8 */	addi r3, r31, 0x10f8
/* 803E02A0  4B FF FF 49 */	bl mPr_ClearAnimalMemory
/* 803E02A4  38 7F 11 DC */	addi r3, r31, 0x11dc
/* 803E02A8  38 80 00 08 */	li r4, 8
/* 803E02AC  48 00 20 AD */	bl mPr_ClearMapInfo
/* 803E02B0  38 7F 00 18 */	addi r3, r31, 0x18
/* 803E02B4  4B FE 5E 8D */	bl func_803C6140
/* 803E02B8  38 00 00 01 */	li r0, 1
/* 803E02BC  90 1F 23 48 */	stw r0, 0x2348(r31)
/* 803E02C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E02C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E02C8  7C 08 03 A6 */	mtlr r0
/* 803E02CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803E02D0  4E 80 00 20 */	blr 
