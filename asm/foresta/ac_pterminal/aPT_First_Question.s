lbl_80484BC0:
/* 80484BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484BC4  7C 08 02 A6 */	mflr r0
/* 80484BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484BCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80484BD0  7C 9F 23 78 */	mr r31, r4
/* 80484BD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80484BD8  7C 7E 1B 78 */	mr r30, r3
/* 80484BDC  4B F3 AA CD */	bl func_803BF6A8
/* 80484BE0  4B F3 C0 B9 */	bl mMsg_Check_MainNormalContinue
/* 80484BE4  2C 03 00 00 */	cmpwi r3, 0
/* 80484BE8  41 82 00 B8 */	beq lbl_80484CA0
/* 80484BEC  4B EF E9 55 */	bl func_80383540
/* 80484BF0  4B EF EF 7D */	bl mChoice_Get_ChoseNum
/* 80484BF4  2C 03 00 01 */	cmpwi r3, 1
/* 80484BF8  41 82 00 6C */	beq lbl_80484C64
/* 80484BFC  40 80 00 10 */	bge lbl_80484C0C
/* 80484C00  2C 03 00 00 */	cmpwi r3, 0
/* 80484C04  40 80 00 14 */	bge lbl_80484C18
/* 80484C08  48 00 00 98 */	b lbl_80484CA0
lbl_80484C0C:
/* 80484C0C  2C 03 00 03 */	cmpwi r3, 3
/* 80484C10  40 80 00 90 */	bge lbl_80484CA0
/* 80484C14  48 00 00 70 */	b lbl_80484C84
lbl_80484C18:
/* 80484C18  4B FF F9 95 */	bl func_804845AC
/* 80484C1C  2C 03 FF FF */	cmpwi r3, -1
/* 80484C20  41 82 00 24 */	beq lbl_80484C44
/* 80484C24  4B F3 AA 85 */	bl func_803BF6A8
/* 80484C28  38 80 3D EF */	li r4, 0x3def
/* 80484C2C  4B F3 B3 99 */	bl mMsg_Set_continue_msg_num
/* 80484C30  7F C3 F3 78 */	mr r3, r30
/* 80484C34  7F E4 FB 78 */	mr r4, r31
/* 80484C38  38 A0 00 02 */	li r5, 2
/* 80484C3C  48 00 05 6D */	bl aPT_Setup
/* 80484C40  48 00 00 60 */	b lbl_80484CA0
lbl_80484C44:
/* 80484C44  4B F3 AA 65 */	bl func_803BF6A8
/* 80484C48  38 80 3D ED */	li r4, 0x3ded
/* 80484C4C  4B F3 B3 79 */	bl mMsg_Set_continue_msg_num
/* 80484C50  7F C3 F3 78 */	mr r3, r30
/* 80484C54  7F E4 FB 78 */	mr r4, r31
/* 80484C58  38 A0 00 00 */	li r5, 0
/* 80484C5C  48 00 05 4D */	bl aPT_Setup
/* 80484C60  48 00 00 40 */	b lbl_80484CA0
lbl_80484C64:
/* 80484C64  4B F3 AA 45 */	bl func_803BF6A8
/* 80484C68  38 80 3D F2 */	li r4, 0x3df2
/* 80484C6C  4B F3 B3 59 */	bl mMsg_Set_continue_msg_num
/* 80484C70  7F C3 F3 78 */	mr r3, r30
/* 80484C74  7F E4 FB 78 */	mr r4, r31
/* 80484C78  38 A0 00 03 */	li r5, 3
/* 80484C7C  48 00 05 2D */	bl aPT_Setup
/* 80484C80  48 00 00 20 */	b lbl_80484CA0
lbl_80484C84:
/* 80484C84  4B F3 AA 25 */	bl func_803BF6A8
/* 80484C88  38 80 3D EC */	li r4, 0x3dec
/* 80484C8C  4B F3 B3 39 */	bl mMsg_Set_continue_msg_num
/* 80484C90  7F C3 F3 78 */	mr r3, r30
/* 80484C94  7F E4 FB 78 */	mr r4, r31
/* 80484C98  38 A0 00 00 */	li r5, 0
/* 80484C9C  48 00 05 0D */	bl aPT_Setup
lbl_80484CA0:
/* 80484CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80484CA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80484CA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80484CAC  7C 08 03 A6 */	mtlr r0
/* 80484CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80484CB4  4E 80 00 20 */	blr 
