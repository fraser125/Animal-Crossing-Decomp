lbl_80420808:
/* 80420808  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042080C  7C 08 02 A6 */	mflr r0
/* 80420810  90 01 00 24 */	stw r0, 0x24(r1)
/* 80420814  39 61 00 20 */	addi r11, r1, 0x20
/* 80420818  4B C7 A6 BD */	bl func_8009AED4
/* 8042081C  7C 7D 1B 78 */	mr r29, r3
/* 80420820  7C 9E 23 78 */	mr r30, r4
/* 80420824  80 03 02 34 */	lwz r0, 0x234(r3)
/* 80420828  3B E0 00 02 */	li r31, 2
/* 8042082C  2C 00 00 00 */	cmpwi r0, 0
/* 80420830  40 82 00 24 */	bne lbl_80420854
/* 80420834  80 7E 00 00 */	lwz r3, 0(r30)
/* 80420838  38 80 00 01 */	li r4, 1
/* 8042083C  4B F7 D2 45 */	bl mEv_clear_status
/* 80420840  80 7E 00 00 */	lwz r3, 0(r30)
/* 80420844  38 80 00 20 */	li r4, 0x20
/* 80420848  4B F7 D1 89 */	bl mEv_set_status
/* 8042084C  38 60 00 00 */	li r3, 0
/* 80420850  48 00 00 AC */	b lbl_804208FC
lbl_80420854:
/* 80420854  80 7E 00 00 */	lwz r3, 0(r30)
/* 80420858  4B F7 D3 95 */	bl mEv_check_keep
/* 8042085C  2C 03 00 00 */	cmpwi r3, 0
/* 80420860  40 82 00 34 */	bne lbl_80420894
/* 80420864  80 9E 00 00 */	lwz r4, 0(r30)
/* 80420868  7F A3 EB 78 */	mr r3, r29
/* 8042086C  38 A0 00 01 */	li r5, 1
/* 80420870  38 C0 00 04 */	li r6, 4
/* 80420874  4B FF D2 09 */	bl title_fade
/* 80420878  2C 03 00 00 */	cmpwi r3, 0
/* 8042087C  41 82 00 14 */	beq lbl_80420890
/* 80420880  80 7E 00 00 */	lwz r3, 0(r30)
/* 80420884  4B F7 D3 01 */	bl mEv_set_keep
/* 80420888  3B E0 00 01 */	li r31, 1
/* 8042088C  48 00 00 08 */	b lbl_80420894
lbl_80420890:
/* 80420890  3B E0 00 00 */	li r31, 0
lbl_80420894:
/* 80420894  2C 1F 00 00 */	cmpwi r31, 0
/* 80420898  41 82 00 60 */	beq lbl_804208F8
/* 8042089C  7F A3 EB 78 */	mr r3, r29
/* 804208A0  38 80 00 04 */	li r4, 4
/* 804208A4  4B FF B3 85 */	bl clean_FG
/* 804208A8  7F A3 EB 78 */	mr r3, r29
/* 804208AC  7F C4 F3 78 */	mr r4, r30
/* 804208B0  38 A0 00 06 */	li r5, 6
/* 804208B4  38 C0 00 04 */	li r6, 4
/* 804208B8  38 E0 00 06 */	li r7, 6
/* 804208BC  4B FF BF 71 */	bl make_FG_in_reserved_block
/* 804208C0  38 60 00 9B */	li r3, 0x9b
/* 804208C4  4B FF BD 91 */	bl make_control_actor_without_indoor
/* 804208C8  7F A3 EB 78 */	mr r3, r29
/* 804208CC  7F C4 F3 78 */	mr r4, r30
/* 804208D0  38 A0 00 05 */	li r5, 5
/* 804208D4  38 C0 00 04 */	li r6, 4
/* 804208D8  38 E0 00 05 */	li r7, 5
/* 804208DC  4B FF BD BD */	bl make_actor_in_reserved_block
/* 804208E0  7F A3 EB 78 */	mr r3, r29
/* 804208E4  7F C4 F3 78 */	mr r4, r30
/* 804208E8  38 A0 00 07 */	li r5, 7
/* 804208EC  38 C0 00 04 */	li r6, 4
/* 804208F0  38 E0 00 07 */	li r7, 7
/* 804208F4  4B FF BD A5 */	bl make_actor_in_reserved_block
lbl_804208F8:
/* 804208F8  7F E3 FB 78 */	mr r3, r31
lbl_804208FC:
/* 804208FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80420900  4B C7 A6 21 */	bl func_8009AF20
/* 80420904  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80420908  7C 08 03 A6 */	mtlr r0
/* 8042090C  38 21 00 20 */	addi r1, r1, 0x20
/* 80420910  4E 80 00 20 */	blr 
