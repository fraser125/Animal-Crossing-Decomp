lbl_8056CEB8:
/* 8056CEB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056CEBC  7C 08 02 A6 */	mflr r0
/* 8056CEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056CEC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056CEC8  7C 9F 23 78 */	mr r31, r4
/* 8056CECC  93 C1 00 08 */	stw r30, 8(r1)
/* 8056CED0  7C 7E 1B 78 */	mr r30, r3
/* 8056CED4  4B E5 27 D5 */	bl func_803BF6A8
/* 8056CED8  4B E5 3D C1 */	bl mMsg_Check_MainNormalContinue
/* 8056CEDC  2C 03 00 01 */	cmpwi r3, 1
/* 8056CEE0  40 82 00 1C */	bne lbl_8056CEFC
/* 8056CEE4  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8056CEE8  7F C3 F3 78 */	mr r3, r30
/* 8056CEEC  7F E4 FB 78 */	mr r4, r31
/* 8056CEF0  38 A0 00 00 */	li r5, 0
/* 8056CEF4  7D 89 03 A6 */	mtctr r12
/* 8056CEF8  4E 80 04 21 */	bctrl 
lbl_8056CEFC:
/* 8056CEFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056CF00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056CF04  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056CF08  7C 08 03 A6 */	mtlr r0
/* 8056CF0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8056CF10  4E 80 00 20 */	blr 
