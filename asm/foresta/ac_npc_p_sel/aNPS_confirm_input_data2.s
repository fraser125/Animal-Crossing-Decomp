lbl_80566C98:
/* 80566C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566C9C  7C 08 02 A6 */	mflr r0
/* 80566CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566CA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80566CA8  7C 7F 1B 78 */	mr r31, r3
/* 80566CAC  4B E5 89 FD */	bl func_803BF6A8
/* 80566CB0  4B E5 9F E9 */	bl mMsg_Check_MainNormalContinue
/* 80566CB4  2C 03 00 01 */	cmpwi r3, 1
/* 80566CB8  40 82 00 34 */	bne lbl_80566CEC
/* 80566CBC  4B E1 C8 85 */	bl func_80383540
/* 80566CC0  4B E1 CE AD */	bl mChoice_Get_ChoseNum
/* 80566CC4  2C 03 00 00 */	cmpwi r3, 0
/* 80566CC8  41 82 00 08 */	beq lbl_80566CD0
/* 80566CCC  48 00 00 14 */	b lbl_80566CE0
lbl_80566CD0:
/* 80566CD0  7F E3 FB 78 */	mr r3, r31
/* 80566CD4  38 80 00 06 */	li r4, 6
/* 80566CD8  48 00 00 29 */	bl aNPS_change_talk_proc
/* 80566CDC  48 00 00 10 */	b lbl_80566CEC
lbl_80566CE0:
/* 80566CE0  7F E3 FB 78 */	mr r3, r31
/* 80566CE4  38 80 00 05 */	li r4, 5
/* 80566CE8  48 00 00 19 */	bl aNPS_change_talk_proc
lbl_80566CEC:
/* 80566CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566CF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80566CF4  7C 08 03 A6 */	mtlr r0
/* 80566CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80566CFC  4E 80 00 20 */	blr 
