lbl_8051B6E4:
/* 8051B6E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051B6E8  7C 08 02 A6 */	mflr r0
/* 8051B6EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051B6F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8051B6F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8051B6F8  7C 7E 1B 78 */	mr r30, r3
/* 8051B6FC  4B EA 3F AD */	bl func_803BF6A8
/* 8051B700  7C 7F 1B 78 */	mr r31, r3
/* 8051B704  4B EA 55 95 */	bl mMsg_Check_MainNormalContinue
/* 8051B708  2C 03 00 01 */	cmpwi r3, 1
/* 8051B70C  40 82 00 74 */	bne lbl_8051B780
/* 8051B710  4B E6 7E 31 */	bl func_80383540
/* 8051B714  4B E6 84 59 */	bl mChoice_Get_ChoseNum
/* 8051B718  2C 03 00 01 */	cmpwi r3, 1
/* 8051B71C  41 82 00 4C */	beq lbl_8051B768
/* 8051B720  40 80 00 60 */	bge lbl_8051B780
/* 8051B724  2C 03 00 00 */	cmpwi r3, 0
/* 8051B728  40 80 00 08 */	bge lbl_8051B730
/* 8051B72C  48 00 00 54 */	b lbl_8051B780
lbl_8051B730:
/* 8051B730  4B B4 15 C5 */	bl fqrand
/* 8051B734  3C 80 80 65 */	lis r4, lit_639@ha /* 0x806490B8@ha */
/* 8051B738  7F E3 FB 78 */	mr r3, r31
/* 8051B73C  C0 04 90 B8 */	lfs f0, lit_639@l(r4)  /* 0x806490B8@l */
/* 8051B740  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051B744  FC 00 00 1E */	fctiwz f0, f0
/* 8051B748  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051B74C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8051B750  38 84 07 98 */	addi r4, r4, 0x798
/* 8051B754  4B EA 48 71 */	bl mMsg_Set_continue_msg_num
/* 8051B758  7F C3 F3 78 */	mr r3, r30
/* 8051B75C  38 80 00 09 */	li r4, 9
/* 8051B760  48 00 04 05 */	bl aEBR2_setupAction
/* 8051B764  48 00 00 1C */	b lbl_8051B780
lbl_8051B768:
/* 8051B768  7F E3 FB 78 */	mr r3, r31
/* 8051B76C  38 80 07 9D */	li r4, 0x79d
/* 8051B770  4B EA 48 55 */	bl mMsg_Set_continue_msg_num
/* 8051B774  7F C3 F3 78 */	mr r3, r30
/* 8051B778  38 80 00 06 */	li r4, 6
/* 8051B77C  48 00 03 E9 */	bl aEBR2_setupAction
lbl_8051B780:
/* 8051B780  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051B784  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8051B788  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8051B78C  7C 08 03 A6 */	mtlr r0
/* 8051B790  38 21 00 20 */	addi r1, r1, 0x20
/* 8051B794  4E 80 00 20 */	blr 
