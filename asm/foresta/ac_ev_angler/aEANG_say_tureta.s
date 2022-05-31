lbl_80518BDC:
/* 80518BDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80518BE0  7C 08 02 A6 */	mflr r0
/* 80518BE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80518BE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80518BEC  4B B8 22 E9 */	bl func_8009AED4
/* 80518BF0  7C 7D 1B 78 */	mr r29, r3
/* 80518BF4  7C 9E 23 78 */	mr r30, r4
/* 80518BF8  38 60 00 04 */	li r3, 4
/* 80518BFC  38 80 00 09 */	li r4, 9
/* 80518C00  4B E7 F8 7D */	bl mDemo_Get_OrderValue
/* 80518C04  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80518C08  2C 00 00 01 */	cmpwi r0, 1
/* 80518C0C  40 82 00 90 */	bne lbl_80518C9C
/* 80518C10  38 60 00 04 */	li r3, 4
/* 80518C14  38 80 00 09 */	li r4, 9
/* 80518C18  38 A0 00 00 */	li r5, 0
/* 80518C1C  4B E7 F8 1D */	bl mDemo_Set_OrderValue
/* 80518C20  4B E6 A9 21 */	bl func_80383540
/* 80518C24  4B E6 AF 49 */	bl mChoice_Get_ChoseNum
/* 80518C28  2C 03 00 01 */	cmpwi r3, 1
/* 80518C2C  41 82 00 14 */	beq lbl_80518C40
/* 80518C30  40 80 00 6C */	bge lbl_80518C9C
/* 80518C34  2C 03 00 00 */	cmpwi r3, 0
/* 80518C38  40 80 00 4C */	bge lbl_80518C84
/* 80518C3C  48 00 00 60 */	b lbl_80518C9C
lbl_80518C40:
/* 80518C40  4B EA 6A 69 */	bl func_803BF6A8
/* 80518C44  81 9D 09 9C */	lwz r12, 0x99c(r29)
/* 80518C48  7C 7F 1B 78 */	mr r31, r3
/* 80518C4C  7F A3 EB 78 */	mr r3, r29
/* 80518C50  7F C4 F3 78 */	mr r4, r30
/* 80518C54  38 A0 00 00 */	li r5, 0
/* 80518C58  7D 89 03 A6 */	mtctr r12
/* 80518C5C  4E 80 04 21 */	bctrl 
/* 80518C60  48 0A 88 DD */	bl aTRC_clip_set_topname
/* 80518C64  4B FF FA 59 */	bl now_top_check
/* 80518C68  2C 03 00 00 */	cmpwi r3, 0
/* 80518C6C  38 80 10 F0 */	li r4, 0x10f0
/* 80518C70  41 82 00 08 */	beq lbl_80518C78
/* 80518C74  38 80 11 1E */	li r4, 0x111e
lbl_80518C78:
/* 80518C78  7F E3 FB 78 */	mr r3, r31
/* 80518C7C  4B EA 73 49 */	bl mMsg_Set_continue_msg_num
/* 80518C80  48 00 00 1C */	b lbl_80518C9C
lbl_80518C84:
/* 80518C84  81 9D 09 9C */	lwz r12, 0x99c(r29)
/* 80518C88  7F A3 EB 78 */	mr r3, r29
/* 80518C8C  7F C4 F3 78 */	mr r4, r30
/* 80518C90  38 A0 00 08 */	li r5, 8
/* 80518C94  7D 89 03 A6 */	mtctr r12
/* 80518C98  4E 80 04 21 */	bctrl 
lbl_80518C9C:
/* 80518C9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80518CA0  4B B8 22 81 */	bl func_8009AF20
/* 80518CA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80518CA8  7C 08 03 A6 */	mtlr r0
/* 80518CAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80518CB0  4E 80 00 20 */	blr 
