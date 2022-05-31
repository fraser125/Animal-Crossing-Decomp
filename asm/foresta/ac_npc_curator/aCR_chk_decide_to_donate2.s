lbl_8054C130:
/* 8054C130  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054C134  7C 08 02 A6 */	mflr r0
/* 8054C138  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054C13C  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C140  4B B4 ED 95 */	bl func_8009AED4
/* 8054C144  7C 7D 1B 78 */	mr r29, r3
/* 8054C148  7C 9E 23 78 */	mr r30, r4
/* 8054C14C  4B E7 35 5D */	bl func_803BF6A8
/* 8054C150  7C 7F 1B 78 */	mr r31, r3
/* 8054C154  4B E7 3E 79 */	bl mMsg_Get_msg_num
/* 8054C158  2C 03 2F 60 */	cmpwi r3, 0x2f60
/* 8054C15C  40 82 00 5C */	bne lbl_8054C1B8
/* 8054C160  7F E3 FB 78 */	mr r3, r31
/* 8054C164  4B E7 4B 35 */	bl mMsg_Check_MainNormalContinue
/* 8054C168  2C 03 00 01 */	cmpwi r3, 1
/* 8054C16C  40 82 00 4C */	bne lbl_8054C1B8
/* 8054C170  4B E3 73 D1 */	bl func_80383540
/* 8054C174  4B E3 79 F9 */	bl mChoice_Get_ChoseNum
/* 8054C178  2C 03 00 01 */	cmpwi r3, 1
/* 8054C17C  41 82 00 1C */	beq lbl_8054C198
/* 8054C180  40 80 00 20 */	bge lbl_8054C1A0
/* 8054C184  2C 03 00 00 */	cmpwi r3, 0
/* 8054C188  40 80 00 08 */	bge lbl_8054C190
/* 8054C18C  48 00 00 14 */	b lbl_8054C1A0
lbl_8054C190:
/* 8054C190  38 A0 00 05 */	li r5, 5
/* 8054C194  48 00 00 10 */	b lbl_8054C1A4
lbl_8054C198:
/* 8054C198  38 A0 00 00 */	li r5, 0
/* 8054C19C  48 00 00 08 */	b lbl_8054C1A4
lbl_8054C1A0:
/* 8054C1A0  38 A0 00 00 */	li r5, 0
lbl_8054C1A4:
/* 8054C1A4  81 9D 09 A8 */	lwz r12, 0x9a8(r29)
/* 8054C1A8  7F A3 EB 78 */	mr r3, r29
/* 8054C1AC  7F C4 F3 78 */	mr r4, r30
/* 8054C1B0  7D 89 03 A6 */	mtctr r12
/* 8054C1B4  4E 80 04 21 */	bctrl 
lbl_8054C1B8:
/* 8054C1B8  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C1BC  4B B4 ED 65 */	bl func_8009AF20
/* 8054C1C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054C1C4  7C 08 03 A6 */	mtlr r0
/* 8054C1C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8054C1CC  4E 80 00 20 */	blr 
