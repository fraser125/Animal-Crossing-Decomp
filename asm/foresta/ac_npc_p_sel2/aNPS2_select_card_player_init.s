lbl_80569B98:
/* 80569B98  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80569B9C  7C 08 02 A6 */	mflr r0
/* 80569BA0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80569BA4  39 61 00 60 */	addi r11, r1, 0x60
/* 80569BA8  4B B3 13 19 */	bl func_8009AEC0
/* 80569BAC  3C A0 81 1F */	lis r5, static_str@ha /* 0x811ED320@ha */
/* 80569BB0  7C 7C 1B 78 */	mr r28, r3
/* 80569BB4  7C 9D 23 78 */	mr r29, r4
/* 80569BB8  3B E5 D3 20 */	addi r31, r5, static_str@l /* 0x811ED320@l */
/* 80569BBC  4B E1 99 85 */	bl func_80383540
/* 80569BC0  3C 80 81 1F */	lis r4, static_str@ha /* 0x811ED320@ha */
/* 80569BC4  7C 7E 1B 78 */	mr r30, r3
/* 80569BC8  38 04 D3 20 */	addi r0, r4, static_str@l /* 0x811ED320@l */
/* 80569BCC  38 A0 00 20 */	li r5, 0x20
/* 80569BD0  38 80 00 60 */	li r4, 0x60
/* 80569BD4  7C 03 03 78 */	mr r3, r0
/* 80569BD8  4B E5 0E 71 */	bl mem_clear
/* 80569BDC  38 60 00 00 */	li r3, 0
/* 80569BE0  38 00 00 06 */	li r0, 6
/* 80569BE4  7C 65 1B 78 */	mr r5, r3
/* 80569BE8  38 81 00 20 */	addi r4, r1, 0x20
/* 80569BEC  7C 09 03 A6 */	mtctr r0
lbl_80569BF0:
/* 80569BF0  7C A4 19 2E */	stwx r5, r4, r3
/* 80569BF4  38 63 00 04 */	addi r3, r3, 4
/* 80569BF8  42 00 FF F8 */	bdnz lbl_80569BF0
/* 80569BFC  38 00 FF FF */	li r0, -1
/* 80569C00  90 1C 09 BC */	stw r0, 0x9bc(r28)
/* 80569C04  80 1C 09 B4 */	lwz r0, 0x9b4(r28)
/* 80569C08  2C 00 00 04 */	cmpwi r0, 4
/* 80569C0C  41 81 00 80 */	bgt lbl_80569C8C
/* 80569C10  3B 21 00 20 */	addi r25, r1, 0x20
/* 80569C14  3B 00 00 00 */	li r24, 0
/* 80569C18  3B 40 00 00 */	li r26, 0
/* 80569C1C  3B 60 00 00 */	li r27, 0
/* 80569C20  48 00 00 5C */	b lbl_80569C7C
lbl_80569C24:
/* 80569C24  7C 1F DA 14 */	add r0, r31, r27
/* 80569C28  7F 04 C3 78 */	mr r4, r24
/* 80569C2C  7C 19 D1 2E */	stwx r0, r25, r26
/* 80569C30  7C 79 D0 2E */	lwzx r3, r25, r26
/* 80569C34  4B FF D7 BD */	bl aNPS2_GetCardPrivateNameCopy
/* 80569C38  2C 03 00 00 */	cmpwi r3, 0
/* 80569C3C  40 82 00 34 */	bne lbl_80569C70
/* 80569C40  7F 83 E3 78 */	mr r3, r28
/* 80569C44  38 80 00 26 */	li r4, 0x26
/* 80569C48  4B FF D9 01 */	bl aNPS2_make_msg
/* 80569C4C  7C 7A 1B 78 */	mr r26, r3
/* 80569C50  4B E5 5A 59 */	bl func_803BF6A8
/* 80569C54  7F 44 D3 78 */	mr r4, r26
/* 80569C58  4B E5 63 6D */	bl mMsg_Set_continue_msg_num
/* 80569C5C  7F 83 E3 78 */	mr r3, r28
/* 80569C60  7F A4 EB 78 */	mr r4, r29
/* 80569C64  38 A0 00 1B */	li r5, 0x1b
/* 80569C68  48 00 01 61 */	bl aNPS2_change_talk_proc
/* 80569C6C  48 00 01 10 */	b lbl_80569D7C
lbl_80569C70:
/* 80569C70  3B 18 00 01 */	addi r24, r24, 1
/* 80569C74  3B 5A 00 04 */	addi r26, r26, 4
/* 80569C78  3B 7B 00 10 */	addi r27, r27, 0x10
lbl_80569C7C:
/* 80569C7C  80 1C 09 B4 */	lwz r0, 0x9b4(r28)
/* 80569C80  7C 18 00 00 */	cmpw r24, r0
/* 80569C84  41 80 FF A0 */	blt lbl_80569C24
/* 80569C88  48 00 00 B4 */	b lbl_80569D3C
lbl_80569C8C:
/* 80569C8C  3B 21 00 20 */	addi r25, r1, 0x20
/* 80569C90  3B 00 00 00 */	li r24, 0
/* 80569C94  3B 60 00 00 */	li r27, 0
/* 80569C98  3B 40 00 00 */	li r26, 0
/* 80569C9C  48 00 00 58 */	b lbl_80569CF4
lbl_80569CA0:
/* 80569CA0  7C 1F D2 14 */	add r0, r31, r26
/* 80569CA4  7C 19 D9 2E */	stwx r0, r25, r27
/* 80569CA8  7C 79 D8 2E */	lwzx r3, r25, r27
/* 80569CAC  4B FF D7 45 */	bl aNPS2_GetCardPrivateNameCopy
/* 80569CB0  2C 03 00 00 */	cmpwi r3, 0
/* 80569CB4  40 82 00 34 */	bne lbl_80569CE8
/* 80569CB8  7F 83 E3 78 */	mr r3, r28
/* 80569CBC  38 80 00 26 */	li r4, 0x26
/* 80569CC0  4B FF D8 89 */	bl aNPS2_make_msg
/* 80569CC4  7C 7A 1B 78 */	mr r26, r3
/* 80569CC8  4B E5 59 E1 */	bl func_803BF6A8
/* 80569CCC  7F 44 D3 78 */	mr r4, r26
/* 80569CD0  4B E5 62 F5 */	bl mMsg_Set_continue_msg_num
/* 80569CD4  7F 83 E3 78 */	mr r3, r28
/* 80569CD8  7F A4 EB 78 */	mr r4, r29
/* 80569CDC  38 A0 00 1B */	li r5, 0x1b
/* 80569CE0  48 00 00 E9 */	bl aNPS2_change_talk_proc
/* 80569CE4  48 00 00 98 */	b lbl_80569D7C
lbl_80569CE8:
/* 80569CE8  3B 18 00 01 */	addi r24, r24, 1
/* 80569CEC  3B 7B 00 04 */	addi r27, r27, 4
/* 80569CF0  3B 5A 00 10 */	addi r26, r26, 0x10
lbl_80569CF4:
/* 80569CF4  2C 18 00 03 */	cmpwi r24, 3
/* 80569CF8  40 80 00 18 */	bge lbl_80569D10
/* 80569CFC  80 7C 09 B8 */	lwz r3, 0x9b8(r28)
/* 80569D00  80 1C 09 B4 */	lwz r0, 0x9b4(r28)
/* 80569D04  7C 98 1A 14 */	add r4, r24, r3
/* 80569D08  7C 04 00 00 */	cmpw r4, r0
/* 80569D0C  41 80 FF 94 */	blt lbl_80569CA0
lbl_80569D10:
/* 80569D10  57 03 20 36 */	slwi r3, r24, 4
/* 80569D14  57 00 10 3A */	slwi r0, r24, 2
/* 80569D18  7C 7F 1A 14 */	add r3, r31, r3
/* 80569D1C  38 81 00 20 */	addi r4, r1, 0x20
/* 80569D20  7C 64 01 2E */	stwx r3, r4, r0
/* 80569D24  7F C3 F3 78 */	mr r3, r30
/* 80569D28  7F 86 E3 78 */	mr r6, r28
/* 80569D2C  38 A0 01 B9 */	li r5, 0x1b9
/* 80569D30  93 1C 09 BC */	stw r24, 0x9bc(r28)
/* 80569D34  7C 84 00 2E */	lwzx r4, r4, r0
/* 80569D38  4B E1 A6 89 */	bl mChoice_Load_ChoseStringFromRom
lbl_80569D3C:
/* 80569D3C  39 60 00 10 */	li r11, 0x10
/* 80569D40  38 00 00 00 */	li r0, 0
/* 80569D44  91 61 00 08 */	stw r11, 8(r1)
/* 80569D48  7F C3 F3 78 */	mr r3, r30
/* 80569D4C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80569D50  38 A0 00 10 */	li r5, 0x10
/* 80569D54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80569D58  38 E0 00 10 */	li r7, 0x10
/* 80569D5C  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 80569D60  39 20 00 10 */	li r9, 0x10
/* 80569D64  91 61 00 10 */	stw r11, 0x10(r1)
/* 80569D68  81 01 00 28 */	lwz r8, 0x28(r1)
/* 80569D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80569D70  81 41 00 2C */	lwz r10, 0x2c(r1)
/* 80569D74  91 61 00 18 */	stw r11, 0x18(r1)
/* 80569D78  4B E1 99 ED */	bl mChoice_Set_choice_data
lbl_80569D7C:
/* 80569D7C  39 61 00 60 */	addi r11, r1, 0x60
/* 80569D80  4B B3 11 8D */	bl func_8009AF0C
/* 80569D84  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80569D88  7C 08 03 A6 */	mtlr r0
/* 80569D8C  38 21 00 60 */	addi r1, r1, 0x60
/* 80569D90  4E 80 00 20 */	blr 
