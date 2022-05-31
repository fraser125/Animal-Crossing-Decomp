lbl_80567CAC:
/* 80567CAC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80567CB0  7C 08 02 A6 */	mflr r0
/* 80567CB4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80567CB8  39 61 00 50 */	addi r11, r1, 0x50
/* 80567CBC  4B B3 32 11 */	bl func_8009AECC
/* 80567CC0  7C 7B 1B 78 */	mr r27, r3
/* 80567CC4  7C 9C 23 78 */	mr r28, r4
/* 80567CC8  4B E1 B8 79 */	bl func_80383540
/* 80567CCC  3C 80 81 1F */	lis r4, static_str@ha /* 0x811ED320@ha */
/* 80567CD0  83 BB 09 A0 */	lwz r29, 0x9a0(r27)
/* 80567CD4  38 04 D3 20 */	addi r0, r4, static_str@l /* 0x811ED320@l */
/* 80567CD8  7C 7F 1B 78 */	mr r31, r3
/* 80567CDC  38 80 00 60 */	li r4, 0x60
/* 80567CE0  38 A0 00 20 */	li r5, 0x20
/* 80567CE4  7C 1E 03 78 */	mr r30, r0
/* 80567CE8  7C 03 03 78 */	mr r3, r0
/* 80567CEC  4B E5 2D 5D */	bl mem_clear
/* 80567CF0  38 60 00 00 */	li r3, 0
/* 80567CF4  38 00 00 06 */	li r0, 6
/* 80567CF8  7C 65 1B 78 */	mr r5, r3
/* 80567CFC  38 81 00 20 */	addi r4, r1, 0x20
/* 80567D00  7C 09 03 A6 */	mtctr r0
lbl_80567D04:
/* 80567D04  7C A4 19 2E */	stwx r5, r4, r3
/* 80567D08  38 63 00 04 */	addi r3, r3, 4
/* 80567D0C  42 00 FF F8 */	bdnz lbl_80567D04
/* 80567D10  2C 1D 00 04 */	cmpwi r29, 4
/* 80567D14  41 82 00 78 */	beq lbl_80567D8C
/* 80567D18  40 80 00 84 */	bge lbl_80567D9C
/* 80567D1C  2C 1D 00 01 */	cmpwi r29, 1
/* 80567D20  40 80 00 08 */	bge lbl_80567D28
/* 80567D24  48 00 00 78 */	b lbl_80567D9C
lbl_80567D28:
/* 80567D28  7F C3 F3 78 */	mr r3, r30
/* 80567D2C  7F A5 EB 78 */	mr r5, r29
/* 80567D30  38 81 00 20 */	addi r4, r1, 0x20
/* 80567D34  4B FF FD F9 */	bl aNPS2_copy_player_name
/* 80567D38  2C 1C 00 00 */	cmpwi r28, 0
/* 80567D3C  40 82 00 20 */	bne lbl_80567D5C
/* 80567D40  57 A0 20 36 */	slwi r0, r29, 4
/* 80567D44  7F E3 FB 78 */	mr r3, r31
/* 80567D48  7F 66 DB 78 */	mr r6, r27
/* 80567D4C  38 A0 00 29 */	li r5, 0x29
/* 80567D50  7C 9E 02 14 */	add r4, r30, r0
/* 80567D54  4B E1 C6 6D */	bl mChoice_Load_ChoseStringFromRom
/* 80567D58  48 00 00 1C */	b lbl_80567D74
lbl_80567D5C:
/* 80567D5C  3C 60 80 6C */	lis r3, new_player_str@ha /* 0x806BE410@ha */
/* 80567D60  57 A0 20 36 */	slwi r0, r29, 4
/* 80567D64  38 83 E4 10 */	addi r4, r3, new_player_str@l /* 0x806BE410@l */
/* 80567D68  38 A0 00 07 */	li r5, 7
/* 80567D6C  7C 7E 02 14 */	add r3, r30, r0
/* 80567D70  4B E5 2C B5 */	bl func_803BAA24
lbl_80567D74:
/* 80567D74  57 A3 20 36 */	slwi r3, r29, 4
/* 80567D78  57 A0 10 3A */	slwi r0, r29, 2
/* 80567D7C  7C 9E 1A 14 */	add r4, r30, r3
/* 80567D80  38 61 00 20 */	addi r3, r1, 0x20
/* 80567D84  7C 83 01 2E */	stwx r4, r3, r0
/* 80567D88  48 00 00 14 */	b lbl_80567D9C
lbl_80567D8C:
/* 80567D8C  7F C3 F3 78 */	mr r3, r30
/* 80567D90  7F A5 EB 78 */	mr r5, r29
/* 80567D94  38 81 00 20 */	addi r4, r1, 0x20
/* 80567D98  4B FF FD 95 */	bl aNPS2_copy_player_name
lbl_80567D9C:
/* 80567D9C  38 80 00 10 */	li r4, 0x10
/* 80567DA0  38 00 00 00 */	li r0, 0
/* 80567DA4  90 81 00 08 */	stw r4, 8(r1)
/* 80567DA8  7F E3 FB 78 */	mr r3, r31
/* 80567DAC  38 A0 00 10 */	li r5, 0x10
/* 80567DB0  38 E0 00 10 */	li r7, 0x10
/* 80567DB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80567DB8  39 20 00 10 */	li r9, 0x10
/* 80567DBC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80567DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80567DC4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80567DC8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80567DCC  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 80567DD0  81 01 00 28 */	lwz r8, 0x28(r1)
/* 80567DD4  81 41 00 2C */	lwz r10, 0x2c(r1)
/* 80567DD8  4B E1 B9 8D */	bl mChoice_Set_choice_data
/* 80567DDC  39 61 00 50 */	addi r11, r1, 0x50
/* 80567DE0  4B B3 31 39 */	bl func_8009AF18
/* 80567DE4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80567DE8  7C 08 03 A6 */	mtlr r0
/* 80567DEC  38 21 00 50 */	addi r1, r1, 0x50
/* 80567DF0  4E 80 00 20 */	blr 
