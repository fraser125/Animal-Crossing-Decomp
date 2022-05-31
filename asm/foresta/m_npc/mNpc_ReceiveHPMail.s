lbl_803D5E4C:
/* 803D5E4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D5E50  7C 08 02 A6 */	mflr r0
/* 803D5E54  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D5E58  39 61 00 30 */	addi r11, r1, 0x30
/* 803D5E5C  4B CC 50 75 */	bl func_8009AED0
/* 803D5E60  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D5E64  7C 7C 1B 78 */	mr r28, r3
/* 803D5E68  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803D5E6C  3B A0 00 00 */	li r29, 0
/* 803D5E70  3F C3 00 01 */	addis r30, r3, 1
/* 803D5E74  38 7C 00 16 */	addi r3, r28, 0x16
/* 803D5E78  3B DE 74 38 */	addi r30, r30, 0x7438
/* 803D5E7C  48 00 A8 2D */	bl mPr_GetPrivateIdx
/* 803D5E80  88 1C 00 2A */	lbz r0, 0x2a(r28)
/* 803D5E84  7C 7F 1B 78 */	mr r31, r3
/* 803D5E88  28 00 00 00 */	cmplwi r0, 0
/* 803D5E8C  40 82 00 9C */	bne lbl_803D5F28
/* 803D5E90  2C 1F 00 00 */	cmpwi r31, 0
/* 803D5E94  41 80 00 94 */	blt lbl_803D5F28
/* 803D5E98  2C 1F 00 04 */	cmpwi r31, 4
/* 803D5E9C  40 80 00 8C */	bge lbl_803D5F28
/* 803D5EA0  3C 80 81 17 */	lis r4, password@ha /* 0x8116EB9C@ha */
/* 803D5EA4  38 7C 00 4A */	addi r3, r28, 0x4a
/* 803D5EA8  38 84 EB 9C */	addi r4, r4, password@l /* 0x8116EB9C@l */
/* 803D5EAC  4B FE 82 75 */	bl mMpswd_restore_code
/* 803D5EB0  2C 03 00 01 */	cmpwi r3, 1
/* 803D5EB4  40 82 00 74 */	bne lbl_803D5F28
/* 803D5EB8  7F 84 E3 78 */	mr r4, r28
/* 803D5EBC  38 61 00 08 */	addi r3, r1, 8
/* 803D5EC0  4B FE 6B A5 */	bl mMl_get_npcinfo_from_mail_name
/* 803D5EC4  2C 03 00 01 */	cmpwi r3, 1
/* 803D5EC8  40 82 00 60 */	bne lbl_803D5F28
/* 803D5ECC  A0 81 00 08 */	lhz r4, 8(r1)
/* 803D5ED0  7F C3 F3 78 */	mr r3, r30
/* 803D5ED4  38 A0 00 0F */	li r5, 0xf
/* 803D5ED8  4B FF 68 05 */	bl mNpc_SearchAnimalinfo
/* 803D5EDC  2C 03 FF FF */	cmpwi r3, -1
/* 803D5EE0  41 82 00 48 */	beq lbl_803D5F28
/* 803D5EE4  1C 03 09 88 */	mulli r0, r3, 0x988
/* 803D5EE8  7F DE 02 15 */	add. r30, r30, r0
/* 803D5EEC  41 82 00 3C */	beq lbl_803D5F28
/* 803D5EF0  1C 1F 00 1C */	mulli r0, r31, 0x1c
/* 803D5EF4  3C 60 81 17 */	lis r3, password@ha /* 0x8116EB9C@ha */
/* 803D5EF8  38 A0 00 15 */	li r5, 0x15
/* 803D5EFC  38 63 EB 9C */	addi r3, r3, password@l /* 0x8116EB9C@l */
/* 803D5F00  7F FE 02 14 */	add r31, r30, r0
/* 803D5F04  38 9F 09 08 */	addi r4, r31, 0x908
/* 803D5F08  4B C8 71 15 */	bl func_8005D01C
/* 803D5F0C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D5F10  38 7F 09 00 */	addi r3, r31, 0x900
/* 803D5F14  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D5F18  3C 84 00 02 */	addis r4, r4, 2
/* 803D5F1C  38 84 61 20 */	addi r4, r4, 0x6120
/* 803D5F20  48 03 13 15 */	bl lbRTC_TimeCopy
/* 803D5F24  3B A0 00 01 */	li r29, 1
lbl_803D5F28:
/* 803D5F28  7F A3 EB 78 */	mr r3, r29
/* 803D5F2C  39 61 00 30 */	addi r11, r1, 0x30
/* 803D5F30  4B CC 4F ED */	bl func_8009AF1C
/* 803D5F34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D5F38  7C 08 03 A6 */	mtlr r0
/* 803D5F3C  38 21 00 30 */	addi r1, r1, 0x30
/* 803D5F40  4E 80 00 20 */	blr 
