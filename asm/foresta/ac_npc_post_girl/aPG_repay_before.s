lbl_8056CD5C:
/* 8056CD5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056CD60  7C 08 02 A6 */	mflr r0
/* 8056CD64  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056CD68  39 61 00 20 */	addi r11, r1, 0x20
/* 8056CD6C  4B B2 E1 65 */	bl func_8009AED0
/* 8056CD70  7C 7C 1B 78 */	mr r28, r3
/* 8056CD74  7C 9D 23 78 */	mr r29, r4
/* 8056CD78  4B E5 29 31 */	bl func_803BF6A8
/* 8056CD7C  88 9C 07 44 */	lbz r4, 0x744(r28)
/* 8056CD80  7C 7F 1B 78 */	mr r31, r3
/* 8056CD84  3B C4 08 D3 */	addi r30, r4, 0x8d3
/* 8056CD88  4B E5 32 45 */	bl mMsg_Get_msg_num
/* 8056CD8C  7C 1E 18 00 */	cmpw r30, r3
/* 8056CD90  40 82 00 2C */	bne lbl_8056CDBC
/* 8056CD94  7F E3 FB 78 */	mr r3, r31
/* 8056CD98  4B E5 3F 01 */	bl mMsg_Check_MainNormalContinue
/* 8056CD9C  2C 03 00 01 */	cmpwi r3, 1
/* 8056CDA0  40 82 00 1C */	bne lbl_8056CDBC
/* 8056CDA4  81 9C 09 A0 */	lwz r12, 0x9a0(r28)
/* 8056CDA8  7F 83 E3 78 */	mr r3, r28
/* 8056CDAC  7F A4 EB 78 */	mr r4, r29
/* 8056CDB0  38 A0 00 0C */	li r5, 0xc
/* 8056CDB4  7D 89 03 A6 */	mtctr r12
/* 8056CDB8  4E 80 04 21 */	bctrl 
lbl_8056CDBC:
/* 8056CDBC  39 61 00 20 */	addi r11, r1, 0x20
/* 8056CDC0  4B B2 E1 5D */	bl func_8009AF1C
/* 8056CDC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056CDC8  7C 08 03 A6 */	mtlr r0
/* 8056CDCC  38 21 00 20 */	addi r1, r1, 0x20
/* 8056CDD0  4E 80 00 20 */	blr 
