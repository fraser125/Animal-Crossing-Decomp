lbl_8054C8FC:
/* 8054C8FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054C900  7C 08 02 A6 */	mflr r0
/* 8054C904  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054C908  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C90C  4B B4 E5 C9 */	bl func_8009AED4
/* 8054C910  7C 7D 1B 78 */	mr r29, r3
/* 8054C914  7C 9E 23 78 */	mr r30, r4
/* 8054C918  4B E7 2D 91 */	bl func_803BF6A8
/* 8054C91C  7C 7F 1B 78 */	mr r31, r3
/* 8054C920  4B E7 36 AD */	bl mMsg_Get_msg_num
/* 8054C924  80 1D 09 AC */	lwz r0, 0x9ac(r29)
/* 8054C928  7C 00 18 00 */	cmpw r0, r3
/* 8054C92C  40 82 00 20 */	bne lbl_8054C94C
/* 8054C930  7F E3 FB 78 */	mr r3, r31
/* 8054C934  4B E7 43 65 */	bl mMsg_Check_MainNormalContinue
/* 8054C938  2C 03 00 00 */	cmpwi r3, 0
/* 8054C93C  41 82 00 10 */	beq lbl_8054C94C
/* 8054C940  7F A3 EB 78 */	mr r3, r29
/* 8054C944  7F C4 F3 78 */	mr r4, r30
/* 8054C948  4B FF EE AD */	bl aCR_chk_fossil_complete
lbl_8054C94C:
/* 8054C94C  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C950  4B B4 E5 D1 */	bl func_8009AF20
/* 8054C954  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054C958  7C 08 03 A6 */	mtlr r0
/* 8054C95C  38 21 00 20 */	addi r1, r1, 0x20
/* 8054C960  4E 80 00 20 */	blr 
