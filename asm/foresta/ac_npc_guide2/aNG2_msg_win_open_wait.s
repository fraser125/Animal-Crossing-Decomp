lbl_80555888:
/* 80555888  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055588C  7C 08 02 A6 */	mflr r0
/* 80555890  90 01 00 24 */	stw r0, 0x24(r1)
/* 80555894  39 61 00 20 */	addi r11, r1, 0x20
/* 80555898  4B B4 56 39 */	bl func_8009AED0
/* 8055589C  7C 7C 1B 78 */	mr r28, r3
/* 805558A0  7C 9D 23 78 */	mr r29, r4
/* 805558A4  4B E6 9E 05 */	bl func_803BF6A8
/* 805558A8  7C 7E 1B 78 */	mr r30, r3
/* 805558AC  4B E6 9E B9 */	bl mMsg_Check_not_series_main_wait
/* 805558B0  2C 03 00 01 */	cmpwi r3, 1
/* 805558B4  40 82 00 58 */	bne lbl_8055590C
/* 805558B8  7F C3 F3 78 */	mr r3, r30
/* 805558BC  3B E0 00 00 */	li r31, 0
/* 805558C0  4B E6 B4 8D */	bl mMsg_Unset_LockContinue
/* 805558C4  4B FF FA 09 */	bl aNG2_check_pname
/* 805558C8  2C 03 00 00 */	cmpwi r3, 0
/* 805558CC  40 82 00 08 */	bne lbl_805558D4
/* 805558D0  3B E0 00 01 */	li r31, 1
lbl_805558D4:
/* 805558D4  3C 60 80 6A */	lis r3, msg_no@ha /* 0x806A65D8@ha */
/* 805558D8  57 FF 10 3A */	slwi r31, r31, 2
/* 805558DC  38 83 65 D8 */	addi r4, r3, msg_no@l /* 0x806A65D8@l */
/* 805558E0  7F C3 F3 78 */	mr r3, r30
/* 805558E4  7C 84 F8 2E */	lwzx r4, r4, r31
/* 805558E8  4B E6 A6 DD */	bl mMsg_Set_continue_msg_num
/* 805558EC  7F C3 F3 78 */	mr r3, r30
/* 805558F0  4B E6 B4 39 */	bl mMsg_Set_ForceNext
/* 805558F4  3C 80 80 6A */	lis r4, next_act_idx_717@ha /* 0x806A65E0@ha */
/* 805558F8  7F 83 E3 78 */	mr r3, r28
/* 805558FC  38 A4 65 E0 */	addi r5, r4, next_act_idx_717@l /* 0x806A65E0@l */
/* 80555900  7F A4 EB 78 */	mr r4, r29
/* 80555904  7C A5 F8 2E */	lwzx r5, r5, r31
/* 80555908  48 00 0C 15 */	bl aNG2_setupAction
lbl_8055590C:
/* 8055590C  39 61 00 20 */	addi r11, r1, 0x20
/* 80555910  4B B4 56 0D */	bl func_8009AF1C
/* 80555914  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80555918  7C 08 03 A6 */	mtlr r0
/* 8055591C  38 21 00 20 */	addi r1, r1, 0x20
/* 80555920  4E 80 00 20 */	blr 
