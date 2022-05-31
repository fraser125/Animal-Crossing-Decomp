lbl_8052D7F0:
/* 8052D7F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8052D7F4  7C 08 02 A6 */	mflr r0
/* 8052D7F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8052D7FC  39 61 00 30 */	addi r11, r1, 0x30
/* 8052D800  4B B6 D6 D5 */	bl func_8009AED4
/* 8052D804  7C 7D 1B 78 */	mr r29, r3
/* 8052D808  38 61 00 08 */	addi r3, r1, 8
/* 8052D80C  80 BD 00 00 */	lwz r5, 0(r29)
/* 8052D810  38 80 00 00 */	li r4, 0
/* 8052D814  80 1D 00 04 */	lwz r0, 4(r29)
/* 8052D818  90 A1 00 08 */	stw r5, 8(r1)
/* 8052D81C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8052D820  80 1D 00 08 */	lwz r0, 8(r29)
/* 8052D824  90 01 00 10 */	stw r0, 0x10(r1)
/* 8052D828  4B E5 B8 85 */	bl mCoBG_Wpos2Attribute
/* 8052D82C  7C 7F 1B 78 */	mr r31, r3
/* 8052D830  48 10 0D A1 */	bl sAdo_Get_WalkLabel
/* 8052D834  7C 60 1B 78 */	mr r0, r3
/* 8052D838  7F A3 EB 78 */	mr r3, r29
/* 8052D83C  7C 1E 03 78 */	mr r30, r0
/* 8052D840  7F E4 FB 78 */	mr r4, r31
/* 8052D844  48 10 0F 91 */	bl sAdo_CheckOnPlussBridge
/* 8052D848  2C 03 00 00 */	cmpwi r3, 0
/* 8052D84C  41 82 00 08 */	beq lbl_8052D854
/* 8052D850  3B C0 42 0A */	li r30, 0x420a
lbl_8052D854:
/* 8052D854  7F C3 F3 78 */	mr r3, r30
/* 8052D858  7F A4 EB 78 */	mr r4, r29
/* 8052D85C  48 10 05 59 */	bl sAdo_NpcWalkSe
/* 8052D860  39 61 00 30 */	addi r11, r1, 0x30
/* 8052D864  4B B6 D6 BD */	bl func_8009AF20
/* 8052D868  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052D86C  7C 08 03 A6 */	mtlr r0
/* 8052D870  38 21 00 30 */	addi r1, r1, 0x30
/* 8052D874  4E 80 00 20 */	blr 
