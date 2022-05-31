lbl_80484FD0:
/* 80484FD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484FD4  7C 08 02 A6 */	mflr r0
/* 80484FD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484FDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80484FE0  7C 9F 23 78 */	mr r31, r4
/* 80484FE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80484FE8  7C 7E 1B 78 */	mr r30, r3
/* 80484FEC  4B F3 A6 BD */	bl func_803BF6A8
/* 80484FF0  4B F3 BC A9 */	bl mMsg_Check_MainNormalContinue
/* 80484FF4  2C 03 00 00 */	cmpwi r3, 0
/* 80484FF8  41 82 00 68 */	beq lbl_80485060
/* 80484FFC  4B EF E5 45 */	bl func_80383540
/* 80485000  4B EF EB 6D */	bl mChoice_Get_ChoseNum
/* 80485004  2C 03 FF FF */	cmpwi r3, -1
/* 80485008  41 82 00 58 */	beq lbl_80485060
/* 8048500C  2C 03 00 01 */	cmpwi r3, 1
/* 80485010  41 82 00 34 */	beq lbl_80485044
/* 80485014  40 80 00 4C */	bge lbl_80485060
/* 80485018  2C 03 00 00 */	cmpwi r3, 0
/* 8048501C  40 80 00 08 */	bge lbl_80485024
/* 80485020  48 00 00 40 */	b lbl_80485060
lbl_80485024:
/* 80485024  4B F3 A6 85 */	bl func_803BF6A8
/* 80485028  38 80 3D EF */	li r4, 0x3def
/* 8048502C  4B F3 AF 99 */	bl mMsg_Set_continue_msg_num
/* 80485030  7F C3 F3 78 */	mr r3, r30
/* 80485034  7F E4 FB 78 */	mr r4, r31
/* 80485038  38 A0 00 02 */	li r5, 2
/* 8048503C  48 00 01 6D */	bl aPT_Setup
/* 80485040  48 00 00 20 */	b lbl_80485060
lbl_80485044:
/* 80485044  4B F3 A6 65 */	bl func_803BF6A8
/* 80485048  38 80 3D F6 */	li r4, 0x3df6
/* 8048504C  4B F3 AF 79 */	bl mMsg_Set_continue_msg_num
/* 80485050  7F C3 F3 78 */	mr r3, r30
/* 80485054  7F E4 FB 78 */	mr r4, r31
/* 80485058  38 A0 00 00 */	li r5, 0
/* 8048505C  48 00 01 4D */	bl aPT_Setup
lbl_80485060:
/* 80485060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485064  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80485068  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048506C  7C 08 03 A6 */	mtlr r0
/* 80485070  38 21 00 10 */	addi r1, r1, 0x10
/* 80485074  4E 80 00 20 */	blr 
