lbl_80572B84:
/* 80572B84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80572B88  7C 08 02 A6 */	mflr r0
/* 80572B8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80572B90  39 61 00 20 */	addi r11, r1, 0x20
/* 80572B94  4B B2 83 41 */	bl func_8009AED4
/* 80572B98  7C 7D 1B 78 */	mr r29, r3
/* 80572B9C  4B E4 CB 0D */	bl func_803BF6A8
/* 80572BA0  80 1D 09 A8 */	lwz r0, 0x9a8(r29)
/* 80572BA4  7C 7E 1B 78 */	mr r30, r3
/* 80572BA8  38 9D 09 AC */	addi r4, r29, 0x9ac
/* 80572BAC  20 00 00 02 */	subfic r0, r0, 2
/* 80572BB0  7C 00 00 34 */	cntlzw r0, r0
/* 80572BB4  54 03 D9 7E */	srwi r3, r0, 5
/* 80572BB8  4B E8 AA 55 */	bl mCD_SaveHome_bg
/* 80572BBC  28 03 00 19 */	cmplwi r3, 0x19
/* 80572BC0  41 81 02 14 */	bgt lbl_80572DD4
/* 80572BC4  3C 80 80 6C */	lis r4, lit_666@ha /* 0x806BF4BC@ha */
/* 80572BC8  54 60 10 3A */	slwi r0, r3, 2
/* 80572BCC  38 64 F4 BC */	addi r3, r4, lit_666@l /* 0x806BF4BC@l */
/* 80572BD0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80572BD4  7C 09 03 A6 */	mtctr r0
/* 80572BD8  4E 80 04 20 */	bctr 
lbl_80572BDC:
/* 80572BDC  7F A3 EB 78 */	mr r3, r29
/* 80572BE0  38 80 00 07 */	li r4, 7
/* 80572BE4  48 00 02 3D */	bl aNRST_change_talk_proc
/* 80572BE8  80 1D 09 A8 */	lwz r0, 0x9a8(r29)
/* 80572BEC  2C 00 00 02 */	cmpwi r0, 2
/* 80572BF0  40 82 00 28 */	bne lbl_80572C18
/* 80572BF4  7F A3 EB 78 */	mr r3, r29
/* 80572BF8  38 80 00 06 */	li r4, 6
/* 80572BFC  38 A0 00 00 */	li r5, 0
/* 80572C00  4B FF F9 3D */	bl func_8057253C
/* 80572C04  7C 7F 1B 78 */	mr r31, r3
/* 80572C08  4B E4 CA A1 */	bl func_803BF6A8
/* 80572C0C  7F E4 FB 78 */	mr r4, r31
/* 80572C10  4B E4 D3 B5 */	bl mMsg_Set_continue_msg_num
/* 80572C14  48 00 00 24 */	b lbl_80572C38
lbl_80572C18:
/* 80572C18  7F A3 EB 78 */	mr r3, r29
/* 80572C1C  38 80 00 13 */	li r4, 0x13
/* 80572C20  38 A0 00 00 */	li r5, 0
/* 80572C24  4B FF F9 19 */	bl func_8057253C
/* 80572C28  7C 7F 1B 78 */	mr r31, r3
/* 80572C2C  4B E4 CA 7D */	bl func_803BF6A8
/* 80572C30  7F E4 FB 78 */	mr r4, r31
/* 80572C34  4B E4 D3 91 */	bl mMsg_Set_continue_msg_num
lbl_80572C38:
/* 80572C38  7F C3 F3 78 */	mr r3, r30
/* 80572C3C  4B E4 E1 11 */	bl mMsg_Unset_LockContinue
/* 80572C40  48 00 01 C8 */	b lbl_80572E08
lbl_80572C44:
/* 80572C44  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80572C48  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80572C4C  3C 63 00 02 */	addis r3, r3, 2
/* 80572C50  88 03 0F 1A */	lbz r0, 0xf1a(r3)
/* 80572C54  28 00 00 00 */	cmplwi r0, 0
/* 80572C58  40 82 00 18 */	bne lbl_80572C70
/* 80572C5C  7F A3 EB 78 */	mr r3, r29
/* 80572C60  38 80 00 02 */	li r4, 2
/* 80572C64  38 A0 00 01 */	li r5, 1
/* 80572C68  4B FF FE A5 */	bl aNRST_unset_lock_select2
/* 80572C6C  48 00 01 9C */	b lbl_80572E08
lbl_80572C70:
/* 80572C70  7F A3 EB 78 */	mr r3, r29
/* 80572C74  38 80 00 03 */	li r4, 3
/* 80572C78  38 A0 00 00 */	li r5, 0
/* 80572C7C  4B FF FE 91 */	bl aNRST_unset_lock_select2
/* 80572C80  48 00 01 88 */	b lbl_80572E08
lbl_80572C84:
/* 80572C84  7F A3 EB 78 */	mr r3, r29
/* 80572C88  38 80 00 01 */	li r4, 1
/* 80572C8C  38 A0 00 01 */	li r5, 1
/* 80572C90  4B FF FE 7D */	bl aNRST_unset_lock_select2
/* 80572C94  48 00 01 74 */	b lbl_80572E08
lbl_80572C98:
/* 80572C98  7F A3 EB 78 */	mr r3, r29
/* 80572C9C  38 80 00 07 */	li r4, 7
/* 80572CA0  38 A0 00 00 */	li r5, 0
/* 80572CA4  4B FF FE 69 */	bl aNRST_unset_lock_select2
/* 80572CA8  80 7D 09 AC */	lwz r3, 0x9ac(r29)
/* 80572CAC  4B FF F9 41 */	bl aNRST_set_slot_name
/* 80572CB0  48 00 01 58 */	b lbl_80572E08
lbl_80572CB4:
/* 80572CB4  7F A3 EB 78 */	mr r3, r29
/* 80572CB8  38 80 00 04 */	li r4, 4
/* 80572CBC  48 00 01 65 */	bl aNRST_change_talk_proc
/* 80572CC0  7F A3 EB 78 */	mr r3, r29
/* 80572CC4  38 80 00 0D */	li r4, 0xd
/* 80572CC8  38 A0 00 00 */	li r5, 0
/* 80572CCC  4B FF F8 71 */	bl func_8057253C
/* 80572CD0  7C 7F 1B 78 */	mr r31, r3
/* 80572CD4  4B E4 C9 D5 */	bl func_803BF6A8
/* 80572CD8  7F E4 FB 78 */	mr r4, r31
/* 80572CDC  4B E4 D2 E9 */	bl mMsg_Set_continue_msg_num
/* 80572CE0  7F C3 F3 78 */	mr r3, r30
/* 80572CE4  4B E4 E0 69 */	bl mMsg_Unset_LockContinue
/* 80572CE8  80 7D 09 AC */	lwz r3, 0x9ac(r29)
/* 80572CEC  4B FF F9 01 */	bl aNRST_set_slot_name
/* 80572CF0  48 00 01 18 */	b lbl_80572E08
lbl_80572CF4:
/* 80572CF4  7F A3 EB 78 */	mr r3, r29
/* 80572CF8  38 80 00 12 */	li r4, 0x12
/* 80572CFC  38 A0 00 00 */	li r5, 0
/* 80572D00  4B FF FE 0D */	bl aNRST_unset_lock_select2
/* 80572D04  80 7D 09 AC */	lwz r3, 0x9ac(r29)
/* 80572D08  4B FF F8 E5 */	bl aNRST_set_slot_name
/* 80572D0C  48 00 00 FC */	b lbl_80572E08
lbl_80572D10:
/* 80572D10  7F A3 EB 78 */	mr r3, r29
/* 80572D14  38 80 00 05 */	li r4, 5
/* 80572D18  38 A0 00 01 */	li r5, 1
/* 80572D1C  4B FF FD F1 */	bl aNRST_unset_lock_select2
/* 80572D20  80 7D 09 AC */	lwz r3, 0x9ac(r29)
/* 80572D24  4B FF F8 C9 */	bl aNRST_set_slot_name
/* 80572D28  48 00 00 E0 */	b lbl_80572E08
lbl_80572D2C:
/* 80572D2C  7F A3 EB 78 */	mr r3, r29
/* 80572D30  38 80 00 03 */	li r4, 3
/* 80572D34  38 A0 00 01 */	li r5, 1
/* 80572D38  4B FF FD D5 */	bl aNRST_unset_lock_select2
/* 80572D3C  80 7D 09 AC */	lwz r3, 0x9ac(r29)
/* 80572D40  4B FF F8 AD */	bl aNRST_set_slot_name
/* 80572D44  48 00 00 C4 */	b lbl_80572E08
lbl_80572D48:
/* 80572D48  7F A3 EB 78 */	mr r3, r29
/* 80572D4C  38 80 00 04 */	li r4, 4
/* 80572D50  38 A0 00 01 */	li r5, 1
/* 80572D54  4B FF FD B9 */	bl aNRST_unset_lock_select2
/* 80572D58  80 7D 09 AC */	lwz r3, 0x9ac(r29)
/* 80572D5C  4B FF F8 91 */	bl aNRST_set_slot_name
/* 80572D60  48 00 00 A8 */	b lbl_80572E08
lbl_80572D64:
/* 80572D64  7F A3 EB 78 */	mr r3, r29
/* 80572D68  38 80 00 00 */	li r4, 0
/* 80572D6C  38 A0 00 02 */	li r5, 2
/* 80572D70  4B FF FD 9D */	bl aNRST_unset_lock_select2
/* 80572D74  80 7D 09 AC */	lwz r3, 0x9ac(r29)
/* 80572D78  4B FF F8 75 */	bl aNRST_set_slot_name
/* 80572D7C  48 00 00 8C */	b lbl_80572E08
lbl_80572D80:
/* 80572D80  7F A3 EB 78 */	mr r3, r29
/* 80572D84  38 80 00 01 */	li r4, 1
/* 80572D88  38 A0 00 02 */	li r5, 2
/* 80572D8C  4B FF FD 81 */	bl aNRST_unset_lock_select2
/* 80572D90  80 7D 09 AC */	lwz r3, 0x9ac(r29)
/* 80572D94  4B FF F8 59 */	bl aNRST_set_slot_name
/* 80572D98  48 00 00 70 */	b lbl_80572E08
lbl_80572D9C:
/* 80572D9C  7F A3 EB 78 */	mr r3, r29
/* 80572DA0  38 80 00 02 */	li r4, 2
/* 80572DA4  38 A0 00 02 */	li r5, 2
/* 80572DA8  4B FF FD 65 */	bl aNRST_unset_lock_select2
/* 80572DAC  80 7D 09 AC */	lwz r3, 0x9ac(r29)
/* 80572DB0  4B FF F8 3D */	bl aNRST_set_slot_name
/* 80572DB4  48 00 00 54 */	b lbl_80572E08
lbl_80572DB8:
/* 80572DB8  7F A3 EB 78 */	mr r3, r29
/* 80572DBC  38 80 00 03 */	li r4, 3
/* 80572DC0  38 A0 00 02 */	li r5, 2
/* 80572DC4  4B FF FD 49 */	bl aNRST_unset_lock_select2
/* 80572DC8  80 7D 09 AC */	lwz r3, 0x9ac(r29)
/* 80572DCC  4B FF F8 21 */	bl aNRST_set_slot_name
/* 80572DD0  48 00 00 38 */	b lbl_80572E08
lbl_80572DD4:
/* 80572DD4  7F A3 EB 78 */	mr r3, r29
/* 80572DD8  38 80 00 03 */	li r4, 3
/* 80572DDC  48 00 00 45 */	bl aNRST_change_talk_proc
/* 80572DE0  7F A3 EB 78 */	mr r3, r29
/* 80572DE4  38 80 00 01 */	li r4, 1
/* 80572DE8  38 A0 00 01 */	li r5, 1
/* 80572DEC  4B FF F7 51 */	bl func_8057253C
/* 80572DF0  7C 7F 1B 78 */	mr r31, r3
/* 80572DF4  4B E4 C8 B5 */	bl func_803BF6A8
/* 80572DF8  7F E4 FB 78 */	mr r4, r31
/* 80572DFC  4B E4 D1 C9 */	bl mMsg_Set_continue_msg_num
/* 80572E00  7F C3 F3 78 */	mr r3, r30
/* 80572E04  4B E4 DF 49 */	bl mMsg_Unset_LockContinue
lbl_80572E08:
/* 80572E08  39 61 00 20 */	addi r11, r1, 0x20
/* 80572E0C  4B B2 81 15 */	bl func_8009AF20
/* 80572E10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80572E14  7C 08 03 A6 */	mtlr r0
/* 80572E18  38 21 00 20 */	addi r1, r1, 0x20
/* 80572E1C  4E 80 00 20 */	blr 
