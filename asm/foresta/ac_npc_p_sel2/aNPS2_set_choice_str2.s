lbl_80567DF4:
/* 80567DF4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80567DF8  7C 08 02 A6 */	mflr r0
/* 80567DFC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80567E00  39 61 00 50 */	addi r11, r1, 0x50
/* 80567E04  4B B3 30 CD */	bl func_8009AED0
/* 80567E08  7C 7C 1B 78 */	mr r28, r3
/* 80567E0C  7C 9D 23 78 */	mr r29, r4
/* 80567E10  4B E1 B7 31 */	bl func_80383540
/* 80567E14  3C 80 81 1F */	lis r4, static_str@ha /* 0x811ED320@ha */
/* 80567E18  7C 7F 1B 78 */	mr r31, r3
/* 80567E1C  38 04 D3 20 */	addi r0, r4, static_str@l /* 0x811ED320@l */
/* 80567E20  38 A0 00 20 */	li r5, 0x20
/* 80567E24  38 80 00 60 */	li r4, 0x60
/* 80567E28  7C 1E 03 78 */	mr r30, r0
/* 80567E2C  7C 03 03 78 */	mr r3, r0
/* 80567E30  4B E5 2C 19 */	bl mem_clear
/* 80567E34  38 00 00 06 */	li r0, 6
/* 80567E38  38 A1 00 20 */	addi r5, r1, 0x20
/* 80567E3C  38 60 00 00 */	li r3, 0
/* 80567E40  38 80 00 00 */	li r4, 0
/* 80567E44  7C 09 03 A6 */	mtctr r0
lbl_80567E48:
/* 80567E48  7C 1E 22 14 */	add r0, r30, r4
/* 80567E4C  38 84 00 10 */	addi r4, r4, 0x10
/* 80567E50  7C 05 19 2E */	stwx r0, r5, r3
/* 80567E54  38 63 00 04 */	addi r3, r3, 4
/* 80567E58  42 00 FF F0 */	bdnz lbl_80567E48
/* 80567E5C  2C 1D 00 00 */	cmpwi r29, 0
/* 80567E60  40 82 00 18 */	bne lbl_80567E78
/* 80567E64  7F C3 F3 78 */	mr r3, r30
/* 80567E68  38 81 00 20 */	addi r4, r1, 0x20
/* 80567E6C  38 A0 00 02 */	li r5, 2
/* 80567E70  4B FF FC BD */	bl aNPS2_copy_player_name
/* 80567E74  48 00 00 14 */	b lbl_80567E88
lbl_80567E78:
/* 80567E78  7F C3 F3 78 */	mr r3, r30
/* 80567E7C  38 81 00 20 */	addi r4, r1, 0x20
/* 80567E80  38 A0 00 02 */	li r5, 2
/* 80567E84  4B FF FD 39 */	bl aNPS2_copy_player_name2
lbl_80567E88:
/* 80567E88  7F 83 E3 78 */	mr r3, r28
/* 80567E8C  7F C4 F3 78 */	mr r4, r30
/* 80567E90  4B FF FD BD */	bl aNPS2_copy_hokanohito
/* 80567E94  38 80 00 10 */	li r4, 0x10
/* 80567E98  38 00 00 00 */	li r0, 0
/* 80567E9C  90 81 00 08 */	stw r4, 8(r1)
/* 80567EA0  7F E3 FB 78 */	mr r3, r31
/* 80567EA4  38 A0 00 10 */	li r5, 0x10
/* 80567EA8  38 E0 00 10 */	li r7, 0x10
/* 80567EAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80567EB0  39 20 00 10 */	li r9, 0x10
/* 80567EB4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80567EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80567EBC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80567EC0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80567EC4  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 80567EC8  81 01 00 28 */	lwz r8, 0x28(r1)
/* 80567ECC  81 41 00 2C */	lwz r10, 0x2c(r1)
/* 80567ED0  4B E1 B8 95 */	bl mChoice_Set_choice_data
/* 80567ED4  39 61 00 50 */	addi r11, r1, 0x50
/* 80567ED8  4B B3 30 45 */	bl func_8009AF1C
/* 80567EDC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80567EE0  7C 08 03 A6 */	mtlr r0
/* 80567EE4  38 21 00 50 */	addi r1, r1, 0x50
/* 80567EE8  4E 80 00 20 */	blr 
