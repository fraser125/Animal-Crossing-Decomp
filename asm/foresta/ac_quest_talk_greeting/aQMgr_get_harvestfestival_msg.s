lbl_80488E8C:
/* 80488E8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80488E90  7C 08 02 A6 */	mflr r0
/* 80488E94  90 01 00 44 */	stw r0, 0x44(r1)
/* 80488E98  39 61 00 40 */	addi r11, r1, 0x40
/* 80488E9C  4B C1 20 31 */	bl func_8009AECC
/* 80488EA0  38 00 00 00 */	li r0, 0
/* 80488EA4  7C 7B 1B 78 */	mr r27, r3
/* 80488EA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80488EAC  7C 9F 23 78 */	mr r31, r4
/* 80488EB0  3B 80 00 00 */	li r28, 0
/* 80488EB4  3B C0 00 00 */	li r30, 0
/* 80488EB8  90 01 00 08 */	stw r0, 8(r1)
/* 80488EBC  38 60 00 6C */	li r3, 0x6c
/* 80488EC0  38 80 00 51 */	li r4, 0x51
/* 80488EC4  4B F1 53 E9 */	bl mEv_get_common_place
/* 80488EC8  7C 7D 1B 78 */	mr r29, r3
/* 80488ECC  7F E4 FB 78 */	mr r4, r31
/* 80488ED0  38 60 3B 60 */	li r3, 0x3b60
/* 80488ED4  38 A0 00 03 */	li r5, 3
/* 80488ED8  4B FF F5 7D */	bl aQMgr_get_random_msg_no
/* 80488EDC  28 1D 00 00 */	cmplwi r29, 0
/* 80488EE0  7C 7F 1B 78 */	mr r31, r3
/* 80488EE4  41 82 00 34 */	beq lbl_80488F18
/* 80488EE8  80 1D 00 04 */	lwz r0, 4(r29)
/* 80488EEC  2C 00 00 00 */	cmpwi r0, 0
/* 80488EF0  40 81 00 10 */	ble lbl_80488F00
/* 80488EF4  2C 00 00 07 */	cmpwi r0, 7
/* 80488EF8  40 80 00 08 */	bge lbl_80488F00
/* 80488EFC  7C 1C 03 78 */	mr r28, r0
lbl_80488F00:
/* 80488F00  80 1D 00 00 */	lwz r0, 0(r29)
/* 80488F04  2C 00 00 00 */	cmpwi r0, 0
/* 80488F08  40 81 00 10 */	ble lbl_80488F18
/* 80488F0C  2C 00 00 08 */	cmpwi r0, 8
/* 80488F10  40 80 00 08 */	bge lbl_80488F18
/* 80488F14  7C 1E 03 78 */	mr r30, r0
lbl_80488F18:
/* 80488F18  80 DB 00 10 */	lwz r6, 0x10(r27)
/* 80488F1C  38 61 00 0C */	addi r3, r1, 0xc
/* 80488F20  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 80488F24  38 81 00 08 */	addi r4, r1, 8
/* 80488F28  38 A1 00 10 */	addi r5, r1, 0x10
/* 80488F2C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80488F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80488F34  80 1B 00 18 */	lwz r0, 0x18(r27)
/* 80488F38  90 01 00 18 */	stw r0, 0x18(r1)
/* 80488F3C  4B F1 C8 25 */	bl mFI_Wpos2BlockNum
/* 80488F40  2C 03 00 01 */	cmpwi r3, 1
/* 80488F44  40 82 00 24 */	bne lbl_80488F68
/* 80488F48  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80488F4C  7C 00 E0 00 */	cmpw r0, r28
/* 80488F50  40 82 00 08 */	bne lbl_80488F58
/* 80488F54  3B 80 00 00 */	li r28, 0
lbl_80488F58:
/* 80488F58  80 01 00 08 */	lwz r0, 8(r1)
/* 80488F5C  7C 00 F0 00 */	cmpw r0, r30
/* 80488F60  40 82 00 08 */	bne lbl_80488F68
/* 80488F64  3B C0 00 00 */	li r30, 0
lbl_80488F68:
/* 80488F68  3C 60 81 1D */	lis r3, data_811CEBA0@ha /* 0x811CEBA0@ha */
/* 80488F6C  38 80 00 10 */	li r4, 0x10
/* 80488F70  38 63 EB A0 */	addi r3, r3, data_811CEBA0@l /* 0x811CEBA0@l */
/* 80488F74  38 A0 00 20 */	li r5, 0x20
/* 80488F78  4B F3 1A D1 */	bl mem_clear
/* 80488F7C  3C 60 81 1D */	lis r3, data_811CEBA0@ha /* 0x811CEBA0@ha */
/* 80488F80  38 BC 07 75 */	addi r5, r28, 0x775
/* 80488F84  38 63 EB A0 */	addi r3, r3, data_811CEBA0@l /* 0x811CEBA0@l */
/* 80488F88  38 80 00 10 */	li r4, 0x10
/* 80488F8C  4B F6 5D 41 */	bl mString_Load_StringFromRom
/* 80488F90  3C 60 81 1D */	lis r3, str1_646@ha /* 0x811CEBB0@ha */
/* 80488F94  38 80 00 10 */	li r4, 0x10
/* 80488F98  38 63 EB B0 */	addi r3, r3, str1_646@l /* 0x811CEBB0@l */
/* 80488F9C  38 A0 00 20 */	li r5, 0x20
/* 80488FA0  4B F3 1A A9 */	bl mem_clear
/* 80488FA4  3C 60 81 1D */	lis r3, str1_646@ha /* 0x811CEBB0@ha */
/* 80488FA8  38 BE 07 6E */	addi r5, r30, 0x76e
/* 80488FAC  38 63 EB B0 */	addi r3, r3, str1_646@l /* 0x811CEBB0@l */
/* 80488FB0  38 80 00 10 */	li r4, 0x10
/* 80488FB4  4B F6 5D 19 */	bl mString_Load_StringFromRom
/* 80488FB8  4B F3 66 F1 */	bl func_803BF6A8
/* 80488FBC  3C A0 81 1D */	lis r5, data_811CEBA0@ha /* 0x811CEBA0@ha */
/* 80488FC0  38 80 00 01 */	li r4, 1
/* 80488FC4  38 A5 EB A0 */	addi r5, r5, data_811CEBA0@l /* 0x811CEBA0@l */
/* 80488FC8  38 C0 00 10 */	li r6, 0x10
/* 80488FCC  4B F3 6C 89 */	bl mMsg_Set_free_str
/* 80488FD0  4B F3 66 D9 */	bl func_803BF6A8
/* 80488FD4  3C A0 81 1D */	lis r5, str1_646@ha /* 0x811CEBB0@ha */
/* 80488FD8  38 80 00 00 */	li r4, 0
/* 80488FDC  38 A5 EB B0 */	addi r5, r5, str1_646@l /* 0x811CEBB0@l */
/* 80488FE0  38 C0 00 10 */	li r6, 0x10
/* 80488FE4  4B F3 6C 71 */	bl mMsg_Set_free_str
/* 80488FE8  7F E3 FB 78 */	mr r3, r31
/* 80488FEC  39 61 00 40 */	addi r11, r1, 0x40
/* 80488FF0  4B C1 1F 29 */	bl func_8009AF18
/* 80488FF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80488FF8  7C 08 03 A6 */	mtlr r0
/* 80488FFC  38 21 00 40 */	addi r1, r1, 0x40
/* 80489000  4E 80 00 20 */	blr 
