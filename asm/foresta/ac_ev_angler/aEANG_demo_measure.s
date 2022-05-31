lbl_80518884:
/* 80518884  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80518888  7C 08 02 A6 */	mflr r0
/* 8051888C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80518890  39 61 00 40 */	addi r11, r1, 0x40
/* 80518894  4B B8 26 3D */	bl func_8009AED0
/* 80518898  7C 7E 1B 78 */	mr r30, r3
/* 8051889C  7C 9F 23 78 */	mr r31, r4
/* 805188A0  38 60 00 04 */	li r3, 4
/* 805188A4  38 80 00 09 */	li r4, 9
/* 805188A8  4B E7 FB D5 */	bl mDemo_Get_OrderValue
/* 805188AC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805188B0  2C 00 00 04 */	cmpwi r0, 4
/* 805188B4  40 82 01 2C */	bne lbl_805189E0
/* 805188B8  4B EA 6D F1 */	bl func_803BF6A8
/* 805188BC  7C 60 1B 78 */	mr r0, r3
/* 805188C0  38 60 00 04 */	li r3, 4
/* 805188C4  7C 1C 03 78 */	mr r28, r0
/* 805188C8  38 80 00 09 */	li r4, 9
/* 805188CC  38 A0 00 00 */	li r5, 0
/* 805188D0  4B E7 FB 69 */	bl mDemo_Set_OrderValue
/* 805188D4  48 0A 8C 69 */	bl aTRC_clip_set_topname
/* 805188D8  4B FF FD 91 */	bl get_top_of_angler_size
/* 805188DC  80 1E 09 A4 */	lwz r0, 0x9a4(r30)
/* 805188E0  7C 03 00 00 */	cmpw r3, r0
/* 805188E4  40 80 00 D0 */	bge lbl_805189B4
/* 805188E8  A0 7E 09 A0 */	lhz r3, 0x9a0(r30)
/* 805188EC  4B FF FF 51 */	bl get_message_number_fish_omedeto
/* 805188F0  7C 64 1B 78 */	mr r4, r3
/* 805188F4  7F 83 E3 78 */	mr r3, r28
/* 805188F8  4B EA 76 CD */	bl mMsg_Set_continue_msg_num
/* 805188FC  80 7E 09 A4 */	lwz r3, 0x9a4(r30)
/* 80518900  4B FF FD 8D */	bl set_top_of_angler_size
/* 80518904  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80518908  38 00 00 02 */	li r0, 2
/* 8051890C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80518910  38 A1 00 14 */	addi r5, r1, 0x14
/* 80518914  3F A3 00 02 */	addis r29, r3, 2
/* 80518918  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 8051891C  38 83 FF FC */	addi r4, r3, -4
/* 80518920  7C 09 03 A6 */	mtctr r0
lbl_80518924:
/* 80518924  80 64 00 04 */	lwz r3, 4(r4)
/* 80518928  84 04 00 08 */	lwzu r0, 8(r4)
/* 8051892C  90 65 00 04 */	stw r3, 4(r5)
/* 80518930  94 05 00 08 */	stwu r0, 8(r5)
/* 80518934  42 00 FF F0 */	bdnz lbl_80518924
/* 80518938  80 04 00 04 */	lwz r0, 4(r4)
/* 8051893C  38 61 00 18 */	addi r3, r1, 0x18
/* 80518940  90 05 00 04 */	stw r0, 4(r5)
/* 80518944  4B FF FC ED */	bl set_top_of_angler_pID
/* 80518948  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 8051894C  80 9E 09 A4 */	lwz r4, 0x9a4(r30)
/* 80518950  4B E9 2F 61 */	bl mEv_fishRecord_set
/* 80518954  81 9E 09 9C */	lwz r12, 0x99c(r30)
/* 80518958  7F C3 F3 78 */	mr r3, r30
/* 8051895C  7F E4 FB 78 */	mr r4, r31
/* 80518960  38 A0 00 07 */	li r5, 7
/* 80518964  7D 89 03 A6 */	mtctr r12
/* 80518968  4E 80 04 21 */	bctrl 
/* 8051896C  4B FF FD D1 */	bl aEANG_SelectRandomItem
/* 80518970  B0 7E 09 A0 */	sth r3, 0x9a0(r30)
/* 80518974  38 A0 00 00 */	li r5, 0
/* 80518978  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 8051897C  A0 9E 09 A0 */	lhz r4, 0x9a0(r30)
/* 80518980  4B EC 85 89 */	bl mPr_SetFreePossessionItem
/* 80518984  A0 9E 09 A0 */	lhz r4, 0x9a0(r30)
/* 80518988  38 61 00 08 */	addi r3, r1, 8
/* 8051898C  4B E9 D0 19 */	bl mIN_copy_name_str
/* 80518990  A0 7E 09 A0 */	lhz r3, 0x9a0(r30)
/* 80518994  4B E9 D1 85 */	bl mIN_get_item_article
/* 80518998  7C 67 1B 78 */	mr r7, r3
/* 8051899C  7F 83 E3 78 */	mr r3, r28
/* 805189A0  38 A1 00 08 */	addi r5, r1, 8
/* 805189A4  38 80 00 00 */	li r4, 0
/* 805189A8  38 C0 00 10 */	li r6, 0x10
/* 805189AC  4B EA 74 A5 */	bl mMsg_Set_item_str_art
/* 805189B0  48 00 00 30 */	b lbl_805189E0
lbl_805189B4:
/* 805189B4  A0 7E 09 A0 */	lhz r3, 0x9a0(r30)
/* 805189B8  4B FF FE 05 */	bl get_message_number_fish_zannen
/* 805189BC  7C 64 1B 78 */	mr r4, r3
/* 805189C0  7F 83 E3 78 */	mr r3, r28
/* 805189C4  4B EA 76 01 */	bl mMsg_Set_continue_msg_num
/* 805189C8  81 9E 09 9C */	lwz r12, 0x99c(r30)
/* 805189CC  7F C3 F3 78 */	mr r3, r30
/* 805189D0  7F E4 FB 78 */	mr r4, r31
/* 805189D4  38 A0 00 00 */	li r5, 0
/* 805189D8  7D 89 03 A6 */	mtctr r12
/* 805189DC  4E 80 04 21 */	bctrl 
lbl_805189E0:
/* 805189E0  39 61 00 40 */	addi r11, r1, 0x40
/* 805189E4  4B B8 25 39 */	bl func_8009AF1C
/* 805189E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805189EC  7C 08 03 A6 */	mtlr r0
/* 805189F0  38 21 00 40 */	addi r1, r1, 0x40
/* 805189F4  4E 80 00 20 */	blr 
