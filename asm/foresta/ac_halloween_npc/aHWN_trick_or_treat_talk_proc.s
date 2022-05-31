lbl_805276A8:
/* 805276A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805276AC  7C 08 02 A6 */	mflr r0
/* 805276B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805276B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805276B8  93 C1 00 08 */	stw r30, 8(r1)
/* 805276BC  7C 7E 1B 78 */	mr r30, r3
/* 805276C0  4B E9 7F E9 */	bl func_803BF6A8
/* 805276C4  7C 60 1B 78 */	mr r0, r3
/* 805276C8  38 60 00 04 */	li r3, 4
/* 805276CC  7C 1F 03 78 */	mr r31, r0
/* 805276D0  38 80 00 09 */	li r4, 9
/* 805276D4  4B E7 0D A9 */	bl mDemo_Get_OrderValue
/* 805276D8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 805276DC  41 82 00 50 */	beq lbl_8052772C
/* 805276E0  7F E3 FB 78 */	mr r3, r31
/* 805276E4  4B E9 95 B5 */	bl mMsg_Check_MainNormalContinue
/* 805276E8  2C 03 00 01 */	cmpwi r3, 1
/* 805276EC  40 82 00 40 */	bne lbl_8052772C
/* 805276F0  4B E5 BE 51 */	bl func_80383540
/* 805276F4  4B E5 C4 79 */	bl mChoice_Get_ChoseNum
/* 805276F8  2C 03 00 00 */	cmpwi r3, 0
/* 805276FC  40 82 00 14 */	bne lbl_80527710
/* 80527700  7F E3 FB 78 */	mr r3, r31
/* 80527704  4B E9 83 41 */	bl mMsg_request_main_disappear_wait_type1
/* 80527708  38 80 00 02 */	li r4, 2
/* 8052770C  48 00 00 08 */	b lbl_80527714
lbl_80527710:
/* 80527710  38 80 00 07 */	li r4, 7
lbl_80527714:
/* 80527714  7F C3 F3 78 */	mr r3, r30
/* 80527718  48 00 05 DD */	bl aHWN_change_talk_proc
/* 8052771C  38 60 00 04 */	li r3, 4
/* 80527720  38 80 00 09 */	li r4, 9
/* 80527724  38 A0 00 00 */	li r5, 0
/* 80527728  4B E7 0D 11 */	bl mDemo_Set_OrderValue
lbl_8052772C:
/* 8052772C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80527730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80527734  83 C1 00 08 */	lwz r30, 8(r1)
/* 80527738  7C 08 03 A6 */	mtlr r0
/* 8052773C  38 21 00 10 */	addi r1, r1, 0x10
/* 80527740  4E 80 00 20 */	blr 
