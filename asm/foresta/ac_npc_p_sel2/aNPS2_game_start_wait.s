lbl_80569820:
/* 80569820  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80569824  7C 08 02 A6 */	mflr r0
/* 80569828  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056982C  39 61 00 20 */	addi r11, r1, 0x20
/* 80569830  4B B3 16 A5 */	bl func_8009AED4
/* 80569834  7C 7E 1B 78 */	mr r30, r3
/* 80569838  7C 9F 23 78 */	mr r31, r4
/* 8056983C  38 60 00 04 */	li r3, 4
/* 80569840  38 80 00 09 */	li r4, 9
/* 80569844  4B E2 EC 39 */	bl mDemo_Get_OrderValue
/* 80569848  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8056984C  2C 00 00 02 */	cmpwi r0, 2
/* 80569850  41 82 00 BC */	beq lbl_8056990C
/* 80569854  40 80 01 8C */	bge lbl_805699E0
/* 80569858  2C 00 00 01 */	cmpwi r0, 1
/* 8056985C  40 80 00 08 */	bge lbl_80569864
/* 80569860  48 00 01 80 */	b lbl_805699E0
lbl_80569864:
/* 80569864  38 60 00 04 */	li r3, 4
/* 80569868  38 80 00 09 */	li r4, 9
/* 8056986C  38 A0 00 02 */	li r5, 2
/* 80569870  4B E2 EB C9 */	bl mDemo_Set_OrderValue
/* 80569874  4B E5 5E 35 */	bl func_803BF6A8
/* 80569878  4B E5 74 C9 */	bl mMsg_Set_LockContinue
/* 8056987C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80569880  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80569884  3C 83 00 02 */	addis r4, r3, 2
/* 80569888  38 63 00 0A */	addi r3, r3, 0xa
/* 8056988C  38 84 61 20 */	addi r4, r4, 0x6120
/* 80569890  4B E9 D0 85 */	bl lbRTC_IsOverTime
/* 80569894  2C 03 FF FF */	cmpwi r3, -1
/* 80569898  40 82 00 1C */	bne lbl_805698B4
/* 8056989C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805698A0  38 00 00 01 */	li r0, 1
/* 805698A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805698A8  3C 63 00 02 */	addis r3, r3, 2
/* 805698AC  98 03 13 76 */	stb r0, 0x1376(r3)
/* 805698B0  98 03 0F 1B */	stb r0, 0xf1b(r3)
lbl_805698B4:
/* 805698B4  4B FF DE E9 */	bl aNPS2_time_check
/* 805698B8  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 805698BC  2C 00 00 17 */	cmpwi r0, 0x17
/* 805698C0  40 82 00 4C */	bne lbl_8056990C
/* 805698C4  4B FF E8 71 */	bl aNPS2_chk_setup_birthday_demo
/* 805698C8  2C 03 00 01 */	cmpwi r3, 1
/* 805698CC  40 82 00 24 */	bne lbl_805698F0
/* 805698D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805698D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805698D8  3C 63 00 02 */	addis r3, r3, 2
/* 805698DC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805698E0  80 03 23 48 */	lwz r0, 0x2348(r3)
/* 805698E4  60 00 04 00 */	ori r0, r0, 0x400
/* 805698E8  90 03 23 48 */	stw r0, 0x2348(r3)
/* 805698EC  48 00 00 20 */	b lbl_8056990C
lbl_805698F0:
/* 805698F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805698F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805698F8  3C 63 00 02 */	addis r3, r3, 2
/* 805698FC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80569900  80 03 23 48 */	lwz r0, 0x2348(r3)
/* 80569904  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 80569908  90 03 23 48 */	stw r0, 0x2348(r3)
lbl_8056990C:
/* 8056990C  7F C3 F3 78 */	mr r3, r30
/* 80569910  7F E4 FB 78 */	mr r4, r31
/* 80569914  4B FF EC 91 */	bl aNPS2_setup_load_data
/* 80569918  28 03 00 19 */	cmplwi r3, 0x19
/* 8056991C  41 81 00 C4 */	bgt lbl_805699E0
/* 80569920  3C 80 80 6C */	lis r4, lit_1181@ha /* 0x806BE5F8@ha */
/* 80569924  54 60 10 3A */	slwi r0, r3, 2
/* 80569928  38 64 E5 F8 */	addi r3, r4, lit_1181@l /* 0x806BE5F8@l */
/* 8056992C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80569930  7C 09 03 A6 */	mtctr r0
/* 80569934  4E 80 04 20 */	bctr 
lbl_80569938:
/* 80569938  4B E5 5D 71 */	bl func_803BF6A8
/* 8056993C  4B E5 74 11 */	bl mMsg_Unset_LockContinue
/* 80569940  38 60 00 04 */	li r3, 4
/* 80569944  38 80 00 09 */	li r4, 9
/* 80569948  38 A0 00 00 */	li r5, 0
/* 8056994C  4B E2 EA ED */	bl mDemo_Set_OrderValue
/* 80569950  48 00 00 90 */	b lbl_805699E0
lbl_80569954:
/* 80569954  4B E5 5D 55 */	bl func_803BF6A8
/* 80569958  4B E5 73 F5 */	bl mMsg_Unset_LockContinue
/* 8056995C  38 60 00 04 */	li r3, 4
/* 80569960  38 80 00 09 */	li r4, 9
/* 80569964  38 A0 00 00 */	li r5, 0
/* 80569968  4B E2 EA D1 */	bl mDemo_Set_OrderValue
/* 8056996C  7F C3 F3 78 */	mr r3, r30
/* 80569970  38 80 00 21 */	li r4, 0x21
/* 80569974  4B FF DB D5 */	bl aNPS2_make_msg
/* 80569978  7C 7D 1B 78 */	mr r29, r3
/* 8056997C  4B E5 5D 2D */	bl func_803BF6A8
/* 80569980  7F A4 EB 78 */	mr r4, r29
/* 80569984  4B E5 66 41 */	bl mMsg_Set_continue_msg_num
/* 80569988  7F C3 F3 78 */	mr r3, r30
/* 8056998C  7F E4 FB 78 */	mr r4, r31
/* 80569990  38 A0 00 1B */	li r5, 0x1b
/* 80569994  48 00 04 35 */	bl aNPS2_change_talk_proc
/* 80569998  48 00 00 48 */	b lbl_805699E0
lbl_8056999C:
/* 8056999C  4B E5 5D 0D */	bl func_803BF6A8
/* 805699A0  4B E5 73 AD */	bl mMsg_Unset_LockContinue
/* 805699A4  38 60 00 04 */	li r3, 4
/* 805699A8  38 80 00 09 */	li r4, 9
/* 805699AC  38 A0 00 00 */	li r5, 0
/* 805699B0  4B E2 EA 89 */	bl mDemo_Set_OrderValue
/* 805699B4  7F C3 F3 78 */	mr r3, r30
/* 805699B8  38 80 FF F9 */	li r4, -7
/* 805699BC  4B FF DB 8D */	bl aNPS2_make_msg
/* 805699C0  7C 7D 1B 78 */	mr r29, r3
/* 805699C4  4B E5 5C E5 */	bl func_803BF6A8
/* 805699C8  7F A4 EB 78 */	mr r4, r29
/* 805699CC  4B E5 65 F9 */	bl mMsg_Set_continue_msg_num
/* 805699D0  7F C3 F3 78 */	mr r3, r30
/* 805699D4  7F E4 FB 78 */	mr r4, r31
/* 805699D8  38 A0 00 1B */	li r5, 0x1b
/* 805699DC  48 00 03 ED */	bl aNPS2_change_talk_proc
lbl_805699E0:
/* 805699E0  7F C4 F3 78 */	mr r4, r30
/* 805699E4  38 60 00 08 */	li r3, 8
/* 805699E8  4B E3 08 7D */	bl mDemo_Check
/* 805699EC  2C 03 00 00 */	cmpwi r3, 0
/* 805699F0  40 82 00 0C */	bne lbl_805699FC
/* 805699F4  38 00 00 01 */	li r0, 1
/* 805699F8  98 1E 09 C4 */	stb r0, 0x9c4(r30)
lbl_805699FC:
/* 805699FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80569A00  4B B3 15 21 */	bl func_8009AF20
/* 80569A04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80569A08  7C 08 03 A6 */	mtlr r0
/* 80569A0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80569A10  4E 80 00 20 */	blr 
