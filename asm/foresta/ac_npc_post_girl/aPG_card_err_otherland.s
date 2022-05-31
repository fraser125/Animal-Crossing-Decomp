lbl_8056CF14:
/* 8056CF14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056CF18  7C 08 02 A6 */	mflr r0
/* 8056CF1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056CF20  39 61 00 20 */	addi r11, r1, 0x20
/* 8056CF24  4B B2 DF B1 */	bl func_8009AED4
/* 8056CF28  7C 7D 1B 78 */	mr r29, r3
/* 8056CF2C  7C 9E 23 78 */	mr r30, r4
/* 8056CF30  80 63 09 B0 */	lwz r3, 0x9b0(r3)
/* 8056CF34  88 1D 07 44 */	lbz r0, 0x744(r29)
/* 8056CF38  7F E3 02 14 */	add r31, r3, r0
/* 8056CF3C  4B E5 27 6D */	bl func_803BF6A8
/* 8056CF40  4B E5 30 8D */	bl mMsg_Get_msg_num
/* 8056CF44  7C 1F 18 00 */	cmpw r31, r3
/* 8056CF48  40 82 00 1C */	bne lbl_8056CF64
/* 8056CF4C  81 9D 09 A0 */	lwz r12, 0x9a0(r29)
/* 8056CF50  7F A3 EB 78 */	mr r3, r29
/* 8056CF54  7F C4 F3 78 */	mr r4, r30
/* 8056CF58  38 A0 00 0F */	li r5, 0xf
/* 8056CF5C  7D 89 03 A6 */	mtctr r12
/* 8056CF60  4E 80 04 21 */	bctrl 
lbl_8056CF64:
/* 8056CF64  39 61 00 20 */	addi r11, r1, 0x20
/* 8056CF68  4B B2 DF B9 */	bl func_8009AF20
/* 8056CF6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056CF70  7C 08 03 A6 */	mtlr r0
/* 8056CF74  38 21 00 20 */	addi r1, r1, 0x20
/* 8056CF78  4E 80 00 20 */	blr 
